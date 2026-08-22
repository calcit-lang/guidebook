# Modules directory

Packages are managed with `caps` command, which wraps `git clone` and `git pull` to manage modules.

Configuration inside `calcit.cirru`:

```cirru
:configs $ {}
  :modules $ [] |memof/calcit.cirru |lilac/
```

Paths defined in `:modules` field are loaded from `~/.config/calcit/modules/`, for example `~/.config/calcit/modules/memof/calcit.cirru`.

Modules that end with `/` are automatically resolved to their `calcit.cirru` entry file.

To load modules in CI environments, make use of `caps --ci`.
