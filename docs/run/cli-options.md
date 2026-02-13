# CLI Options

```bash
Usage: cr [<input>] [-1] [--disable-stack] [--skip-arity-check] [--warn-dyn-method] [--emit-path <emit-path>] [--init-fn <init-fn>] [--reload-fn <reload-fn>] [--entry <entry>] [--reload-libs] [--watch-dir <watch-dir>] [<command>] [<args>]

Top-level command.

Positional Arguments:
  input             input source file, defaults to "compact.cirru"

Options:
  -1, --once        skip watching mode, just run once
  --disable-stack   disable stack trace for errors
  --skip-arity-check
                    skip arity check in js codegen
  --warn-dyn-method
                    warn on dynamic method dispatch and trait-attachment diagnostics
  --emit-path       entry file path, defaults to "js-out/"
  --init-fn         specify `init_fn` which is main function
  --reload-fn       specify `reload_fn` which is called after hot reload
  --entry           specify with config entry
  --reload-libs     force reloading libs data during code reload
  --watch-dir       specify a path to watch assets changes
  --help            display usage information

Commands:
  js                emit JavaScript rather than interpreting
  ir                emit Cirru EDN representation of program to program-ir.cirru
  eval              run program
```

## Detailed Option Descriptions

### Input File

```bash
# Run default compact.cirru
cr

# Run specific file
cr demos/compact.cirru
```

### Run Once (--once / -1)

By default, `cr` watches for file changes and hot-reloads. Use `--once` to run once and exit:

```bash
cr --once
cr -1  # shorthand
```

### Error Stack Trace (--disable-stack)

Disables detailed stack traces in error messages, useful for cleaner output:

```bash
cr --disable-stack
```

### JS Codegen Options

**--skip-arity-check**: When generating JavaScript, skip arity checking (use cautiously):

```bash
cr js --skip-arity-check
```

**--emit-path**: Specify output directory for generated JavaScript:

```bash
cr js --emit-path dist/
```

### Dynamic Method Warnings (--warn-dyn-method)

Warn when dynamic method dispatch cannot be specialized at preprocess time, and surface related trait-attachment diagnostics:

```bash
cr --warn-dyn-method
```

### Hot Reloading Configuration

**--init-fn**: Override the main entry function:

```bash
cr --init-fn app.main/start!
```

**--reload-fn**: Specify function called after code reload:

```bash
cr --reload-fn app.main/on-reload!
```

**--reload-libs**: Force reload library data during hot reload (normally cached):

```bash
cr --reload-libs
```

### Config Entry (--entry)

Use specific config entry from `compact.cirru`:

```bash
cr --entry test
cr --entry production
```

### Asset Watching (--watch-dir)

Watch additional directories for changes (e.g., assets, styles):

```bash
cr --watch-dir assets/
cr --watch-dir styles/ --watch-dir images/
```

## Common Usage Patterns

```bash
# Development with hot reload
cr --reload-fn app.main/reload!

# Production build
cr js --once --emit-path dist/

# Testing without file watching
cr --once --init-fn app.test/run-tests!

# Debug mode with full stack traces
cr --reload-libs

# CI/CD environment
cr --once --disable-stack
```
