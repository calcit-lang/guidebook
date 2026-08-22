# Load Dependencies

`caps` command is used for downloading dependencies declared in `deps.cirru`. The name "caps" stands for "Calcit Dependencies".

`deps.cirru` declares dependencies, which correspond to repositories on GitHub. Specify a branch or a tag:

```cirru
{}
  :calcit-version |0.13.29
  :dependencies $ {}
    |calcit-lang/memof |0.0.26
    |calcit-lang/lilac |0.5.2
```

Run `caps` to download. Sources are downloaded into `~/.config/calcit/modules/`. If a module contains `build.sh`, it will be executed mostly for compiling Rust dylibs.

To load modules, use the `:modules` configuration in `calcit.cirru`:

```cirru
:configs $ {}
  :modules $ [] |memof/calcit.cirru |lilac/
```

Paths defined in `:modules` field are loaded from `~/.config/calcit/modules/`, such as `~/.config/calcit/modules/memof/calcit.cirru`.

Modules ending with `/` resolve to their `calcit.cirru` entry file.

### Outdated

To check outdated modules, run:

```bash
caps outdated
```

### CLI Options

```
caps --help
Usage: caps [<input>] [-v] [--pull-branch] [--ci] [--local-debug] [<command>] [<args>]

Top-level command.

Positional Arguments:
  input             input file

Options:
  -v, --verbose     verbose mode
  --pull-branch     pull branch in the repo
  --ci              CI mode loads shallow repo via HTTPS
  --local-debug     debug mode, clone to test-modules/
  --help, help      display usage information

Commands:
  outdated          show outdated versions
  download          download named packages with org/repo@branch
```

- "pull branch" to fetch update if only branch name is specified like `main`.
- "ci" does not support `git@` protocol, only `https://` protocol.
