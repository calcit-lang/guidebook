# Macros

Like Clojure, Calcit uses macros to support new syntax. And macros ared evaluated during building to expand syntax tree. A `defmacro` block returns list and symbols, as well as literals:

```cirru
defmacro noted (x0 & xs)
  if (empty? xs) x0
    last xs
```

A normal way to use macro is to use `quasiquote` paired with `~x` and `~@xs` to insert one or a span of items. Also notice that `~x` is internally expanded to `(~ x)`, so you can also use `(~ x)` and `(~@ xs)` as well:

```cirru
defmacro if-not (condition true-branch ? false-branch)
  quasiquote $ if ~condition ~false-branch ~true-branch
```

To create new variables inside macro definitions, use `(gensym)` or `(gensym |name)`:

```cirru
defmacro case (item default & patterns)
  &let
    v (gensym |v)
    quasiquote
      &let (~v ~item)
        &case ~v ~default ~@patterns
```

Calcit was not designed to be identical to Clojure, so there are many details here and there.

### Macros and Static Analysis

Macros expand before type checking, so generated code is validated:

```cirru
defmacro assert-positive (x)
  quasiquote
    if (< ~x 0)
      raise "|Value must be positive"
      ~x

; After expansion, type checking applies to generated code
defn process (n)
  assert-type n :number
  assert-positive n  ; Macro expands, then type-checked
```

**Important**: Macro-generated functions (like loop's `f%`) are automatically excluded from certain static checks (e.g., recur arity) to avoid false positives. Functions with `%`, `$`, or `__` prefix are treated as compiler-generated.

### Best Practices

- **Use gensym for local variables**: Prevents name collision
- **Keep macros simple**: Complex logic belongs in functions
- **Document macro behavior**: Include usage examples
- **Test macro expansion**: Use `macroexpand-all` to verify output
- **Avoid side effects**: Macros should only transform syntax

### Debug Macros

Use `macroexpand-all` for debugging:

```
$ cr eval 'println $ format-to-cirru $ macroexpand-all $ quote $ let ((a 1) (b 2)) (+ a b)'

&let (a 1)
  &let (b 2)
    + a b

```

`format-to-cirru` and `format-to-lisp` are 2 custom code formatters:

```
$ cr eval 'println $ format-to-lisp $ macroexpand-all $ quote $ let ((a 1) (b 2)) (+ a b)'

(&let (a 1) (&let (b 2) (+ a b)))
```

The syntax `macroexpand` only expand syntax tree once:

```
$ cr eval 'println $ format-to-cirru $ macroexpand $ quote $ let ((a 1) (b 2)) (+ a b)'

&let (a 1)
  let
      b 2
    + a b
```
