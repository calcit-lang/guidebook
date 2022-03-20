# Imports

Calcit loads namespaces from `compact.cirru` and modules from `~/.config/calcit/modules/`. It's using 2 rules:

```
ns app.demo
  :require
    app.lib :as lib
    app.lib :refer $ f1 f2
```

By using `:as`, it's loading a namespace as `lib`, then access a definition like `lib/f1`. By using `:refer`, it's importing the definition.

### JavaScript imports

Imports for JavaScript is similar,

```
ns app.demo
  :require
    app.lib :as lib
    app.lib :refer $ f1 f2
```

after it compiles, the namespace is eliminated, and ES Modules import syntax is generated:

```js
import * as $calcit from "./calcit.core";
import * as $app_DOT_lib from "app.lib"; // also it will generate `$app_DOT_lib.f1` for `lib/f1`
import { f1, f2 } from "app.lib";
```

There's an extra `:default` rule for loading `Module.default`.

```
ns app.demo
  :require
    app.lib :as lib
    app.lib :refer $ f1 f2

    |chalk :default chalk
```

which generates:

```js
// ...

import chalk from "chalk";
```
