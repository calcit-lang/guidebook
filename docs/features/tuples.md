# Tuples

Tuples in Calcit are tagged unions that can hold multiple values with a tag. They are used for representing structured data and are the foundation for records and enums.

## Creating Tuples

### Shorthand Syntax

Use `::` to create a tuple with a tag:

```cirru
:: :point 10 20

:: :ok result

:: :err message
```

### With Class Syntax

Use `%::` to create a tuple with a class:

```cirru
defrecord! Point :x :y

%:: Point :point 10 20
```

## Tuple Structure

A tuple consists of:

- **Tag**: A keyword identifying the tuple type (index 0)
- **Class**: Optional class metadata (hidden)
- **Parameters**: Zero or more values (indices 1+)

```cirru
; Simple tuple
(:: :point 10 20)
; Index 0: :point
; Index 1: 10
; Index 2: 20
```

## Accessing Tuple Elements

```cirru
let
    t $ :: :point 10 20
  &tuple:nth t 0
  ; => :point

  &tuple:nth t 1
  ; => 10

  &tuple:nth t 2
  ; => 20
```

## Tuple Properties

```cirru
; Get element count
&tuple:count (:: :a 1 2 3)
; => 4  (includes tag)

; Get class
&tuple:class t
; => returns class if set

; Get parameters (without tag)
&tuple:params t
; => ([] 10 20)

; Get enum tag
&tuple:enum t
; => :point
```

## Updating Tuples

```cirru
; Update element at index
&tuple:assoc (:: :point 10 20) 1 100
; => (:: :point 100 20)
```

## Changing Class

```cirru
let
    t $ :: :point 10 20
    t2 $ &tuple:with-class t PointClass
  ; t2 now has PointClass as its class
```

## Pattern Matching with Tuples

### tag-match

Pattern match on enum/tuple tags:

```cirru
defenum Result
  :ok
  :err :string

let
    result $ %:: Result :ok 42
  tag-match result
    (:ok v) (println $ str |Success: v)
    (:err msg) (println $ str |Error: msg)
    _ (println |Unknown)
```

### list-match

For simple list-like destructuring:

```cirru
list-match (:: :point 10 20)
  () (println |Empty)
  (tag x y) (println tag x y)
```

## Enums as Tuples

Enums are specialized tuples with predefined variants:

```cirru
; Define enum
defenum Option
  :some :dynamic
  :none

; Create enum instances
%:: Option :some 42
%:: Option :none

; Check variant
&tuple:enum-has-variant? option :some
; => true

; Get variant arity
&tuple:enum-variant-arity option :some
; => 1
```

## Common Use Cases

### Result Types

```cirru
defenum Result
  :ok
  :err :string

defn divide (a b)
  if (= b 0)
    %:: Result :err |Division by zero
    %:: Result :ok (/ a b)

let
    result $ divide 10 2
  tag-match result
    (:ok value) (println value)
    (:err msg) (println msg)
```

### Optional Values

```cirru
defenum Option
  :some :dynamic
  :none

defn find-item (items target)
  ...
  if found
    %:: Option :some item
    %:: Option :none
```

### Tagged Data

```cirru
; Represent different message types
:: :greeting |Hello
:: :number 42
:: :list ([] 1 2 3)
```

## Type Annotations

```cirru
defn process-result (r)
  hint-fn $ return-type :string
  assert-type r $ :: :tuple Result
  tag-match r
    (:ok v) (str v)
    (:err msg) msg
```

## Tuple vs Record

| Feature   | Tuple         | Record             |
| --------- | ------------- | ------------------ |
| Access    | By index      | By field name      |
| Structure | Tag + params  | Named fields       |
| Methods   | Via class     | Via defrecord!     |
| Use case  | Tagged unions | Structured objects |

## Performance Notes

- Tuples are immutable
- Element access is O(1)
- `&tuple:assoc` creates a new tuple
- Use records for complex objects with named fields
