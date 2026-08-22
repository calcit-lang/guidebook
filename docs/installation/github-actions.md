# GitHub Actions

To load the current Calcit release in a Ubuntu container:

```yaml
- uses: calcit-lang/setup-calcit@v1
```

The action installs the current Calcit release. See the setup-calcit repository for supported options.

Then to load packages defined in `deps.cirru` with `caps`:

```bash
caps --ci
```

The JavaScript dependency lives in `package.json`:

```js
"@calcit/procs": "^0.13.29"
```

Up to date example can be found on https://github.com/calcit-lang/respo-calcit-workflow/blob/main/.github/workflows/upload.yaml#L11 .
