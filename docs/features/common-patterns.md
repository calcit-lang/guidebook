# Common Patterns

This document provides practical examples and patterns for common programming tasks in Calcit.

## Working with Collections

### Filtering and Transforming Lists

```cirru
; Filter even numbers and square them
-> (range 20)
  filter $ fn (n)
    = 0 $ &number:rem n 2
  map $ fn (n)
    * n n
; => ([] 0 4 16 36 64 100 144 196 256 324)
```

### Grouping Data

```cirru
let
    group-by-length $ fn (words)
      group-by words count
  group-by-length ([] |apple |pear |banana |kiwi)
; => {}
;   4 $ [] |pear |kiwi
;   5 $ [] |apple
;   6 $ [] |banana
```

### Finding Elements

```cirru
let
    result1 $ find ([] 1 2 3 4 5) $ fn (x) (> x 3)
    result2 $ index-of ([] :a :b :c :d) :c
    result3 $ any? ([] 1 2 3) $ fn (x) (> x 2)
    result4 $ every? ([] 2 4 6) $ fn (x) (= 0 $ &number:rem x 2)
  println result1
  ; => 4
  println result2
  ; => 2
  println result3
  ; => true
  println result4
  ; => true
```

## Error Handling

### Using Result Type

```cirru
let
    Result $ defenum Result
      :ok
      :err :string
    safe-divide $ fn (a b)
      if (= b 0)
        %:: Result :err |Division by zero
        %:: Result :ok (/ a b)
    handle-result $ fn (result)
      tag-match result
        (:ok v) (println $ str |Result: v)
        (:err msg) (println $ str |Error: msg)
  handle-result $ safe-divide 10 2
```

### Using Option Type

```cirru
let
    Option $ defenum Option
      :some :dynamic
      :none
    find-user $ fn (users id)
      let
          user $ find users $ fn (u)
            = (&record:get u :id) id
        if (nil? user)
          %:: Option :none
          %:: Option :some user
  find-user
    [] ({} (:id |001) (:name |Alice))
    , |001
```

## Working with Maps

### Nested Map Operations

```cirru
let
    data $ {} (:a $ {} (:b $ {} (:c 1)))
    result1 $ get-in data $ [] :a :b :c
    result2 $ assoc-in data $ [] :a :b :c 100
    result3 $ update-in data $ [] :a :b :c inc
  println result1
  ; => 1
  println result2
  ; => {} (:a $ {} (:b $ {} (:c 100)))
  println result3
  ; => {} (:a $ {} (:b $ {} (:c 2)))
```

### Merging Maps

```cirru
let
    result1 $ merge
      {} (:a 1) (:b 2)
      {} (:b 3) (:c 4)
      {} (:d 5)
    result2 $ &merge-non-nil
      {} (:a 1) (:b nil)
      {} (:b 2) (:c 3)
  println result1
  ; => {} (:a 1) (:b 3) (:c 4) (:d 5)
  println result2
  ; => {} (:a 1) (:b 2) (:c 3)
```

## String Manipulation

### String Syntax

Calcit has two ways to write strings:

- `|text` - for strings without spaces (shorthand)
- `"|text with spaces"` - for strings with spaces (must use quotes)

```cirru
let
    s1 |HelloWorld
    s2 |hello-world
    s3 "|hello world"
    s4 "|error in module"
  println s1
  ; => |HelloWorld
  println s2
  ; => |hello-world
  println s3
  ; => "|hello world"
  println s4
  ; => "|error in module"
```

### Building Strings

```cirru
let
    result1 $ str |Hello | |World
    result2 $ join-str ([] :a :b :c) |,
    result3 $ str-spaced :error |in :module
  println result1
  ; => |HelloWorld
  println result2
  ; => |a,b,c
  println result3
  ; => "|error in module"
```

### Parsing Strings

```cirru
let
    result1 $ split |hello-world-test |-|
    result2 $ split-lines |line1\nline2\nline3
    result3 $ parse-float |3.14159
  println result1
  ; => ([] |hello |world |test)
  println result2
  ; => ([] |line1 |line2 |line3)
  println result3
  ; => 3.14159
```

### String Inspection

```cirru
let
    result1 $ starts-with? |hello-world |hello
    result2 $ ends-with? |hello-world |world
    result3 $ &str:find-index |hello-world |world
    result4 $ &str:contains? |hello-world |llo
  println result1
  ; => true
  println result2
  ; => true
  println result3
  ; => 6
  println result4
  ; => true
```

## State Management

### Using Atoms

```cirru
let
    counter $ atom 0
  println $ deref counter
  ; => 0
  reset! counter 10
  ; => 10
  swap! counter inc
  ; => 11
```

### Managing Collections in State

```cirru
let
    todos $ atom ([])
    add-todo! $ fn (text)
      swap! todos $ fn (todos)
        append todos $ {} (:id $ generate-id!) (:text text) (:done false)
    toggle-todo! $ fn (id)
      swap! todos $ fn (todos)
        map todos $ fn (todo)
          if (= (&record:get todo :id) id)
            &record:with todo (:done $ not (&record:get todo :done))
            , todo
    remove-todo! $ fn (id)
      swap! todos $ fn (todos)
        filter todos $ fn (todo)
          not= (&record:get todo :id) id
  add-todo! |Buy milk
  add-todo! |Write documentation
  deref todos
```

## Control Flow Patterns

### Early Return Pattern

```cirru
defn process-data (data)
  if (empty? data)
    :: :err |Empty data
    let
        validated $ validate-data data
      if (nil? validated)
        :: :err |Invalid data
        let
            result $ transform-data validated
          :: :ok result
```

### Pipeline Pattern

```cirru
defn process-user-input (input)
  -> input
    trim
    &str:slice 0 100 (; Truncate)
    validate-input
    parse-input
    transform-to-command
```

### Loop with Recur

```cirru
; Factorial with loop/recur
defn factorial (n)
  apply-args (1 n)
    fn (acc n)
      if (&<= n 1) acc
        recur
          * acc n
          &- n 1

; Fibonacci with loop/recur
defn fibonacci (n)
  apply-args (0 1 n)
    fn (a b n)
      if (&<= n 0) a
        recur b (&+ a b) (&- n 1)
```

## Working with Files

### Reading and Writing

```cirru
let
    content $ read-file |data.txt
    lines $ split-lines content
  println content
  &doseq (line lines)
    process-line line
```

## Math Operations

### Common Calculations

```cirru
let
    round-to $ fn (n places)
      let
          factor $ pow 10 places
        / (round $ * n factor) factor
    clamp $ fn (x min-val max-val)
      -> x
        &max min-val
        &min max-val
    average $ fn (numbers)
      / (apply + numbers) (count numbers)
  println $ round-to 3.14159 2
  ; => 3.14
  println $ clamp 15 0 10
  ; => 10
  println $ average ([] 1 2 3 4 5)
  ; => 3
```

## Debugging

### Inspecting Values

```cirru
let
    data $ {} (:x 1) (:y 2)
    result $ -> data
      tap $ fn (x) (println |Step 1: x)
      transform-1
      tap $ fn (x) (println |Step 2: x)
      transform-2
    x 5
  assert "|Should be positive" $ > x 0
  assert= 4 (+ 2 2)
  &display-stack
  println result
```

## Performance Tips

### Lazy Evaluation

```cirru
let
    result $ foldl-shortcut
      range 1000
      , nil nil
      fn (acc x)
        if (> x 100)
          :: true x
          :: false nil
  println result
```

### Avoiding Intermediate Collections

```cirru
let
    items $ [] ({} (:value 1)) ({} (:value 2)) ({} (:value 3))
    result1 $ reduce items 0 $ fn (acc item)
      + acc (&record:get item :value)
    result2 $ apply +
      map items $ fn (item)
        &record:get item :value
  println result1
  ; => 6
  println result2
  ; => 6
```

## Testing

### Writing Tests

```cirru
let
    test-addition $ fn ()
      assert= 4 (+ 2 2)
      assert= 0 (+ 0 0)
      assert= -5 (+ -2 -3)
    test-with-setup $ fn ()
      let
          input $ {} (:name |test) (:value 42)
        true
  test-addition
```

## Best Practices

1. **Use type annotations** for function parameters and return values
2. **Prefer immutable data** - use `swap!` instead of manual mutation
3. **Use pattern matching** (`tag-match`, `record-match`) for control flow
4. **Leverage threading macros** (`->`, `->>`) for data pipelines
5. **Use enums for result types** instead of exceptions
6. **Keep functions small** and focused on a single responsibility
