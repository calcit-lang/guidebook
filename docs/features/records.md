# Records

Calcit provides Records as a way to define structured data types with named fields, similar to structs in other languages. Records are implemented using tuples internally and support polymorphism through methods.

## Creating Records

### Using `new-record`

Create a record type using the `new-record` function:

```cirru
new-record :Point :x :y
```

### Using `%{}` Macro

Create a record instance with the `%{}` macro:

```cirru
let
    Point $ new-record :Point :x :y
    p $ %{} Point
      :x 1
      :y 2
  , p
```

## Record Operations

### Accessing Fields

```cirru
let
    Point $ new-record :Point :x :y
    p $ %{} Point
      :x 1
      :y 2
  &record:get p :x
  ; => 1
```

### Updating Fields

```cirru
let
    Point $ new-record :Point :x :y
    p $ %{} Point
      :x 1
      :y 2
    p2 $ record-with p
      :x 10
  ; p2 is a new record with :x = 10, :y unchanged
```

### Setting Single Field

```cirru
&record:assoc p :x 100
; => new record with updated :x
```

## Record with Methods

Records can have methods that operate on the record data:

```cirru
defrecord! Rectangle
  :width 0
  :height 0
  :area $ fn (self)
    * (&record:get self :width)
      (&record:get self :height)
  :scale $ fn (self factor)
    record-with self
      :width $ * (&record:get self :width) factor
      :height $ * (&record:get self :height) factor

let
    rect $ %{} Rectangle
      :width 10
      :height 5
  println $ .area rect
  ; => 50
```

## Type Checking

```cirru
; Check if value is a record
record? p
; => true

; Check record class
&record:class p
; => returns the record class

; Check if record matches a class
&record:matches? p Point
; => true
```

## Converting Records

### To Map

```cirru
&record:to-map p
; => {} (:x 1) (:y 2)
```

### From Map

```cirru
&record:from-map Point $ {} (:x 1) (:y 2)
; => record with x=1, y=2
```

## Pattern Matching

Use `record-match` to pattern match on record types:

```cirru
let
    Circle $ new-record :Circle :radius
    Square $ new-record :Square :side
    shape $ %{} Circle
      :radius 5
  record-match shape
    Circle c $ * 3.14 (* (&record:get c :radius) (&record:get c :radius))
    Square s $ * (&record:get s :side) (&record:get s :side)
    _ _ nil
```

## Record Class Operations

### Getting Record Name

```cirru
&record:get-name Point
; => :Point
```

### Extending Records

```cirru
&record:extend-as p :Point3D
  :z 0
```

### Changing Class

```cirru
&record:with-class p NewClass
```

## Record vs Struct

- **Records**: Runtime data structures with fields and optional methods
- **Structs**: Type definitions used for compile-time type checking

```cirru
let
    Person $ defstruct Person
      :name :string
      :age :number
  %{} Person
    :name |Alice
    :age 30
```

## Common Use Cases

### Configuration Objects

```cirru
new-record :Config
  :host
  :port
  :debug
  :log-level

let
    config $ %{} Config
      :port 3000
  println $ &record:get config :port
  ; => 3000
```

### Domain Models

```cirru
new-record :Product
  :id
  :name
  :price
  :discount

let
    product $ %{} Product
      :id |P001
      :name |Widget
      :price 100
      :discount 0.9
  println $ * (&record:get product :price) (&record:get product :discount)
  ; => 90
```

## Type Annotations

```cirru
let
    User $ new-record :User
      :name
      :age
      :email
  defn get-user-name (user)
    hint-fn $ return-type :string
    assert-type user $ :: :record User
    &record:get user :name
  get-user-name $ %{} User
    :name |John
    :age 30
    :email |john@example.com
```

## Performance Notes

- Records are immutable - updates create new records
- Field access is O(1)
- Records share structure when possible
- Use `record-with` for multiple field updates to minimize copying
