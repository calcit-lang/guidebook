# Run in Eval mode

use `--eval` or `-e` to eval code from CLI:

```bash
$ cr eval 'echo |demo'
1
took 0.07ms: nil
```

```
$ cr eval 'echo "|spaced string demo"'
spaced string demo
took 0.074ms: nil
```

You may also run multiple snippets:

```
=>> cr eval '
-> (range 10)
  map $ fn (x)
    * x x
'
calcit version: 0.5.25
took 0.199ms: ([] 0 1 4 9 16 25 36 49 64 81)
```
