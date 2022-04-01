# HashMap

In Rust it's using [rpds::HashTrieMap](https://docs.rs/rpds/0.10.0/rpds/#hashtriemap). And in JavaScript, it's built on top of [ternary-tree](https://github.com/calcit-lang/ternary-tree.ts) with some tricks for very small dicts.

### Usage

`{}` is a macro, you can quickly write in pairs:

```
{}
  :a 1
  :b 2
```

internally it's turned into a native function calling arguments:

```
&{} :a 1 :b 2
```

```
let
    dict $ {}
      :a 1
      :b 2
  println $ to-pairs dict
  println $ map-kv dict $ fn (k v)
    [] k (inc v)
```
