
{} (:package |docs-workflow)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
    :version |0.0.1
  :entries $ {}
  :files $ {}
    |app.schema $ {}
      :ns $ quote (ns app.schema)
      :defs $ {}
        |store $ quote
          def store $ {}
            :states $ {}
              :cursor $ []
        |docs $ quote
          def docs $ []
            {} (:title "\"Introduction") (:key :intro)
              :content $ load-doc "\"intro.md"
              :children $ []
                {} (:title "\"Overview") (:key :overview)
                  :content $ load-doc "\"intro/overview.md"
                {} (:title "\"From Clojure") (:key :from-clojure)
                  :content $ load-doc "\"intro/from-clojure.md"
                {} (:title "\"Indentation Syntax") (:key :indentation-syntax)
                  :content $ load-doc "\"intro/indentation-syntax.md"
            {} (:title "\"Installation") (:key :installation)
              :content $ load-doc "\"installation.md"
              :children $ []
                {} (:title "\"Modules directory") (:key :modules)
                  :content $ load-doc "\"installation/modules.md"
                {} (:title "\"Rust bindings") (:key :ffi-bindings)
                  :content $ load-doc "\"installation/ffi-bindings.md"
            {} (:title "\"Run Calcit") (:key :run)
              :content $ load-doc "\"run.md"
              :children $ []
                {} (:title "\"Run in Eval mode") (:key :eval)
                  :content $ load-doc "\"run/eval.md"
                {} (:title "\"CLI Options") (:key :cli-options)
                  :content $ load-doc "\"run/cli-options.md"
                {} (:title "\"Hot Swapping") (:key :hot-swapping)
                  :content $ load-doc "\"run/hot-swapping.md"
                {} (:title "\"Bundle Mode") (:key :bundle-mode)
                  :content $ load-doc "\"run/bundle-mode.md"
            {} (:title "\"Data") (:key :data)
              :content $ load-doc "\"data.md"
              :children $ []
                {} (:title "\"Persistent Data") (:key :persistent-data)
                  :content $ load-doc "\"data/persistent-data.md"
            {} (:title "\"Features") (:key :features)
              :content $ load-doc "\"features.md"
              :children $ []
                {} (:title "\"List") (:key :list)
                  :content $ load-doc "\"features/list.md"
                {} (:title "\"HashMap") (:key :hashmap)
                  :content $ load-doc "\"features/hashmap.md"
                {} (:title "\"Macros") (:key :macros)
                  :content $ load-doc "\"features/macros.md"
                {} (:title "\"js interop") (:key :js-interop)
                  :content $ load-doc "\"features/js-interop.md"
                {} (:title "\"Imports") (:key :imports)
                  :content $ load-doc "\"features/imports.md"
                {} (:title "\"Polymorphism") (:key :polymorphism)
                  :content $ load-doc "\"features/polymorphism.md"
            {} (:title "\"Ecosystem") (:key :ecosystem)
              :content $ load-doc "\"ecosystem.md"
              :children $ []
        |load-doc $ quote
          defmacro load-doc (filename)
            read-file $ str "\"docs/" filename
    |app.updater $ {}
      :ns $ quote
        ns app.updater $ :require
          respo.cursor :refer $ update-states
      :defs $ {}
        |updater $ quote
          defn updater (store op data op-id op-time)
            case-default op
              do (println "\"unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
    |app.main $ {}
      :ns $ quote
        ns app.main $ :require
          respo.core :refer $ render! clear-cache!
          docs-workflow.comp.container :refer $ comp-container
          app.updater :refer $ updater
          app.schema :as schema
          reel.util :refer $ listen-devtools!
          reel.core :refer $ reel-updater refresh-reel
          reel.schema :as reel-schema
          app.config :as config
          "\"./calcit.build-errors" :default build-errors
          "\"bottom-tip" :default hud!
          "\"highlight.js" :default hljs
          "\"highlight.js/lib/languages/bash" :default bash-lang
          "\"highlight.js/lib/languages/clojure" :default clojure-lang
      :defs $ {}
        |render-app! $ quote
          defn render-app! () $ render! mount-target (comp-container @*reel schema/docs) dispatch!
        |persist-storage! $ quote
          defn persist-storage! () (js/console.log "\"persist")
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
        |mount-target $ quote
          def mount-target $ .!querySelector js/document |.app
        |*reel $ quote
          defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
        |main! $ quote
          defn main! () (.!registerLanguage hljs "\"clojure" clojure-lang) (.!registerLanguage hljs "\"bash" bash-lang)
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            flipped js/setInterval 60000 persist-storage!
            ; let
                raw $ js/localStorage.getItem (:storage-key config/site)
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println "\"Dispatch:" op
            reset! *reel $ reel-updater updater @*reel op op-data
        |reload! $ quote
          defn reload! () $ if (nil? build-errors)
            do (remove-watch *reel :changes) (clear-cache!)
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              reset! *reel $ refresh-reel @*reel schema/store updater
              hud! "\"ok~" "\"Ok"
            hud! "\"error" build-errors
    |app.config $ {}
      :ns $ quote (ns app.config)
      :defs $ {}
        |dev? $ quote
          def dev? $ = "\"dev" (get-env "\"mode")
        |site $ quote
          def site $ {} (:storage-key "\"workflow")
