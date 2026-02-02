# Quick Reference

This page provides a quick overview of key Calcit concepts and commands for rapid lookup.

## Installation & Setup

```bash
# Install Rust first
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Calcit
cargo install calcit

# Test installation
cr eval "echo |done"
```

## Core Commands

- `cr` - Run Calcit program (default: `compact.cirru`)
- `cr eval "code"` - Evaluate code snippet
- `cr js` - Generate JavaScript
- `cr ir` - Generate IR representation
- `bundle_calcit` - Bundle indentation syntax to `compact.cirru`
- `caps` - Download dependencies
- `cr-mcp` - Start MCP server for tool integration

### CLI Options

- `--once` / `-1` - Run once without watching
- `--disable-stack` - Disable stack trace for errors
- `--skip-arity-check` - Skip arity check in JS codegen
- `--emit-path <path>` - Specify output path for JS (default: `js-out/`)
- `--init-fn <fn>` - Specify main function
- `--reload-fn <fn>` - Specify reload function for hot reloading
- `--entry <entry>` - Use config entry
- `--reload-libs` - Force reload libs data during hot reload
- `--watch-dir <path>` - Watch assets changes

## Data Types

- **Numbers**: `1`, `3.14`
- **Strings**: `|text`, `"|with spaces"`, `"\"escaped"`
- **Tags**: `:keyword` (immutable strings, like Clojure keywords)
- **Lists**: `[] 1 2 3`
- **HashMaps**: `{} (:a 1) (:b 2)`
- **HashSets**: `#{} :a :b :c`
- **Tuples**: `:: :tag 1 2` - tagged unions with class support
- **Records**: `%{} RecordName (:key1 val1) (:key2 val2)`, similar to structs
- **Structs**: `defstruct Point (:x :number) (:y :number)` - record type definitions
- **Enums**: `defenum Result (:ok ..) (:err :string)` - sum types
- **Refs/Atoms**: `atom 0` - mutable references
- **Buffers**: `&buffer 0x01 0x02` - binary data

## Basic Syntax

```cirru
; "Function definition (in file context)"
defn add (a b)
  + a b

; Conditional
if (> x 0) |positive |negative

; Let binding
let
    a 1
    b 2
  + a b

; Thread macro
-> (range 10)
  filter $ fn (x) (> x 5)
  map inc
```

## Type Annotations

```cirru
; Function with type annotations
defn add (a b)
  hint-fn $ return-type :number
  assert-type a :number
  assert-type b :number
  + a b

; Optional type (nilable)
defn maybe-get (m k)
  hint-fn $ return-type $ :: :optional :any
  assert-type m :map
  &map:get m k

; Variadic type
defn sum (& xs)
  hint-fn $ return-type :number
  assert-type xs $ :: :& :number
  apply + xs

; Record definition
defrecord User :name :age :email

; Type assertion (compile-time check)
assert-type x :number
```

### Built-in Types

- `:number`, `:string`, `:bool`, `:nil`, `:any`
- `:list`, `:map`, `:set`, `:record`, `:fn`, `:tuple`
- `:dynamic` - wildcard type (default when no annotation)
- Generic types: `(:list :number)`, `(:map :string)`, `(:fn (:number) :string)`

### Static Checks (Compile-time)

- **Arity checking**: Function call argument count validation
- **Record field checking**: Validates field names in record access
- **Tuple index bounds**: Ensures tuple indices are valid
- **Enum tag matching**: Validates tags in `&case` and `&extract-case`
- **Method validation**: Checks method names and class types
- **Recur arity**: Validates recur argument count matches function params

## File Structure

- `calcit.cirru` - Editor snapshot (source for structural editing)
- `compact.cirru` - Runtime format (compiled, `cr` command actually uses this)
- `deps.cirru` - Dependencies
- `.compact-inc.cirru` - Hot reload trigger, including incremental changes

## Common Functions

### Math

- `+`, `-`, `*`, `/` - arithmetic (variadic)
- `&+`, `&-`, `&*`, `&/` - binary arithmetic
- `inc`, `dec` - increment/decrement
- `pow`, `sqrt`, `round`, `floor`, `ceil`
- `sin`, `cos` - trigonometric functions
- `&max`, `&min` - binary min/max
- `&number:fract` - fractional part
- `&number:rem` - remainder
- `&number:format` - format number
- `bit-shl`, `bit-shr`, `bit-and`, `bit-or`, `bit-xor`, `bit-not`

### List Operations

- `[]` - create list
- `append`, `prepend` - add elements
- `concat` - concatenate lists
- `nth`, `first`, `rest`, `last` - access elements
- `count`, `empty?` - list properties
- `slice` - extract sublist
- `reverse` - reverse list
- `sort`, `sort-by` - sorting
- `map`, `filter`, `reduce` - functional operations
- `foldl`, `foldl-shortcut`, `foldr-shortcut` - folding
- `range` - generate number range
- `take`, `drop` - slice operations
- `distinct` - remove duplicates
- `&list:contains?`, `&list:includes?` - membership tests

### Map Operations

- `{}` or `&{}` - create map
- `&map:get` - get value by key
- `&map:assoc`, `&map:dissoc` - add/remove entries
- `&map:merge` - merge maps
- `&map:contains?`, `&map:includes?` - key membership
- `keys`, `vals` - extract keys/values
- `to-pairs`, `pairs-map` - convert to/from pairs
- `&map:filter`, `&map:filter-kv` - filter entries
- `&map:common-keys`, `&map:diff-keys` - key operations

### Set Operations

- `#{}` - create set
- `include`, `exclude` - add/remove elements
- `union`, `difference`, `intersection` - set operations
- `&set:includes?` - membership test
- `&set:to-list` - convert to list

### String Operations

- `str` - concatenate to string
- `str-spaced` - join with spaces
- `&str:concat` - binary concatenation
- `trim`, `split`, `split-lines` - string manipulation
- `starts-with?`, `ends-with?` - prefix/suffix tests
- `&str:slice` - extract substring
- `&str:replace` - replace substring
- `&str:find-index` - find position
- `&str:contains?`, `&str:includes?` - substring tests
- `&str:pad-left`, `&str:pad-right` - padding
- `parse-float` - parse number from string
- `get-char-code`, `char-from-code` - character operations
- `&str:escape` - escape string

### Tuple Operations

- `::` - create tuple (shorthand)
- `%::` - create tuple with class
- `&tuple:nth` - access element by index
- `&tuple:assoc` - update element
- `&tuple:count` - get element count
- `&tuple:class` - get class
- `&tuple:params` - get parameters
- `&tuple:enum` - get enum tag
- `&tuple:with-class` - change class

### Record Operations

- `new-record` - create record instance
- `defrecord!` - define record type with methods
- `&%{}` - low-level record constructor
- `&record:get` - get field value
- `&record:assoc` - set field value
- `&record:with` - update fields
- `&record:class` - get record class
- `&record:matches?` - type check
- `&record:from-map` - convert from map
- `&record:to-map` - convert to map
- `record?` - predicate

### Struct & Enum Operations

- `defstruct` - define struct type
- `defenum` - define enum type
- `&struct::new`, `&enum::new` - create instances
- `struct?`, `enum?` - predicates
- `&tuple:enum-has-variant?` - check variant
- `&tuple:enum-variant-arity` - get variant arity
- `tag-match` - pattern matching on enums

### Ref/Atom Operations

- `atom` - create atom
- `&atom:deref` or `deref` - read value
- `reset!` - set value
- `swap!` - update with function
- `add-watch`, `remove-watch` - observe changes
- `ref?` - predicate

### Type Predicates

- `nil?`, `some?` - nil checks
- `number?`, `string?`, `tag?`, `symbol?`
- `list?`, `map?`, `set?`, `tuple?`
- `record?`, `struct?`, `enum?`, `ref?`
- `fn?`, `macro?`

### Control Flow

- `if` - conditional
- `when`, `when-not` - single-branch conditionals
- `cond` - multi-way conditional
- `case` - pattern matching on values
- `&case` - internal case macro
- `tag-match` - enum/tuple pattern matching
- `record-match` - record pattern matching
- `list-match` - list destructuring match
- `field-match` - map field matching

### Threading Macros

- `->` - thread first
- `->>` - thread last
- `->%` - thread with `%` placeholder
- `%<-` - reverse thread

### Other Macros

- `let` - local bindings
- `defn` - define function
- `defmacro` - define macro
- `fn` - anonymous function
- `quote`, `quasiquote` - code as data
- `macroexpand`, `macroexpand-all` - debug macros
- `assert`, `assert=` - assertions
- `&doseq` - side-effect iteration
- `for` - list comprehension

### Meta Operations

- `type-of` - get type tag
- `turn-string`, `turn-symbol`, `turn-tag` - type conversion
- `identical?` - reference equality
- `recur` - tail recursion
- `generate-id!` - unique ID generation
- `cpu-time` - timing
- `&get-os`, `&get-calcit-backend` - environment info

### EDN/Data Operations

- `parse-cirru-edn`, `format-cirru-edn` - EDN serialization
- `parse-cirru`, `format-cirru` - Cirru syntax
- `&data-to-code` - convert data to code
- `pr-str` - print to string

### Effects/IO

- `echo`, `println` - output
- `read-file`, `write-file` - file operations
- `get-env` - environment variables
- `raise` - throw error
- `quit!` - exit program

For detailed information, see the specific documentation files in the table of contents.
