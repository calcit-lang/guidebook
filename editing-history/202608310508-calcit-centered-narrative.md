# 统一 Calcit 自身设计叙事 / Unify the Calcit-centered narrative

## 中文

- 将 introduction、overview 与 features 改为直接介绍 nominal struct/enum、traits/methods、Option/Result、静态分析、typed FFI 与跨 backend 语义。
- 新增以 Calcium Workflow 为参考的实时应用模型，说明串行 updater、Respo/Recollect projection、revision/ack/resync 与有界异步。
- 将 `from-clojure` 页面降级为历史影响和迁移提示，删除“Calcit 是 dialect”的身份式表述。
- 清理 Tag、macro、Cirru source 等辅助页面中的不必要类比；EDN 来源与具体语法迁移提示继续保留。
- 升级 Calcit 0.13.68 与 docs-workflow 0.0.25，迁移 `load-doc` 的严格 `:fs-read` 宏契约，并用 `match` 替代已退役的 `tag-match`。
- Actions 增加 `caps --strict --ci` 与完整 Snapshot/分析守门，同时保留 `setup-calcit` 的供应链固定 SHA。

## English

- Reframe the introduction, overview, and features around nominal structs/enums, traits/methods, Option/Result, static analysis, typed FFI, and cross-backend semantics.
- Add a Calcium Workflow-centered realtime application model covering the serial updater, Respo/Recollect projection, revision/ack/resync, and bounded async work.
- Reduce `from-clojure` to historical influence and concrete migration notes, removing the identity-level dialect claim.
- Remove unnecessary comparisons from Tag, macro, and Cirru source pages while retaining EDN provenance and concrete syntax migration warnings.
- Upgrade to Calcit 0.13.68 and docs-workflow 0.0.25, migrate `load-doc` to a strict `:fs-read` macro contract, and replace retired `tag-match` with `match`.
- Add `caps --strict --ci` and complete Snapshot/analysis gates in Actions while retaining the supply-chain-pinned `setup-calcit` SHA.
