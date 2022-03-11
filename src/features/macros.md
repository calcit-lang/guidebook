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

### Debug Macros

use `macroexpand-all` for debugging:

```
$ cr -e 'println $ format-to-cirru $ macroexpand-all $ quote $ let ((a 1) (b 2)) (+ a b)'

&let (a 1)
  &let (b 2)
    + a b

```

`format-to-cirru` and `format-to-lisp` are 2 custom code formatters:

```
$ cr -e 'println $ format-to-lisp $ macroexpand-all $ quote $ let ((a 1) (b 2)) (+ a b)'

(&let (a 1) (&let (b 2) (+ a b)))
```

The syntax `macroexpand` only expand syntax tree once:

```
$ cr -e 'println $ format-to-cirru $ macroexpand $ quote $ let ((a 1) (b 2)) (+ a b)'

&let (a 1)
  let
      b 2
    + a b
```
