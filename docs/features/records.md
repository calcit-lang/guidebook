# Records

Calcit provides Records as a way to define structured data types with named fields, similar to structs in other languages. Records are defined with `defstruct` and instantiated with the `%{}` macro.

## Defining a Struct Type

Use `defstruct` to declare a named type with typed fields:

```cirru
defstruct Point (:x :number) (:y :number)
```

Each field is a pair of `(:field-name :type)`. Supported types include `:number`, `:string`, `:bool`, `:tag`, `:list`, `:map`, `:fn`, and `:dynamic` (untyped).

```cirru
defstruct Person (:name :string) (:age :number) (:position :tag)
```

## Creating Records

Use the `%{}` macro to instantiate a struct:

```cirru
defstruct Point (:x :number) (:y :number)

let
    p $ %{} Point (:x 1) (:y 2)
  , p
```

Fields can also be written on separate lines:

```cirru
let
    p $ %{} Point
      :x 1
      :y 2
  , p
```

## Accessing Fields

Use `get` (or `&record:get`) to read a field:

```cirru
defstruct Point (:x :number) (:y :number)

let
    p $ %{} Point (:x 1) (:y 2)
  get p :x
  ; => 1
```

Standard collection functions like `keys`, `count`, and `contains?` also work on records:

```cirru
keys p        ; => #{} :x :y
count p       ; => 2
contains? p :x  ; => true
```

## Updating Fields

Records are immutable. Use `assoc` or `record-with` to produce an updated copy:

```cirru
let
    p $ %{} Point (:x 1) (:y 2)
    p2 $ assoc p :x 10
  ; p2 has :x = 10, :y = 2; p is unchanged

let
    p $ %{} Person (:name |Chen) (:age 20) (:position :mainland)
    p2 $ record-with p (:age 21) (:position :shanghai)
  ; p2 has updated :age and :position, :name is unchanged
```

`&record:assoc` is the low-level variant (no type checking):

```cirru
&record:assoc p :x 100
```

## Partial Records

Use `%{}?` to create a record with only some fields set (others default to `nil`):

```cirru
defstruct Person (:name :string) (:age :number) (:position :tag)

let
    p1 $ %{}? Person (:name |Chen)
  get p1 :name     ; => |Chen
  get p1 :age      ; => nil
```

Use `%{}?` with an existing record as the first argument to update selected fields while keeping the rest:

```cirru
let
    base $ %{} Person (:name |Base) (:age 30) (:position :beijing)
    p2 $ %{}? base (:age 31)
  get p2 :name      ; => |Base
  get p2 :age       ; => 31
  get p2 :position  ; => :beijing
```

The low-level `&%{}` form accepts fields as flat keyword-value pairs (no type checking):

```cirru
&%{} Person :name |Chen :age 20 :position :mainland
```

## Type Checking

```cirru
; check if a value is a record (struct instance)
record? p   ; => true
struct? p   ; => true

; check if it matches a specific struct
&record:matches? p Person   ; => true

; get the struct definition the record was created from
&record:struct p   ; => the Person struct value

; compare structs directly for origin check
= (&record:struct p) Person   ; => true
```

## Pattern Matching

Use `record-match` to branch on record types:

```cirru
defstruct Circle (:radius :number)
defstruct Square (:side :number)

let
    shape $ %{} Circle (:radius 5)
  record-match shape
    Circle c $ * 3.14 (* (get c :radius) (get c :radius))
    Square s $ * (get s :side) (get s :side)
    _ _ nil
```

## Converting Records

### To Map

```cirru
&record:to-map p
; => {} (:x 1) (:y 2)
```

### From Map

```cirru
&record:from-map Person $ {} (:name |Chen) (:age 20) (:position :mainland)
; => Person record with those field values
```

`merge` also works and returns a new record of the same struct:

```cirru
merge p $ {} (:age 23) (:name |Ye)
```

## Record Name and Struct Inspection

```cirru
; get the tag name of the record's struct
&record:get-name Person   ; => :Person

; check the struct behind a record value
&record:struct p          ; => the struct definition
```

### Struct Origin Check

Compare struct definitions directly when you need to confirm a record's origin:

```cirru
defstruct Cat (:name :string) (:color :tag)
defstruct Dog (:name :string)

let
    v1 $ %{} Cat (:name |Mimi) (:color :white)
  if (= (&record:struct v1) Cat)
    println |Handle Cat branch
    if (= (&record:struct v1) Dog)
      println |Handle Dog branch
      println |Unknown record origin
```

## Polymorphism with Traits

Define a trait with `deftrait`, implement it with `defimpl`, and attach it to a struct with `impl-traits`:

```cirru
deftrait BirdTrait (:show :fn) (:rename :fn)

defstruct BirdShape (:name :string)

defimpl BirdImpl BirdTrait
  :show $ fn (self)
    println $ get self :name
  :rename $ fn (self name)
    assoc self :name name

def Bird $ impl-traits BirdShape BirdImpl

let
    b $ %{} Bird (:name |Sparrow)
  .show b
  let
      b2 $ .rename b |Eagle
    .show b2
```

## Common Use Cases

### Configuration Objects

```cirru
defstruct Config (:host :string) (:port :number) (:debug :bool)

let
    config $ %{} Config (:host |localhost) (:port 3000) (:debug false)
  println $ get config :port
  ; => 3000
```

### Domain Models

```cirru
defstruct Product (:id :string) (:name :string) (:price :number) (:discount :number)

let
    product $ %{} Product
      :id |P001
      :name |Widget
      :price 100
      :discount 0.9
  println $ * (get product :price) (get product :discount)
  ; => 90
```

## Type Annotations

```cirru
defstruct User (:name :string) (:age :number) (:email :string)

defn get-user-name (user)
  hint-fn $ return-type :string
  assert-type user $ :: :record User
  get user :name

get-user-name $ %{} User
  :name |John
  :age 30
  :email |john@example.com
```

## Performance Notes

- Records are immutable — updates create new records
- Field access is O(1)
- Use `record-with` to update multiple fields at once and minimize intermediate allocations
