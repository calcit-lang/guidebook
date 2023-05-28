# Polymorphism

Calcit uses tuples to simulate objects. Inherence not supported.

Core idea is inspired by JavaScript and also [borrowed from a trick of Haskell](https://www.well-typed.com/blog/2018/03/oop-in-haskell/) since Haskell is simulating OOP with immutable data structures.

### Terms

- "Tuple", the data structure of 2 or more items, written like `(:: a b)`. It's more "tagged union" in the case of Calcit.
- "class", it's a concept between "JavaScript class" and "JavaScript prototype", it's using a record containing functions to represent the prototype of objects.
- "object", Calcit has no "OOP Objects", it's only tuples that simulating objects to support polymorphism. It's based on immutable data.

which makes "tuple" a really special data type Calcit.

Tuple has a structure of three parts:

```cirru
%:: %class :tag p1 p2 p3
```

- `%class` defines the class, which is a hidden property, not counted in index
- `:tag` is a tag to identify the tuple by convention, index is `0`.
- parameters, can be 0 or many arguments, index starts with `1`. for example `(:: :none)` is an example of a tuple with 0 arguments, index `0` gets `:none`.

There was another shorthand for defining tuples, which internall uses an empty class:

```cirru
:: :tag p1 p2 p3
```

### Usage

Define a class:

```cirru
defrecord! MyNum
  :inc $ fn (self)
    update self 1 inc
  :show $ fn (self)
    str $ &tuple:nth self 1
```

notice that `self` in this context is `(%:: MyNum :my-num 1)` rather than a bare liternal.

get an obejct and call method:

```cirru
let
    a $ %:: MyNum :my-num 1
  println $ .show a
```

> Not to be confused with JavaScript native method function which uses `.!method`.

Use it with chaining:

```cirru
-> (%:: MyNum :my-num 1)
  .update
  .show
  println
```

In the runtime, a method call will try to check first element in the passed tuple and use it as the prototype, looking up the method name, and then really call it. It's roughly same behavoirs running in JavaScript except that JavaScript need to polyfill this with partial functions.

### Built-in classes

Many of core data types inside Calcit are treated like "tagged unions" inside the runtime, with some class being initialized at program start:

```cirru
&core-number-class
&core-string-class
&core-set-class
&core-list-class
&core-map-class
&core-record-class
&core-nil-class
&core-fn-class
```

that's why you can call `(.fract 1.1)` to run `(&number:fract 1.1)` since `1` is treated like `(:: &core-number-class 1)` when passing to method syntax.

The cost of this syntax is the code related are always initialized when Calcit run, even all of the method syntaxes not actually called.

### Some old materials

- Dev log(中文) https://github.com/calcit-lang/calcit/discussions/44
- Dev log in video(中文) https://www.bilibili.com/video/BV1Ky4y137cv
