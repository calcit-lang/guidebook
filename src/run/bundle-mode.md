
# Bundle Mode

By design, Calcit program is supposed to be written with [calcit-editor](http://github.com/calcit-lang/editor). And you can try short snippets in eval mode.

If you want to code larger program with calcit-editor, it's also possible. Find example in [minimal-calcit](https://github.com/calcit-lang/minimal-calcit).

With `bundle_calcit` command, Calcit code can be written as an indentation-based language. So you don't have to match parentheses like in Clojure. It also means now you need to handle indentations very carefully.

Before you run Calcit, you need to bundle files first into a `compact.cirru` file. Then use `cr` command to run it. Hot code swapping is not available in this way since it requires a `.compact-inc.cirru` for detecting changes.

