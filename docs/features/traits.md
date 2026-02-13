# Traits

Calcit provides a lightweight trait system for attaching method implementations to values (struct/enum instances and some built-in types).

It complements the “class-like” polymorphism described in [Polymorphism](polymorphism.md):

- Struct/enum **classes** are about “this concrete type has these methods”.
- **Traits** are about “this value supports this capability (set of methods)”.

## Define a trait

Use `deftrait` to define a trait and its method signatures (including type annotations).

```cirru
deftrait MyFoo
  :foo (:: :fn ('T) ('T) :string)
```

## Implement a trait

Use `defimpl` to create an impl record for a trait.

```cirru
defimpl MyFooImpl MyFoo
  :foo $ fn (p)
    str-spaced |foo (:name p)
```

### Impl-related syntax (cheatsheet)

**1) `defimpl` argument order (breaking change)**

```
defimpl ImplName Trait ...
```

- First argument is the **impl record name**.
- Second argument is the **trait value** (symbol) or a **tag**.

Examples:

```cirru
defimpl MyFooImpl MyFoo
  :foo $ fn (p) (str-spaced |foo (:name p))

defimpl :MyFooImpl :MyFoo
  :foo $ fn (p) (str-spaced |foo (:name p))
```

**2) Method pair forms**

All of the following are accepted and equivalent:

```cirru
defimpl MyFooImpl MyFoo
  :foo (fn (p) ...)
  :bar (fn (p) ...)
```

```cirru
defimpl MyFooImpl MyFoo
  :: :foo (fn (p) ...)
  :: :bar (fn (p) ...)
```

**3) Tag-based impl (no concrete trait value)**

If you need a pure marker and don’t want to bind to a real trait value, use tags:

```cirru
defimpl :MyMarkerImpl :MyMarker
  :dummy nil
```

This is also a safe replacement for the old self-referential pattern
`defimpl X X`, which can cause recursion in new builds.

Implementation notes:

- `defimpl` creates an “impl record” that stores the trait as its origin.
- This origin is used by `&trait-call` to match the correct implementation when method names overlap.

## Attach impls to a value

`impl-traits` attaches impl records to a **struct/enum type**. For user values, later impls override earlier impls for the same method name ("last-wins").

Constraints:

- `impl-traits` only accepts **struct/enum** values.
- Record/tuple instances must be created from a struct/enum that already has impls attached (`%{}` or `%::`).

Syntax:

```cirru
impl-traits value ImplA ImplB
```

```cirru
defstruct Person0
  :name :string

def Person $ impl-traits Person0 MyFooImpl

let
    p $ %{} Person (:name |Alice)
  .foo p

deftrait ResultTrait
  :describe :fn

defimpl ResultImpl ResultTrait
  :describe $ fn (x)
    tag-match x
      (:ok v) (str |ok: v)
      (:err v) (str |err: v)

defenum Result0
  :ok :string
  :err :string

def Result $ impl-traits Result0 ResultImpl

let
    r $ %:: Result :ok |done
  .describe r
```

### Static analysis boundary

For preprocess to resolve impls and inline methods, keep struct/enum definitions and `impl-traits` at **top-level `ns/def`**. If they are created inside `defn`/`defmacro` bodies, preprocess only sees dynamic values and method dispatch cannot be specialized.

When running `warn-dyn-method`, preprocess emits extra diagnostics for:

- `.method` call sites that have multiple trait candidates with the same method name.
- `impl-traits` used inside function/macro bodies (non-top-level attachment).

## Method call vs explicit trait call

Normal method invocation uses `.method` dispatch. If multiple traits provide the same method name, `.method` resolves by impl precedence.

When you want to **disambiguate** (or bypass `.method` resolution), use `&trait-call`.

### `&trait-call`

Usage:

```cirru
&trait-call Trait :method receiver & args
```

`&trait-call` matches by the impl record's trait origin, not just by trait name text. This avoids accidental dispatch when two different trait values share the same printed name.

Example with two traits sharing the same method name:

```cirru
deftrait MyZapA
  :zap (:: :fn ('T) ('T) :string)

deftrait MyZapB
  :zap (:: :fn ('T) ('T) :string)

defimpl MyZapAImpl MyZapA
  :zap $ fn (_x) |zapA

defimpl MyZapBImpl MyZapB
  :zap $ fn (_x) |zapB

defstruct Person0
  :name :string

def Person $ impl-traits Person0 MyZapAImpl MyZapBImpl

let
    p $ %{} Person (:name |Alice)
  ; `.zap` follows normal dispatch (last-wins for user impls)
  .zap p
  ; explicitly pick a trait’s implementation
  &trait-call MyZapA :zap p
  &trait-call MyZapB :zap p
```

## Debugging / introspection

Two helpers are useful when debugging trait + method dispatch:

- `&methods-of` returns a list of available method names (strings, including the leading dot).
- `&inspect-methods` prints impl records and methods to stderr, and returns the value unchanged.
- `&impl:origin` returns the trait origin stored on an impl record (or nil).

```cirru
let
    xs $ [] 1 2
  &methods-of xs
  &inspect-methods xs "|list"
```

You can also inspect impl origins directly when validating trait dispatch:

```cirru
let
    impls $ &tuple:impls some-tuple
  any? impls $ fn (impl)
    = (&impl:origin impl) MyFoo
```

## Checking trait requirements

`assert-traits` checks at runtime that a value implements a trait (i.e. it provides all required methods). It returns the value unchanged if the check passes.

Notes:

- `assert-traits` is syntax (expanded to `&assert-traits`) and its first argument must be a **local**.
- For built-in values (list/map/set/string/number/...), `assert-traits` only validates default implementations. It **does not** extend methods at runtime.
- Static analysis and runtime checks may diverge for built-ins due to limited compile-time information; this mismatch is currently allowed.

```cirru
assert-traits p MyFoo
```

### Examples (verified with `cr eval`)

```bash
cargo run --bin cr -- demos/compact.cirru eval 'let ((xs ([] 1 2 3))) (assert= xs (assert-traits xs calcit.core/Len)) (.len xs)'
```

Expected output:

```text
3
```

```bash
cargo run --bin cr -- demos/compact.cirru eval 'let ((xs ([] 1 2 3))) (assert= xs (assert-traits xs calcit.core/Mappable)) (.map xs inc)'
```

Expected output:

```text
([] 2 3 4)
```
