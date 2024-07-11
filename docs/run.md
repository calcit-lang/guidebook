# Run Calcit

There are several modes to run Calcit.

### Eval

```bash
cr eval 'println "Hello world"'
```

which is actually:

```bash
cr eval 'println "Hello world"'
```

### Run program

For a local `compact.cirru` file, run:

```bash
cr
```

by default, Calcit has watcher launched. If you want to run without a watcher, use:

```bash
cr -1
```

### Generating JavaScript

```cr
cr js
```

### Generating IR

```bash
cr ir
```
