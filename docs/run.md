# Running Calcit

Calcit can be run in several different modes.

### Running a Program

To run a local `compact.cirru` file, simply use:

```bash
cr
```

This is equivalent to:

```bash
cr compact.cirru
```

By default, Calcit launches a watcher. If you want to run without the watcher, use:

```bash
cr -1
```

### Eval Mode

To quickly evaluate a snippet of code:

```bash
cr eval 'println "|Hello world"'
```

### Generating JavaScript

To generate JavaScript code:

```bash
cr js
```

To generate JavaScript only once (without the watcher):

```bash
cr js -1
```

### Generating IR

To generate IR (Intermediate Representation):

```bash
cr ir
```
