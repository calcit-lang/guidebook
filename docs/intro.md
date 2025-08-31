# Introduction

Calcit scripting language.

> an interpreter for calcit snapshot, and hot code swapping friendly.

Calcit is an interpreter built with Rust, and also a JavaScript code emitter. It's inspired mostly by ClojureScript. Calcit-js emits JavaScript in ES Modules syntax.

You can [try Calcit WASM build online](http://repo.calcit-lang.org/calcit-wasm-play/) for simple snippets.

There are several interesting ideas experimenting in Calcit:

- Calcit code is stored in a data snapshot file, pairs with Calcit Editor, you may perform structural editing.
- while Calcit is dynamically typed, pattern matching of tagged unions is experimented.

Other features of Calcit are mostly inherited from ClojureScript. I use Calcit-js mostly for web development with [Respo](https://respo-mvc.org/), the virtual DOM library migrated from ClojureScript version.
