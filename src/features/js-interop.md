# JavaScript Interop

To access JavaScript global value:

```
js/window.innerWidth
```

To access property of an object:

```
.-name obj
```

To call a method of an object, slightly different from Clojure:

```
.!setItem js/localStorage |key |value
```

To construct an array:

```
let
    a $ js-array 1 2
  .!push a 3 4
  , a
```

To construct an object:

```
js-object
  :a 1
  :b 2
```

To create new instance from an object:

```
new js/Date
```
