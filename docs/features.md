# Features

Calcit inherits most features from Clojure/ClojureScript while adding its own innovations:

## Core Features

- **Immutable persistent data structures** - All data is immutable by default
- **Functional programming** - First-class functions, higher-order functions
- **Lisp syntax** - Code as data, powerful macro system
- **Hot code swapping** - Live code updates during development
- **JavaScript interop** - Seamless integration with JS ecosystem

## Unique to Calcit

- **Indentation-based syntax** - Alternative to parentheses using `bundle_calcit`
- **Structural editing** - Visual tree-based code editing with Calcit Editor
- **ES Modules output** - Modern JavaScript module format
- **MCP integration** - Model Context Protocol server for tool integration
- **Ternary tree collections** - Custom persistent data structures

## Language Features

For detailed information about specific features:

- [List](features/list.md) - Persistent vectors and operations
- [HashMap](features/hashmap.md) - Key-value data structures
- [Macros](features/macros.md) - Code generation and syntax extension
- [JavaScript Interop](features/js-interop.md) - Calling JS from Calcit
- [Imports](features/imports.md) - Module system and dependencies
- [Polymorphism](features/polymorphism.md) - Object-oriented programming simulation

## Development Features

- **Pattern matching** - Tagged unions (experimental)
- **Type checking** - Runtime type validation
- **Error handling** - Stack traces and debugging tools
- **Package management** - Git-based dependency system with `caps`

Calcit is designed to be familiar to Clojure developers while providing modern tooling and development experience.
