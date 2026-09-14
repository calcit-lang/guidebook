
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site (app.types/SiteConfig :storage-key |workflow)
          :examples $ []
          :schema $ :: 'app.types/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'app.types/Op 'docs-workflow.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ js/console.log |Dispatch: op
            let
                typed-op $ assert-type op 'Enum
                control $ typed/decode-control typed-op
              reset! *reel $ assert-type
                match control
                  (:some action) (typed/apply-control updater @*reel action)
                  (:none)
                    typed/record-op updater @*reel (assert-type typed-op 'app.types/Op) (generate-id!)
                      :timestamp $ shared/date-now-snapshot
                :: 'reel.typed/State 'app.types/Op 'docs-workflow.schema/Store
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!)
            println |Running_mode: $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            browser/set-before-unload! $ fn (event) (persist-storage!)
            browser/set-interval! persist-storage! 60000
            match
              browser/storage-get $ :storage-key config/site
              (:some raw)
                match
                  types/decode-store $ parse-cirru-edn raw
                  (:some stored)
                    dispatch! $ types/Op :hydrate-storage stored
                  (:none) (hud! |error |Ignored_invalid_saved_state)
              (:none) &unit
            println |App_started.
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel schema/docs) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            docs-workflow.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools! generate-id!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            reel.typed :as typed
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            app.types :as types
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'docs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def docs
            []
              {} (:title |Introduction) (:key :intro)
                :content $ load-doc |intro.md
                :children $ []
                  {} (:title |Overview) (:key :overview)
                    :content $ load-doc |intro/overview.md
                  {} (:title "|From Clojure") (:key :from-clojure)
                    :content $ load-doc |intro/from-clojure.md
                  {} (:title "|Indentation Syntax") (:key :indentation-syntax)
                    :content $ load-doc |intro/indentation-syntax.md
              {} (:title |Installation) (:key :installation)
                :content $ load-doc |installation.md
                :children $ []
                  {} (:title "|Modules directory") (:key :modules)
                    :content $ load-doc |installation/modules.md
                  {} (:title "|Rust bindings") (:key :ffi-bindings)
                    :content $ load-doc |installation/ffi-bindings.md
                  {} (:title "|GitHub Actions") (:key :github-actions)
                    :content $ load-doc |installation/github-actions.md
              {} (:title "|Run Calcit") (:key :run)
                :content $ load-doc |run.md
                :children $ []
                  {} (:title "|Run in Eval mode") (:key :eval)
                    :content $ load-doc |run/eval.md
                  {} (:title "|CLI Options") (:key :cli-options)
                    :content $ load-doc |run/cli-options.md
                  {} (:title "|Load Deps") (:key :load-deps)
                    :content $ load-doc |run/load-deps.md
                  {} (:title "|Hot Swapping") (:key :hot-swapping)
                    :content $ load-doc |run/hot-swapping.md
                  {} (:title "|Bundle Mode") (:key :bundle-mode)
                    :content $ load-doc |run/bundle-mode.md
                  {} (:title |Entries) (:key :entries)
                    :content $ load-doc |run/entries.md
              {} (:title |Data) (:key :data)
                :content $ load-doc |data.md
                :children $ []
                  {} (:title "|Persistent Data") (:key :persistent-data)
                    :content $ load-doc |data/persistent-data.md
                  {} (:title |EDN) (:key :edn)
                    :content $ load-doc |data/edn.md
              {} (:title |Features) (:key :features)
                :content $ load-doc |features.md
                :children $ []
                  {} (:title |List) (:key :list)
                    :content $ load-doc |features/list.md
                  {} (:title |HashMap) (:key :hashmap)
                    :content $ load-doc |features/hashmap.md
                  {} (:title |Macros) (:key :macros)
                    :content $ load-doc |features/macros.md
                  {} (:title "|js interop") (:key :js-interop)
                    :content $ load-doc |features/js-interop.md
                  {} (:title |Imports) (:key :imports)
                    :content $ load-doc |features/imports.md
                  {} (:title |Polymorphism) (:key :polymorphism)
                    :content $ load-doc |features/polymorphism.md
              {} (:title "|Structural Editor") (:key :structural-editor)
                :content $ load-doc |structural-editor.md
                :children $ []
              {} (:title |Ecosystem) (:key :ecosystem)
                :content $ load-doc |ecosystem.md
                :children $ []
          :examples $ []
          :schema $ :: 'List 'docs-workflow.schema/DocNode
        'load-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-doc (filename)
            read-file $ str |docs/ filename
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] $ :: 'Expr 'String
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            docs-workflow.schema/Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ :: 'docs-workflow.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:states 'List 'Dynamic) (:hydrate-storage 'docs-workflow.schema/Store)
          :examples $ []
          :schema $ :: 'EnumDef
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:storage-key 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (data)
            if
              or (map? data) (struct? data)
              match (get data :states)
                (:some states)
                  if (map? states)
                    %some $ docs-workflow.schema/Store :states $ assert-type states 'Map
                    %none
                (:none) (%none)
              %none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
            :return $ :: 'Option 'docs-workflow.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.types
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor data)
                assoc store :states $ assert-type
                  update-states (:states store) cursor data
                  , 'Map
              (:hydrate-storage data) data
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'docs-workflow.schema/Store)
            :args $ [] 'docs-workflow.schema/Store 'app.types/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
