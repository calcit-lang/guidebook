# Traits

Calcit provides a lightweight trait system for attaching method implementations to values (records, tuples, and some built-in types).

It complements the “class-like” tuple polymorphism described in [Polymorphism](polymorphism.md):

- Tuple/record **classes** are about “this concrete type has these methods”.
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
  (:foo (fn (p) ...))
  (:bar (fn (p) ...))
```

```cirru
defimpl MyFooImpl MyFoo
  (:: :foo (fn (p) ...))
  (:: :bar (fn (p) ...))
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

`impl-traits` attaches impl records to a value. For user values, later impls override earlier impls for the same method name ("last-wins").

Syntax:

```cirru
impl-traits value ImplA ImplB
```

```cirru
let
    Person0 $ new-record :Person :name
    Person $ impl-traits Person0 MyFooImpl
    p $ %{} Person (:name |Alice)
  .foo p
```

## Method call vs explicit trait call

Normal method invocation uses `.method` dispatch. If multiple traits provide the same method name, `.method` resolves by impl precedence.

When you want to **disambiguate** (or bypass `.method` resolution), use `&trait-call`.

### `&trait-call`

Usage:

```cirru
&trait-call Trait :method receiver & args
```

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

let
    Person0 $ new-record :Person :name
    Person $ impl-traits Person0 MyZapAImpl MyZapBImpl
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

```cirru
assert-traits p MyFoo
```
