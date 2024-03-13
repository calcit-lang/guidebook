# GitHub Actions

To load Calcit `0.8.41` in a Ubuntu container:

```yaml
- uses: calcit-lang/setup-cr@0.0.3
  with:
    version: '0.8.41'
```

Latest release could be found on https://github.com/calcit-lang/setup-cr/releases/ .

It also can be installed from prebuilt Ubuntu binaries:

```yaml
- uses: supplypike/setup-bin@v3
  with:
    uri: "https://github.com/calcit-lang/calcit/releases/download/0.8.41/cr"
    name: "cr"
    version: "0.8.41"

- uses: supplypike/setup-bin@v3
  with:
    uri: "https://github.com/calcit-lang/calcit/releases/download/0.8.41/caps"
    name: "caps"
    version: "0.8.41"
```

Then to load packages defined in `package.cirru` with `caps`:

```bash
caps --ci
```

The JavaScript dependency lives in `package.json`:

```js
"@calcit/procs": "^0.8.41"
```

Up to date example can be found on https://github.com/calcit-lang/respo-calcit-workflow/blob/main/.github/workflows/upload.yaml#L11 .
