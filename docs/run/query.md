# Querying Definitions

Calcit provides a powerful `query` subcommand to inspect code, find definitions, and analyze usages directly from the command line.

## Core Query Commands

### List Namespaces (`ns`)

```bash
# List all loaded namespaces
calcit query ns

# Show definitions in a specific namespace
calcit query ns calcit.core
```

### Read Code (`def`)

```bash
# Show full source code of a definition
calcit query def calcit.core/assoc
```

### Peek Signature (`peek`)

```bash
# Show documentation and examples without the full body
calcit query peek calcit.core/map
```

### Check Examples (`examples`)

```bash
# Extract only the examples section
calcit query examples calcit.core/let
```

### Find Symbol (`find`)

```bash
# Search for a symbol across ALL loaded namespaces
calcit query find assoc
```

### Analyze Usages (`usages`)

```bash
# Find where a specific definition is used
calcit query usages app.main/main!
```

### Search Text (`search`)

```bash
# Search for raw text (leaf values) across project
calcit query search hello

# Limit to one definition
calcit query search hello -f app.main/main!
```

### Search Expressions (`search-expr`)

```bash
# Search structural expressions (Cirru pattern)
calcit query search-expr "fn (x)"

# Limit to one definition
calcit query search-expr "fn (x)" -f app.main/main!
```

## Quick Recipes (for fast locating)

### Locate a symbol and jump to definition

```bash
calcit query find assoc
calcit query def calcit.core/assoc
```

### Locate all call sites before refactor

```bash
calcit query usages app.main/main!
```

### Locate by text when you only remember a fragment

```bash
calcit query search "reload"
```

## Runtime Code Inspection

You can also use built-in functions to inspect live data and definitions:

```cirru
let
    Point $ defstruct Point (:x :number) (:y :number)
    p (%{} Point (:x 1) (:y 2))
  do
    ; Get all methods/traits implemented by a value
    println $ &methods-of p
    ; Get tag name of a record or enum
    println $ &record:get-name p
    ; Describe any value's internal type
    println $ &inspect-type p
```

### Getting Help

Use `calcit query --help` for the full list of available query subcommands.
