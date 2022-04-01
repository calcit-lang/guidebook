# List

Calcit List is persistent vector that wraps on [ternary-Tree](https://github.com/calcit-lang/ternary-tree.rs) in Rust, which is 2-3 tree with optimization trick from [fingertrees](https://en.wikipedia.org/wiki/Finger_tree).

In JavaScript, it's [ternary-tree](https://github.com/calcit-lang/ternary-tree.ts) in older version, but also with a extra [`CalcitSliceList`](https://github.com/calcit-lang/calcit/blob/main/ts-src/js-list.ts#L112) for optimizing. `CalcitSliceList` is fast and cheap in append-only cases, but might be bad for GC in complicated cases.

But overall, it's slower since it's always immutable at API level.

### Usage

Build a list:

```
[] 1 2 3
```

consume a list:

```
let
    xs $ [] 1 2 3 4
    xs2 $ append xs 5
    xs3 $ conj xs 5 6
    xs4 $ prepend xs 0
    xs5 $ slice xs 1 2
    xs6 $ take xs 3

  println $ count xs

  println $ nth xs 0

  println $ get xs 0

  println $ map xs $ fn (x) $ + x 1

  &doseq (x xs) (println a)
```

thread macros are often used in transforming lists:

```
-> (range 10)
  filter $ fn (x) $ > x 5
  map $ fn (x) $ pow x 2
```

### Why not just Vector from rpds?

Vector is fast operated at tail. In Clojure there are `List` and `Vector` serving 2 different usages. Calcit wants to use a unified structure to reduce brain overhead.

It is possible to extend foreign data types via FFI, but not made yet.
