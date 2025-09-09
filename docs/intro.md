# Introduction

Calcit is a scripting language that combines the power of Clojure-like functional programming with modern tooling and hot code swapping.

> An interpreter for Calcit snapshots with hot code swapping support.

Calcit is built with Rust and can also emit JavaScript in ES Modules syntax. It's inspired primarily by ClojureScript and designed for interactive development.

## Key Features

- **Immutable persistent data structures** by default
- **Structural editing** with the Calcit Editor
- **Hot code swapping** for rapid development
- **JavaScript interop** with ES Modules support
- **Indentation-based syntax** alternative to parentheses
- **MCP (Model Context Protocol)** server for tool integration

## Quick Start

You can [try Calcit WASM build online](http://repo.calcit-lang.org/calcit-wasm-play/) for simple snippets, or see the [Quick Reference](quick-reference.md) for common commands and syntax.

## Design Philosophy

Calcit experiments with several interesting ideas:

- Code is stored in data snapshot files, enabling structural editing
- Pattern matching of tagged unions (experimental)
- File-as-key/value model for MCP server integration, use Markdown docs

Most other features are inherited from ClojureScript. Calcit-js is commonly used for web development with [Respo](https://respo-mvc.org/), a virtual DOM library migrated from ClojureScript.

For more details, see [Overview](intro/overview.md) and [From Clojure](intro/from-clojure.md).
