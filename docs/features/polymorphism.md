# Polymorphism

Calcit models polymorphism with traits. Traits define method capabilities and can be attached to values with `impl-traits`.

For capability-based dispatch that can be attached to values (including records/tuples), see [Traits](traits.md).

Historically, the idea was inspired by JavaScript, and also [borrowed from a trick of Haskell](https://www.well-typed.com/blog/2018/03/oop-in-haskell/) (simulating OOP with immutable data structures). The current model is trait-based.

## Key terms

- **Trait**: A named capability with method signatures (defined by `deftrait`).
- **Trait impl**: An impl record providing method implementations for a trait.
- **impl-traits**: Attaches one or more trait impl records to a value.
- **assert-traits**: Adds a compile-time hint and performs a runtime check that a value satisfies a trait.

## Define a trait

```cirru
deftrait Show
  :show (:: :fn ('T) ('T) :string)

deftrait Eq
  :eq? (:: :fn ('T) ('T 'T) :bool)
```

Traits are values and can be referenced like normal symbols.

## Implement a trait for a value

```cirru
deftrait MyFoo
  :foo (:: :fn ('T) ('T) :string)

defimpl MyFoo MyFooImpl
  :foo $ fn (p) (str "|foo " (:name p))

let
    Person0 $ defstruct Person (:name :string)
    Person $ impl-traits Person0 MyFooImpl
    p $ %{} Person (:name |Alice)
  println $ .foo p
```

`impl-traits` returns a new value with trait implementations attached. You can also attach multiple traits at once:

```cirru
let
    Person0 $ defstruct Person (:name :string)
    p $ impl-traits Person0 ShowImpl EqImpl MyFooImpl
  println $ .show p
  println $ .foo p
```

## Trait checks and type hints

`assert-traits` marks a local as having a trait and validates it at runtime:

```cirru
let
    p $ %{} Person (:name |Alice)
  assert-traits p MyFoo
  .foo p
```

If the trait is missing or required methods are not implemented, `assert-traits` raises an error.

## Built-in traits

Core types provide built-in trait implementations (e.g. `Show`, `Eq`, `Compare`, `Add`, `Len`, `Mappable`). These are registered by the runtime, so values like numbers, strings, lists, maps, and records already satisfy common traits.

## Notes

- There is no inheritance. Behavior sharing is done via traits and `impl-traits`.
- Method calls resolve through attached trait impls first, then built-in implementations.
- Use `assert-traits` when a function relies on trait methods and you want early, clear failures.

## Further reading

- Dev log(中文) https://github.com/calcit-lang/calcit/discussions/44
- Dev log in video(中文) https://www.bilibili.com/video/BV1Ky4y137cv
