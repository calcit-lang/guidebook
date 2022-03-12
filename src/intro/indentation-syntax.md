# Indentation-based Syntax

Calcit was designed based on tools from [Cirru Project](http://cirru.org/), which means, it's suggested to be programming with [Calcit Editor](https://github.com/calcit-lang/editor/). It will emit a file `compact.cirru` containing data of the code. And the data is still written in [Cirru EDN](https://github.com/Cirru/cirru-edn#syntax), Clojure EDN but based on Cirru Syntax.

For Cirru Syntax, read <http://text.cirru.org/>, and you may find a live demo at <http://repo.cirru.org/parser.coffee/>. A normal snippet looks like: this

```
defn fibo (x)
  if (< x 2) (, 1)
    + (fibo $ - x 1) (fibo $ - x 2)
```

But also, you can write in files and bundle `compact.cirru` with a command line `bundle_calcit`.

To run `compact.cirru`, internally it's doing steps:

1. parse Cirru Syntax into vectors,
2. turn Cirru vectors into Cirru EDN, which is a piece of data,
3. build program data with quoted Calcit data(very similar to EDN, but got more data types),
4. interpret program data.

Since Cirru itself is very generic lispy syntax, it may represent various semantics, both for code and for data.

Inside `compact.cirru`, code is like quoted data inside `(quote ...)` blocks:

```
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)

  :entries $ {}
    :prime $ {} (:init-fn |app.main/try-prime) (:reload-fn |app.main/try-prime)
      :modules $ []

  :files $ {}
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
      :defs $ {}
        |fibo $ quote
          defn fibo (x)
            if (< x 2) (, 1)
              + (fibo $ - x 1) (fibo $ - x 2)

```

Notice that in Cirru `|s` prepresents a string `"s"`, it's always trying to use prefixed syntax. `"\"s"` also means `|s`, and double quote marks existed for providing context of "character escaping".
