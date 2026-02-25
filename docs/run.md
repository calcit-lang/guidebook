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

By default, Calcit runs once and exits. To keep watching, pass `-w` / `--watch`:

```bash
cr -w
cr --watch compact.cirru
```

`--once` / `-1` is still supported for compatibility:

```bash
cr -1
```

For full option details, see [CLI Options](./run/cli-options.md).

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

To enable watching for JavaScript emit:

```bash
cr js -w
```

### Generating IR

To generate IR (Intermediate Representation):

```bash
cr ir
```

To enable watching for IR emit:

```bash
cr ir -w
```

### Markdown snippet checking

See [CLI Options](./run/cli-options.md#markdown-code-checking) for full `check-md` usage.
