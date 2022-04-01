# JavaScript Interop

To access JavaScript global value:

```cirru
do js/window.innerWidth
```

To access property of an object:

```cirru
.-name obj
```

To call a method of an object, slightly different from Clojure:

```cirru
.!setItem js/localStorage |key |value
```

> To be noticed: `(.m a p1 p2)` is calling an internal implementation of polymorphism in Calcit.

To construct an array:

```cirru
let
    a $ js-array 1 2
  .!push a 3 4
  , a
```

To construct an object:

```cirru
js-object
  :a 1
  :b 2
```

To create new instance from a constructor:

```cirru
new js/Date
```
