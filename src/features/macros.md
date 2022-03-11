# Macros

Like Clojure, Calcit uses macros to support new syntax. And macros ared evaluated during building to expand syntax tree. A `defmacro` block returns list and symbols, as well as literals:

```
defmacro noted (x0 & xs)
  if (empty? xs) x0
    last xs
```

A normal way to use macro is to use `quasiquote` paired with `~x` and `~@xs` to insert one or a span of items. Also notice that `~x` is internally expanded to `(~ x)`, so you can also use `(~ x)` and `(~@ xs)` as well:

```
defmacro if-not (condition true-branch ? false-branch)
  quasiquote $ if ~condition ~false-branch ~true-branch
```

To create new variables inside macro definitions, use `(gensym)` or `(gensym |name)`:

```
defmacro case (item default & patterns)
  &let
    v (gensym |v)
    quasiquote
      &let (~v ~item)
        &case ~v ~default ~@patterns
```

Calcit was not designed to be identical to Clojure, so there are many details here and there.
