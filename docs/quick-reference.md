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

## File Structure

- `calcit.cirru` - Editor snapshot (source for structural editing)
- `compact.cirru` - Runtime format (compiled, `cr` command actually uses this)
- `deps.cirru` - Dependencies
- `.compact-inc.cirru` - Hot reload trigger, including incremental changes

For detailed information, see the specific documentation files linked in [SUMMARY.md](SUMMARY.md).
