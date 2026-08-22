# Bundle Mode

Calcit programs are primarily designed to be written using the [calcit-editor](http://github.com/calcit-lang/editor), a structural editor.

You can also try short code snippets in eval mode:

```bash
calcit calcit.cirru eval '+ 1 2'
# => 3
```

If you prefer to write Calcit code without the calcit-editor, that's possible too. See the example in [minimal-calcit](https://github.com/calcit-lang/minimal-calcit).

For current source and migration guidance, use `calcit docs read upgrade --full`. The current Calcit workflow reads `calcit.cirru` directly; legacy bundle and compact-file commands are no longer part of the normal workflow.
