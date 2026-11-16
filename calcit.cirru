
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/ |js-ffi/
      :type-slots $ {} $ :dispatch-op 'docs-workflow.schema/Op
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site (app.types/SiteConfig :storage-key |workflow)
          :examples $ []
          :schema $ quote app.types/SiteConfig
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State docs-workflow.schema/Op docs-workflow.schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ println |Dispatch: op
            reset! *reel $ typed/record-op updater @*reel op (generate-id!)
              :timestamp $ shared/date-now-snapshot
            , &unit
          :examples $ []
          :schema $ quote $ Fn docs-workflow.schema/Op (-> Unit) (:features :js-ffi :state)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |a on-control!
            browser/set-interval! persist-storage! 60000
            println "|App started."
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            option:unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ quote browser/DomElementHost
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control)
            reset! *reel $ typed/apply-control updater @*reel control
            , &unit
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit) (:features :state)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            browser/storage-set! (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            match (browser/query-selector |.app)
              (:some element)
                render-with! (narrow-element element)
                  fn () $ comp-container @*reel
                    map schema/docs $ fn (raw) (decode-map-as raw docs-workflow.schema/DocNode)
                    , on-control!
                  , dispatch!
              (:none) (raise |Missing_app_mount_element)
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi :state)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            respo.ffi.browser :refer $ narrow-element
            docs-workflow.comp.container :refer $ comp-container
            docs-workflow.updater :refer $ updater
            app.schema :as schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            reel.typed :as typed
            reel.util :refer $ listen-devtools!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
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
                    :children $ []
                  {} (:title "|From Clojure") (:key :from-clojure)
                    :content $ load-doc |intro/from-clojure.md
                    :children $ []
                  {} (:title "|Indentation Syntax") (:key :indentation-syntax)
                    :content $ load-doc |intro/indentation-syntax.md
                    :children $ []
              {} (:title |Installation) (:key :installation)
                :content $ load-doc |installation.md
                :children $ []
                  {} (:title "|Modules directory") (:key :modules)
                    :content $ load-doc |installation/modules.md
                    :children $ []
                  {} (:title "|Rust bindings") (:key :ffi-bindings)
                    :content $ load-doc |installation/ffi-bindings.md
                    :children $ []
                  {} (:title "|GitHub Actions") (:key :github-actions)
                    :content $ load-doc |installation/github-actions.md
                    :children $ []
              {} (:title "|Run Calcit") (:key :run)
                :content $ load-doc |run.md
                :children $ []
                  {} (:title "|Run in Eval mode") (:key :eval)
                    :content $ load-doc |run/eval.md
                    :children $ []
                  {} (:title "|CLI Options") (:key :cli-options)
                    :content $ load-doc |run/cli-options.md
                    :children $ []
                  {} (:title "|Load Deps") (:key :load-deps)
                    :content $ load-doc |run/load-deps.md
                    :children $ []
                  {} (:title "|Hot Swapping") (:key :hot-swapping)
                    :content $ load-doc |run/hot-swapping.md
                    :children $ []
                  {} (:title "|Bundle Mode") (:key :bundle-mode)
                    :content $ load-doc |run/bundle-mode.md
                    :children $ []
                  {} (:title |Entries) (:key :entries)
                    :content $ load-doc |run/entries.md
                    :children $ []
              {} (:title |Data) (:key :data)
                :content $ load-doc |data.md
                :children $ []
                  {} (:title "|Persistent Data") (:key :persistent-data)
                    :content $ load-doc |data/persistent-data.md
                    :children $ []
                  {} (:title |EDN) (:key :edn)
                    :content $ load-doc |data/edn.md
                    :children $ []
              {} (:title |Features) (:key :features)
                :content $ load-doc |features.md
                :children $ []
                  {} (:title |List) (:key :list)
                    :content $ load-doc |features/list.md
                    :children $ []
                  {} (:title |HashMap) (:key :hashmap)
                    :content $ load-doc |features/hashmap.md
                    :children $ []
                  {} (:title |Macros) (:key :macros)
                    :content $ load-doc |features/macros.md
                    :children $ []
                  {} (:title "|js interop") (:key :js-interop)
                    :content $ load-doc |features/js-interop.md
                    :children $ []
                  {} (:title |Imports) (:key :imports)
                    :content $ load-doc |features/imports.md
                    :children $ []
                  {} (:title |Polymorphism) (:key :polymorphism)
                    :content $ load-doc |features/polymorphism.md
                    :children $ []
              {} (:title "|Structural Editor") (:key :structural-editor)
                :content $ load-doc |structural-editor.md
                :children $ []
              {} (:title |Ecosystem) (:key :ecosystem)
                :content $ load-doc |ecosystem.md
                :children $ []
          :examples $ []
          :schema $ quote $ List Dynamic
        'load-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-doc (filename)
            read-file $ str |docs/ filename
          :examples $ []
          :schema $ quote $ Macro (Expr String)
            -> $ Expr String
            :capabilities :fs-read
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            docs-workflow.schema/Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ quote docs-workflow.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.types $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:states List Dynamic) (:hydrate-storage docs-workflow.schema/Store)
          :examples $ []
          :schema $ quote EnumDef
        'SiteConfig $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct SiteConfig (:storage-key String)
          :examples $ []
          :schema $ quote StructDef
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.types
