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
- **Record**: `%{} :Name (:key1 val1) (:key2 val2)`, similar to structs

## Basic Syntax

```cirru
; Function definition
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
-> data
  filter some-fn
  map transform-fn
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

For detailed information, see the specific documentation files in the table of contents.
