# GitHub Actions

Calcit does not provide an action for Calcit, but the binaries can be installed from prebuilt Ubuntu binaries. For example to load Calcit `0.8.6` in a Ubuntu container:

```yaml
- uses: actions/setup-node@v3
  with:
    node-version: 20
    cache: "yarn"

- uses: supplypike/setup-bin@v3
  with:
    uri: "https://github.com/calcit-lang/calcit/releases/download/0.8.6/cr"
    name: "cr"
    version: "0.8.6"

- uses: supplypike/setup-bin@v3
  with:
    uri: "https://github.com/calcit-lang/calcit/releases/download/0.8.6/caps"
    name: "caps"
    version: "0.8.6"
```

Then to load packages defined in `package.cirru` with `caps`:

```bash
caps --ci
```

The JavaScript dependency lives in `package.json`:

```js
"@calcit/procs": "^0.8.6"
```

Up to date example can be found on https://github.com/calcit-lang/respo-calcit-workflow/blob/main/.github/workflows/upload.yaml#L11 .
