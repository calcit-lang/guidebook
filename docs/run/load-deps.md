# Load Dependencies

`caps` command is used for downloading dependencies declared in `package.cirru`. The name "caps" stands for "Calcit Dependencies".

`package.cirru` declares dependencies, which correspond to repositories on GitHub. Specify a branch or a tag:

```cirru
{}
  :dependencies $ {}
    |calcit-lang/memof |0.0.11
    |calcit-lang/lilac |main
```

Run `caps` to download. Sources are downloaded into `~/.config/calcit/modules/`. If a module contains `build.sh`, it will be executed mostly for compiling Rust dylibs.

To load modules, use `:modules` configuration in `calcit.cirru` and `compact.cirru`:

```cirru
:configs $ {}
  :modules $ [] |memof/compact.cirru |lilac/
```

Paths defined in `:modules` field are just loaded as files from `~/.config/calcit/modules/`, i.e. `~/.config/calcit/modules/memof/compact.cirru`.

Modules that ends with `/`s are automatically suffixed `compact.cirru` since it's the default filename.

### CLI Options

```
=>> caps --help
Calcit Deps 0.6.23
Jon. <jiyinyiyong@gmail.com>
Calcit Deps

USAGE:
    caps [OPTIONS] [input]

ARGS:
    <input>    entry file path [default: package.cirru]

OPTIONS:
        --ci             CI mode loads shallow repo via HTTPS
    -h, --help           Print help information
        --local-debug    Debug mode, clone to test-modules/
        --pull-branch    pull branch in the repo
    -v, --verbose        verbose mode
    -V, --version        Print version information
```

- "pull branch" to fetch update if only branch name is specified like `main`.
- "ci" does not support `git@` protocol, only `https://` protocol.
