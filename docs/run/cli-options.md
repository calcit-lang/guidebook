# CLI Options

```bash
$ cr --help
Calcit Runner 0.8.6
Jon. <jiyinyiyong@gmail.com>
Calcit Runner

USAGE:
    cr [FLAGS] [OPTIONS] [--] [input]

FLAGS:
        --emit-ir        emit EDN representation of program to program-ir.cirru
        --emit-js        emit js rather than interpreting
    -h, --help           Prints help information
    -1, --once           disable watching mode
        --reload-libs    reload libs data during code reload
    -V, --version        Prints version information

OPTIONS:
    -d, --dep <dep>...             add dependency
        --emit-path <emit-path>    emit directory for js, defaults to `js-out/`
        --entry <entry>            overwrite with config entry
    -e, --eval <eval>              eval a snippet
        --init-fn <init-fn>        overwrite `init_fn`
        --reload-fn <reload-fn>    overwrite `reload_fn`
        --watch-dir <watch-dir>    a folder of assets that also being watched

ARGS:
    <input>    entry file path, defaults to compact.cirru [default: compact.cirru]
```
