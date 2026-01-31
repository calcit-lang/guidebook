# Static Type Analysis

Calcit includes a built-in static type analysis system that performs compile-time checks to catch common errors before runtime. This system operates during the preprocessing phase and provides warnings for type mismatches and other potential issues.

## Overview

The static analysis system provides:

- **Type inference** - Automatically infers types from literals and expressions
- **Type annotations** - Optional type hints for function parameters and return values
- **Compile-time warnings** - Catches errors before code execution
- **Zero runtime overhead** - All checks happen during preprocessing

## Type Annotations

### Function Parameter Types

Annotate function parameters using `assert-type`:

```cirru
defn calculate-total (items)
  assert-type items :list
  reduce items 0
    fn (acc item) (+ acc item)
```

### Return Type Annotations

Specify return types with `hint-fn`:

```cirru
defn get-name (user)
  hint-fn $ return-type :string
  println "|demo code"
```

### Multiple Annotations

Combine parameter and return type annotations:

```cirru
defn add (a b)
  hint-fn $ return-type :number
  assert-type a :number
  assert-type b :number
  + a b
```

## Built-in Type Checks

### Function Arity Checking

The system validates that function calls have the correct number of arguments:

```cirru
defn greet (name age)
  str "|Hello " name "|, you are " age

; Error: expects 2 args but got 1
; greet |Alice
```

### Record Field Access

Validates that record fields exist:

```cirru
defrecord User :name :age

defn get-user-email (user)
  .-email user
  ; Warning: field 'email' not found in record User
  ; Available fields: name, age
```

### Tuple Index Bounds

Checks tuple index access at compile time:

```cirru
let
    point (%:: :Point 10 20 30)
  &tuple:nth point 5  ; Warning: index 5 out of bounds, tuple has 4 elements
```

### Enum Variant Validation

Validates enum construction and pattern matching:

```cirru
defenum Result
  (:Ok :any)
  (:Error :string)

; Warning: variant 'Failure' not found in enum Result
%:: Result :Failure "|something went wrong"
; Available variants: Ok, Error

; Warning: variant 'Ok' expects 1 payload but got 2
%:: Result :Ok 42 |extra
```

### Method Call Validation

Checks that methods exist for the receiver type:

```cirru
defn process-list (xs)
  ; .unknown-method xs
  println "|demo code"
  ; "Warning: unknown method .unknown-method for :list"
  ; Available methods: .map, .filter, .count, ...
```

### Recur Arity Checking

Validates that `recur` calls have the correct number of arguments:

```cirru
defn factorial (n acc)
  if (<= n 1) acc
    recur (dec n) (* n acc)
  ; Warning: recur expects 2 args but got 3
  ; recur (dec n) (* n acc) 999
```

**Note**: Recur arity checking automatically skips:

- Functions with variadic parameters (`&` rest args)
- Functions with optional parameters (`?` markers)
- Macro-generated functions (e.g., from `loop` macro)
- `calcit.core` namespace functions

## Type Inference

The system infers types from various sources:

### Literal Types

```cirru
let
    x 42          ; inferred as :number
    y |hello      ; inferred as :string
    z true        ; inferred as :bool
    w nil         ; inferred as :nil
  println "|demo code"
```

### Function Return Types

```cirru
let
    numbers (range 10)  ; inferred as :list
    first-num (&list:first numbers)  ; inferred as :number
  println "|demo code"
```

### Record and Struct Types

```cirru
defstruct Point :x :y

let
    p (%:: Point :x 10 :y 20)  ; inferred as Point record
    x-val (.:x p)              ; inferred from field type
  println "|demo code"
```

## Type Assertions

Use `assert-type` to explicitly check types during preprocessing:

```cirru
defn process-data (data)
  assert-type data :list
  &list:map data transform-fn
```

**Note**: `assert-type` is evaluated during preprocessing and removed at runtime, so there's no performance penalty.

## Optional Types

Calcit supports optional type annotations for nullable values:

```cirru
defn find-user (id)
  hint-fn $ return-type $ :: :optional :record
  ; May return nil if user not found
  println "|demo code"
```

## Variadic Types

Functions with rest parameters use variadic type annotations:

```cirru
defn sum (& numbers)
  hint-fn $ return-type :number
  assert-type numbers $ :: :& :number
  reduce numbers 0 +
```

## Function Types

Functions can be typed as `:fn`. You can also assert input types:

```cirru
defn apply-twice (f x)
  assert-type f :fn
  assert-type x :number
  f (f x)
```

## Disabling Checks

### Per-Function

Skip checks for specific functions by naming them with special markers:

- Functions with `%` in the name (macro-generated)
- Functions with `$` in the name (special markers)
- Functions starting with `__` (internal functions)

### Per-Namespace

Checks are automatically skipped for:

- `calcit.core` namespace (external library)
- Functions with variadic or optional parameters (complex arity rules)

## Best Practices

### 1. Use Type Annotations for Public APIs

```cirru
defn public-api-function (input)
  hint-fn $ return-type :string
  assert-type input :map
  process-input input
```

### 2. Leverage Type Inference

Let the system infer types from literals and function calls:

```cirru
defn calculate-area (width height)
  ; Types inferred from arithmetic operations
  * width height
```

### 3. Add Assertions for Critical Code

```cirru
defn critical-operation (data)
  assert-type data :list
  ; Ensure data is a list before processing
  dangerous-operation data
```

### 4. Document Complex Types

```cirru
; Function that takes a map with specific keys
defn process-user (user-map)
  assert-type user-map :map
  ; Expected keys: :name :email :age
  println "|demo code"
```

## Limitations

1. **Dynamic Code**: Type checks don't apply to dynamically generated code
2. **JavaScript Interop**: JS function calls are not type-checked
3. **Macro Expansion**: Some macros may generate code that bypasses checks
4. **Runtime Polymorphism**: Type checks are conservative with polymorphic code

## Error Messages

Type check warnings include:

- **Location information**: namespace, function, and code location
- **Expected vs actual types**: clear description of the mismatch
- **Available options**: list of valid fields/methods/variants

Example warning:

```
[Warn] Tuple index out of bounds: tuple has 3 element(s), but trying to access index 5, at my-app.core/process-point
```

## Advanced Topics

### Custom Type Predicates

While Calcit doesn't support custom type predicates in the static analysis system yet, you can use runtime checks:

```cirru
defn is-positive? (n)
  and (number? n) (> n 0)
```

### Type-Driven Development

1. Write function signatures with type annotations
2. Let the compiler guide implementation
3. Use warnings to catch edge cases
4. Add assertions for invariants

### Performance

Static type analysis:

- Runs during preprocessing phase
- Zero runtime overhead
- Only checks functions that are actually called
- Cached between hot reloads (incremental)

## See Also

- [Polymorphism](polymorphism.md) - Object-oriented programming patterns
- [Macros](macros.md) - Metaprogramming and code generation
- [Data](../data.md) - Data types and structures
