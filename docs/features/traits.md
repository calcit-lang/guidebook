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
defimpl MyFoo MyFooImpl
  :foo $ fn (p)
    str-spaced |foo (:name p)
```

Implementation notes:

- `defimpl` creates an “impl record” whose identity is tagged by the trait.
- This is important for explicit disambiguation via `&trait-call` (see below).

## Attach impls to a value

`impl-traits` attaches impl records to a value. For user values, later impls override earlier impls for the same method name ("last-wins").

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

defimpl MyZapA MyZapAImpl
  :zap $ fn (_x) |zapA

defimpl MyZapB MyZapBImpl
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

```cirru
let
    xs $ [] 1 2
  &methods-of xs
  &inspect-methods xs "|list"
```

## Checking trait requirements

`assert-traits` checks at runtime that a value implements a trait (i.e. it provides all required methods). It returns the value unchanged if the check passes.

```cirru
assert-traits p MyFoo
```
