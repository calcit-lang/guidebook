# Imports

```
ns app.demo
  :require
    app.lib :as lib
    app.lib :refer $ f1 f2
    |chalk :default chalk
```

`:default` is a special rule for loading `Module.default` from ES6 modules.
