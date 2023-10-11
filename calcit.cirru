
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
  :entries $ {}
  :files $ {}
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544873875614) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1624469709435) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1624469715390) (:by |rJG4IHzWf) (:text |=)
                  |D $ %{} :Leaf (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1624469701389) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env)
                      |T $ %{} :Leaf (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode")
                      |b $ %{} :Leaf (:at 1652241850652) (:by |rJG4IHzWf) (:text "|\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Expr (:at 1584874661674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1584874662518) (:by |rJG4IHzWf) (:text |and)
                      |T $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                      |j $ %{} :Expr (:at 1584874663522) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Expr (:at 1697048220358) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1697048221298) (:by |rJG4IHzWf) (:text |nth)
                              |T $ %{} :Leaf (:at 1584874665829) (:by |rJG4IHzWf) (:text |op)
                              |b $ %{} :Leaf (:at 1697048222126) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1518156276516) (:by |root) (:text |println)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1648958387899) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1648958387899) (:by |rJG4IHzWf) (:text |register-languages!)
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1636914348413) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636914349962) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636914352112) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yO $ %{} :Expr (:at 1646150039456) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped)
                  |T $ %{} :Leaf (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |b $ %{} :Leaf (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000)
                  |h $ %{} :Leaf (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1648634362331) (:by |rJG4IHzWf) (:text |;)
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |r $ %{} :Expr (:at 1697048261222) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1697048261774) (:by |rJG4IHzWf) (:text |::)
                              |L $ %{} :Leaf (:at 1697048262210) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                              |T $ %{} :Expr (:at 1518157527987) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1624469412598) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |j $ %{} :Leaf (:at 1518157531240) (:by |root) (:text |raw)
              |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1697048268304) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |n $ %{} :Expr (:at 1646150052705) (:by |rJG4IHzWf)
                :data $ {}
              |r $ %{} :Expr (:at 1646150152124) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646150154932) (:by |rJG4IHzWf) (:text |js/console.log)
                  |b $ %{} :Leaf (:at 1646150157857) (:by |rJG4IHzWf) (:text "|\"persist")
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1626201152815) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1626201163076) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1626201191606) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1626201192115) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1626201192626) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1626201164538) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201161775) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1614750747553) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1507461699387) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461702453) (:by |root) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1507461704162) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461706990) (:by |root) (:text |reset!)
                          |j $ %{} :Leaf (:at 1507461708965) (:by |root) (:text |*reel)
                          |r $ %{} :Expr (:at 1507461710020) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461730190) (:by |root) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1507461719097) (:by |root) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1507461721870) (:by |root) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1507461722724) (:by |root) (:text |updater)
                      |y $ %{} :Expr (:at 1626777542168) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1626201203433) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!)
                      |b $ %{} :Leaf (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error")
                      |j $ %{} :Leaf (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                      |n $ %{} :Leaf (:at 1648585564758) (:by |rJG4IHzWf) (:text |schema/docs)
                  |v $ %{} :Leaf (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1648704877144) (:by |rJG4IHzWf) (:text |docs-workflow.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1626201173819) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1626290808117) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!)
                |z $ %{} :Expr (:at 1648958370272) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1648958377540) (:by |rJG4IHzWf) (:text |docs-workflow.config)
                    |b $ %{} :Leaf (:at 1648958378538) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1648958378837) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1648958383342) (:by |rJG4IHzWf) (:text |register-languages!)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |docs $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1646491858255) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1646491860967) (:by |rJG4IHzWf) (:text |def)
              |b $ %{} :Leaf (:at 1646491858255) (:by |rJG4IHzWf) (:text |docs)
              |h $ %{} :Expr (:at 1646491858255) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646491862770) (:by |rJG4IHzWf) (:text |[])
                  |X $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1648806407786) (:by |rJG4IHzWf) (:text "|\"Introduction")
                      |h $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1648806287213) (:by |rJG4IHzWf) (:text |:intro)
                      |l $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1648806282295) (:by |rJG4IHzWf) (:text "|\"intro.md")
                      |o $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |[])
                              |b $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806416476) (:by |rJG4IHzWf) (:text "|\"Overview")
                                  |h $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806421374) (:by |rJG4IHzWf) (:text |:overview)
                                  |l $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806570410) (:by |rJG4IHzWf) (:text "|\"intro/overview.md")
                              |h $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806428142) (:by |rJG4IHzWf) (:text "|\"From Clojure")
                                  |h $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806434507) (:by |rJG4IHzWf) (:text |:from-clojure)
                                  |l $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806573378) (:by |rJG4IHzWf) (:text "|\"intro/from-clojure.md")
                              |l $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806451682) (:by |rJG4IHzWf) (:text "|\"Indentation Syntax")
                                  |h $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806456795) (:by |rJG4IHzWf) (:text |:indentation-syntax)
                                  |l $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806411926) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806411926) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806576475) (:by |rJG4IHzWf) (:text "|\"intro/indentation-syntax.md")
                  |a $ %{} :Expr (:at 1648806468947) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1648806468947) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1648806468947) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648806468947) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1648806472878) (:by |rJG4IHzWf) (:text "|\"Installation")
                      |h $ %{} :Expr (:at 1648806468947) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648806468947) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1648806480935) (:by |rJG4IHzWf) (:text |:installation)
                      |l $ %{} :Expr (:at 1648806468947) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648806468947) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1648806468947) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648806468947) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1648806484205) (:by |rJG4IHzWf) (:text "|\"installation.md")
                      |o $ %{} :Expr (:at 1648806468947) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648806468947) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1648806468947) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648806468947) (:by |rJG4IHzWf) (:text |[])
                              |b $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text "|\"Modules directory")
                                  |h $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806633416) (:by |rJG4IHzWf) (:text |:modules)
                                  |l $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806635304) (:by |rJG4IHzWf) (:text "|\"installation/modules.md")
                              |h $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806531175) (:by |rJG4IHzWf) (:text "|\"Rust bindings")
                                  |h $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806537665) (:by |rJG4IHzWf) (:text |:ffi-bindings)
                                  |l $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806584992) (:by |rJG4IHzWf) (:text "|\"installation/ffi-bindings.md")
                              |l $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1685610983065) (:by |rJG4IHzWf) (:text "|\"GitHub Actions")
                                  |h $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1685610986871) (:by |rJG4IHzWf) (:text |:github-actions)
                                  |l $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806521821) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806521821) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1685610994273) (:by |rJG4IHzWf) (:text "|\"installation/github-actions.md")
                  |e $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1648806374626) (:by |rJG4IHzWf) (:text "|\"Run Calcit")
                      |h $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1648806368449) (:by |rJG4IHzWf) (:text |:run)
                      |l $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1648806366765) (:by |rJG4IHzWf) (:text "|\"run.md")
                      |o $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |[])
                              |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806664476) (:by |rJG4IHzWf) (:text "|\"Run in Eval mode")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806670954) (:by |rJG4IHzWf) (:text |:eval)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806676696) (:by |rJG4IHzWf) (:text "|\"run/eval.md")
                              |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806694311) (:by |rJG4IHzWf) (:text "|\"CLI Options")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806695724) (:by |rJG4IHzWf) (:text |:cli-options)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806698095) (:by |rJG4IHzWf) (:text "|\"run/cli-options.md")
                              |j $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1678484622533) (:by |rJG4IHzWf) (:text "|\"Load Deps")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1678484626899) (:by |rJG4IHzWf) (:text |:load-deps)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1678484633344) (:by |rJG4IHzWf) (:text "|\"run/load-deps.md")
                              |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806714292) (:by |rJG4IHzWf) (:text "|\"Hot Swapping")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806718024) (:by |rJG4IHzWf) (:text |:hot-swapping)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806720121) (:by |rJG4IHzWf) (:text "|\"run/hot-swapping.md")
                              |o $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806733575) (:by |rJG4IHzWf) (:text "|\"Bundle Mode")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806735209) (:by |rJG4IHzWf) (:text |:bundle-mode)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806737644) (:by |rJG4IHzWf) (:text "|\"run/bundle-mode.md")
                              |q $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1680109015900) (:by |rJG4IHzWf) (:text "|\"Entries")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1680109019385) (:by |rJG4IHzWf) (:text |:entries)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1680109023058) (:by |rJG4IHzWf) (:text "|\"run/entries.md")
                  |j $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1648806757894) (:by |rJG4IHzWf) (:text "|\"Data")
                      |h $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1648806759784) (:by |rJG4IHzWf) (:text |:data)
                      |l $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1648806772166) (:by |rJG4IHzWf) (:text "|\"data.md")
                      |o $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |[])
                              |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806777443) (:by |rJG4IHzWf) (:text "|\"Persistent Data")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806778743) (:by |rJG4IHzWf) (:text |:persistent-data)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806781747) (:by |rJG4IHzWf) (:text "|\"data/persistent-data.md")
                              |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1650021751576) (:by |rJG4IHzWf) (:text "|\"EDN")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1650021753773) (:by |rJG4IHzWf) (:text |:edn)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1650021758520) (:by |rJG4IHzWf) (:text "|\"data/edn.md")
                  |n $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1648806831002) (:by |rJG4IHzWf) (:text "|\"Features")
                      |h $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1648806865017) (:by |rJG4IHzWf) (:text |:features)
                      |l $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1648806833902) (:by |rJG4IHzWf) (:text "|\"features.md")
                      |o $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |[])
                              |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806837985) (:by |rJG4IHzWf) (:text "|\"List")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806840936) (:by |rJG4IHzWf) (:text |:list)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806855620) (:by |rJG4IHzWf) (:text "|\"features/list.md")
                              |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806881097) (:by |rJG4IHzWf) (:text "|\"HashMap")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806883660) (:by |rJG4IHzWf) (:text |:hashmap)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806886377) (:by |rJG4IHzWf) (:text "|\"features/hashmap.md")
                              |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806893418) (:by |rJG4IHzWf) (:text "|\"Macros")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806898016) (:by |rJG4IHzWf) (:text |:macros)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806900037) (:by |rJG4IHzWf) (:text "|\"features/macros.md")
                              |o $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806906002) (:by |rJG4IHzWf) (:text "|\"js interop")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806910885) (:by |rJG4IHzWf) (:text |:js-interop)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806913670) (:by |rJG4IHzWf) (:text "|\"features/js-interop.md")
                              |q $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806927707) (:by |rJG4IHzWf) (:text "|\"Imports")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806931854) (:by |rJG4IHzWf) (:text |:imports)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806940907) (:by |rJG4IHzWf) (:text "|\"features/imports.md")
                              |s $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |{})
                                  |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title)
                                      |b $ %{} :Leaf (:at 1648806952707) (:by |rJG4IHzWf) (:text "|\"Polymorphism")
                                  |h $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key)
                                      |b $ %{} :Leaf (:at 1648806954322) (:by |rJG4IHzWf) (:text |:polymorphism)
                                  |l $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content)
                                      |b $ %{} :Expr (:at 1648806658267) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc)
                                          |b $ %{} :Leaf (:at 1648806955897) (:by |rJG4IHzWf) (:text "|\"features/polymorphism.md")
                  |o $ %{} :Expr (:at 1697048980201) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1697048981134) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1697048981517) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697048983293) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1697048992414) (:by |rJG4IHzWf) (:text "|\"Structural Editor")
                      |h $ %{} :Expr (:at 1697048988154) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697048989132) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1697048997763) (:by |rJG4IHzWf) (:text |:structural-editor)
                      |l $ %{} :Expr (:at 1697049000310) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697049001582) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1697049003290) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1697049003290) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1697049007925) (:by |rJG4IHzWf) (:text "|\"structural-editor.md")
                      |o $ %{} :Expr (:at 1697049009675) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697049014773) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1697049015159) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1697049015340) (:by |rJG4IHzWf) (:text |[])
                  |q $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title)
                          |b $ %{} :Leaf (:at 1648806970346) (:by |rJG4IHzWf) (:text "|\"Ecosystem")
                      |h $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key)
                          |b $ %{} :Leaf (:at 1648806971684) (:by |rJG4IHzWf) (:text |:ecosystem)
                      |l $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content)
                          |b $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc)
                              |b $ %{} :Leaf (:at 1648806972842) (:by |rJG4IHzWf) (:text "|\"ecosystem.md")
                      |o $ %{} :Expr (:at 1648705062222) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children)
                          |b $ %{} :Expr (:at 1648806967049) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1648806967355) (:by |rJG4IHzWf) (:text |[])
        |load-doc $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1646492039492) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1646492046361) (:by |rJG4IHzWf) (:text |defmacro)
              |b $ %{} :Leaf (:at 1646492039492) (:by |rJG4IHzWf) (:text |load-doc)
              |h $ %{} :Expr (:at 1646492039492) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646492043321) (:by |rJG4IHzWf) (:text |filename)
              |l $ %{} :Expr (:at 1646492047430) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1646492049914) (:by |rJG4IHzWf) (:text |read-file)
                  |b $ %{} :Expr (:at 1646492050611) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1646492051158) (:by |rJG4IHzWf) (:text |str)
                      |b $ %{} :Leaf (:at 1646492054009) (:by |rJG4IHzWf) (:text "|\"docs/")
                      |h $ %{} :Leaf (:at 1646492057193) (:by |rJG4IHzWf) (:text |filename)
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1697048230345) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1697048243752) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1697048245753) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1697048246029) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1697048248054) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1697048248289) (:by |rJG4IHzWf) (:text |s)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1697048249623) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1697048251827) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Leaf (:at 1697048251108) (:by |rJG4IHzWf) (:text |d)
                  |u $ %{} :Expr (:at 1697048235966) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1697048238272) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1697048236814) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697048236814) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1697048236814) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1697048241473) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1697048236814) (:by |rJG4IHzWf) (:text "|\"unknown op:")
                              |h $ %{} :Leaf (:at 1697048236814) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1697048236814) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
  :ir $ {} (:package |app)
    :files $ {}
      |app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |j $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1624469709435) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1624469715390) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                  |D $ {} (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                  |T $ {} (:at 1624469701389) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                      |T $ {} (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode") (:type :leaf)
                      |b $ {} (:at 1652241850652) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1545933382603) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1518157345496) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1518157327696) (:by |root) (:text |site) (:type :leaf)
              |r $ {} (:at 1518157327696) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1518157346643) (:by |root) (:text |{}) (:type :leaf)
                  |yf $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow") (:type :leaf)
        :ns $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788237503) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788237503) (:by |root) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
      |app.main $ {}
        :defs $ {}
          |*reel $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1507399777531) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1507399778895) (:by |root) (:text |->) (:type :leaf)
                  |T $ {} (:at 1507399776350) (:by |root) (:text |reel-schema/reel) (:type :leaf)
                  |j $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507401405076) (:by |root) (:text |:base) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
                  |r $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507399793097) (:by |root) (:text |:store) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op-data) (:type :leaf)
              |t $ {} (:at 1547437686766) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1547437687530) (:by |root) (:text |when) (:type :leaf)
                  |L $ {} (:at 1584874661674) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584874662518) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                      |T $ {} (:at 1547437691006) (:by |root) (:text |config/dev?) (:type :leaf)
                      |j $ {} (:at 1584874663522) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1584874665829) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |r $ {} (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                  |T $ {} (:at 1518156274050) (:by |root) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1518156276516) (:by |root) (:text |println) (:type :leaf)
                      |r $ {} (:at 1547437698992) (:by |root) (:text "|\"Dispatch:") (:type :leaf)
                      |v $ {} (:at 1518156280471) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1584780634192) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1507399899641) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1507399884621) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399887573) (:by |root) (:text |reel-updater) (:type :leaf)
                      |j $ {} (:at 1507399888500) (:by |root) (:text |updater) (:type :leaf)
                      |r $ {} (:at 1507399891576) (:by |root) (:text |@*reel) (:type :leaf)
                      |v $ {} (:at 1507399892687) (:by |root) (:text |op) (:type :leaf)
                      |x $ {} (:at 1507399894594) (:by |root) (:text |op-data) (:type :leaf)
          |main! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |main!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |s $ {} (:at 1648958387899) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1648958387899) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
              |t $ {} (:at 1544874433785) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544874434638) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1544874440404) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544874440190) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
              |v $ {} (:at 1636914348413) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636914349962) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1636914352112) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!) (:type :leaf)
              |x $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1507399915531) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                          |j $ {} (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |yD $ {} (:at 1507461684494) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507461739167) (:by |root) (:text |listen-devtools!) (:type :leaf)
                  |j $ {} (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k) (:type :leaf)
                  |r $ {} (:at 1507461693919) (:by |root) (:text |dispatch!) (:type :leaf)
              |yL $ {} (:at 1518157357847) (:by |root) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener) (:type :leaf)
                  |r $ {} (:at 1518157458163) (:by |root) (:text ||beforeunload) (:type :leaf)
                  |v $ {} (:at 1612344221583) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1612344222530) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612344223520) (:by |rJG4IHzWf) (:text |event) (:type :leaf)
                      |T $ {} (:at 1612344224533) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yO $ {} (:at 1646150039456) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped) (:type :leaf)
                  |T $ {} (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval) (:type :leaf)
                  |b $ {} (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000) (:type :leaf)
                  |h $ {} (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yP $ {} (:at 1518157492640) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1648634362331) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1518157495438) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1518157495644) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157495826) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157496930) (:by |root) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1518157497615) (:by |root) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem) (:type :leaf)
                              |r $ {} (:at 1518157506313) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1527788293499) (:by |root) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1518157514334) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1533919640958) (:by |rJG4IHzWf) (:text |when) (:type :leaf)
                      |j $ {} (:at 1518157515117) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157515786) (:by |root) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1518157516878) (:by |root) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1518157521635) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157523818) (:by |root) (:text |dispatch!) (:type :leaf)
                          |j $ {} (:at 1518157669936) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                          |r $ {} (:at 1518157527987) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624469412598) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1518157531240) (:by |root) (:text |raw) (:type :leaf)
              |yT $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text "||App started.") (:type :leaf)
          |mount-target $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469553191) (:by |rJG4IHzWf) (:text |.!querySelector) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text ||.app) (:type :leaf)
          |persist-storage! $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |n $ {} (:at 1646150052705) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |r $ {} (:at 1646150152124) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646150154932) (:by |rJG4IHzWf) (:text |js/console.log) (:type :leaf)
                  |b $ {} (:at 1646150157857) (:by |rJG4IHzWf) (:text "|\"persist") (:type :leaf)
              |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem) (:type :leaf)
                  |r $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store) (:type :leaf)
                          |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel) (:type :leaf)
          |reload! $ {} (:at 1626201152815) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |D $ {} (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |L $ {} (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!) (:type :leaf)
              |P $ {} (:at 1626201163076) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |T $ {} (:at 1626201191606) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1626201192115) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1626201192626) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |T $ {} (:at 1626201164538) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201161775) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                      |r $ {} (:at 1507461699387) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461702453) (:by |root) (:text |clear-cache!) (:type :leaf)
                      |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                                  |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |x $ {} (:at 1507461704162) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461706990) (:by |root) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1507461708965) (:by |root) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1507461710020) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507461730190) (:by |root) (:text |refresh-reel) (:type :leaf)
                              |j $ {} (:at 1507461719097) (:by |root) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1507461721870) (:by |root) (:text |schema/store) (:type :leaf)
                              |v $ {} (:at 1507461722724) (:by |root) (:text |updater) (:type :leaf)
                      |y $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~") (:type :leaf)
                          |r $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"Ok") (:type :leaf)
                  |j $ {} (:at 1626201203433) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                      |b $ {} (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error") (:type :leaf)
                      |j $ {} (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1507400119272) (:by |root) (:text |@*reel) (:type :leaf)
                      |n $ {} (:at 1648585564758) (:by |rJG4IHzWf) (:text |schema/docs) (:type :leaf)
                  |v $ {} (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1499755354983) (:type :expr)
              :data $ {}
                |T $ {} (:at 1499755354983) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1499755354983) (:by |root) (:text |clear-cache!) (:type :leaf)
                |v $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1648704877144) (:by |rJG4IHzWf) (:text |docs-workflow.comp.container) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                |y $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1508556737455) (:by |root) (:text |app.updater) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
                |yT $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:by |root) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1507399674125) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399678694) (:by |root) (:text |reel.util) (:type :leaf)
                    |r $ {} (:at 1507399680625) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399680857) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1518156292092) (:by |root) (:text |listen-devtools!) (:type :leaf)
                |yr $ {} (:at 1507399683930) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399687162) (:by |root) (:text |reel.core) (:type :leaf)
                    |r $ {} (:at 1507399688098) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399688322) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507399691010) (:by |root) (:text |reel-updater) (:type :leaf)
                        |q $ {} (:at 1518156288482) (:by |root) (:text |refresh-reel) (:type :leaf)
                |yv $ {} (:at 1507399715229) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399717674) (:by |root) (:text |reel.schema) (:type :leaf)
                    |r $ {} (:at 1507399755750) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1507399757678) (:by |root) (:text |reel-schema) (:type :leaf)
                |yy $ {} (:at 1527788302920) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1527788304925) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788306048) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788306884) (:by |root) (:text |config) (:type :leaf)
                |yyT $ {} (:at 1626201173819) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                |yyj $ {} (:at 1626290808117) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                |z $ {} (:at 1648958370272) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1648958377540) (:by |rJG4IHzWf) (:text |docs-workflow.config) (:type :leaf)
                    |b $ {} (:at 1648958378538) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1648958378837) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1648958383342) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |docs $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646491860967) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:text |docs) (:type :leaf)
              |h $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646491862770) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |X $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648806407786) (:by |rJG4IHzWf) (:text "|\"Introduction") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648806287213) (:by |rJG4IHzWf) (:text |:intro) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648806282295) (:by |rJG4IHzWf) (:text "|\"intro.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806416476) (:by |rJG4IHzWf) (:text "|\"Overview") (:type :leaf)
                                  |h $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806421374) (:by |rJG4IHzWf) (:text |:overview) (:type :leaf)
                                  |l $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806570410) (:by |rJG4IHzWf) (:text "|\"intro/overview.md") (:type :leaf)
                              |h $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806428142) (:by |rJG4IHzWf) (:text "|\"From Clojure") (:type :leaf)
                                  |h $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806434507) (:by |rJG4IHzWf) (:text |:from-clojure) (:type :leaf)
                                  |l $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806573378) (:by |rJG4IHzWf) (:text "|\"intro/from-clojure.md") (:type :leaf)
                              |l $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806451682) (:by |rJG4IHzWf) (:text "|\"Indentation Syntax") (:type :leaf)
                                  |h $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806456795) (:by |rJG4IHzWf) (:text |:indentation-syntax) (:type :leaf)
                                  |l $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806411926) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806576475) (:by |rJG4IHzWf) (:text "|\"intro/indentation-syntax.md") (:type :leaf)
                  |a $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648806472878) (:by |rJG4IHzWf) (:text "|\"Installation") (:type :leaf)
                      |h $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648806480935) (:by |rJG4IHzWf) (:text |:installation) (:type :leaf)
                      |l $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648806484205) (:by |rJG4IHzWf) (:text "|\"installation.md") (:type :leaf)
                      |o $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648806468947) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text "|\"Modules directory") (:type :leaf)
                                  |h $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806633416) (:by |rJG4IHzWf) (:text |:modules) (:type :leaf)
                                  |l $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806635304) (:by |rJG4IHzWf) (:text "|\"installation/modules.md") (:type :leaf)
                              |h $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806531175) (:by |rJG4IHzWf) (:text "|\"Rust bindings") (:type :leaf)
                                  |h $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806537665) (:by |rJG4IHzWf) (:text |:ffi-bindings) (:type :leaf)
                                  |l $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806584992) (:by |rJG4IHzWf) (:text "|\"installation/ffi-bindings.md") (:type :leaf)
                              |l $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1685610983065) (:by |rJG4IHzWf) (:text "|\"GitHub Actions") (:type :leaf)
                                  |h $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1685610986871) (:by |rJG4IHzWf) (:text |:github-actions) (:type :leaf)
                                  |l $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806521821) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1685610994273) (:by |rJG4IHzWf) (:text "|\"installation/github-actions.md") (:type :leaf)
                  |e $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648806374626) (:by |rJG4IHzWf) (:text "|\"Run Calcit") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648806368449) (:by |rJG4IHzWf) (:text |:run) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648806366765) (:by |rJG4IHzWf) (:text "|\"run.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806664476) (:by |rJG4IHzWf) (:text "|\"Run in Eval mode") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806670954) (:by |rJG4IHzWf) (:text |:eval) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806676696) (:by |rJG4IHzWf) (:text "|\"run/eval.md") (:type :leaf)
                              |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806694311) (:by |rJG4IHzWf) (:text "|\"CLI Options") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806695724) (:by |rJG4IHzWf) (:text |:cli-options) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806698095) (:by |rJG4IHzWf) (:text "|\"run/cli-options.md") (:type :leaf)
                              |j $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1678484622533) (:by |rJG4IHzWf) (:text "|\"Load Deps") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1678484626899) (:by |rJG4IHzWf) (:text |:load-deps) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1678484633344) (:by |rJG4IHzWf) (:text "|\"run/load-deps.md") (:type :leaf)
                              |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806714292) (:by |rJG4IHzWf) (:text "|\"Hot Swapping") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806718024) (:by |rJG4IHzWf) (:text |:hot-swapping) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806720121) (:by |rJG4IHzWf) (:text "|\"run/hot-swapping.md") (:type :leaf)
                              |o $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806733575) (:by |rJG4IHzWf) (:text "|\"Bundle Mode") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806735209) (:by |rJG4IHzWf) (:text |:bundle-mode) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806737644) (:by |rJG4IHzWf) (:text "|\"run/bundle-mode.md") (:type :leaf)
                              |q $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1680109015900) (:by |rJG4IHzWf) (:text "|\"Entries") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1680109019385) (:by |rJG4IHzWf) (:text |:entries) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1680109023058) (:by |rJG4IHzWf) (:text "|\"run/entries.md") (:type :leaf)
                  |j $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648806757894) (:by |rJG4IHzWf) (:text "|\"Data") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648806759784) (:by |rJG4IHzWf) (:text |:data) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648806772166) (:by |rJG4IHzWf) (:text "|\"data.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806777443) (:by |rJG4IHzWf) (:text "|\"Persistent Data") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806778743) (:by |rJG4IHzWf) (:text |:persistent-data) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806781747) (:by |rJG4IHzWf) (:text "|\"data/persistent-data.md") (:type :leaf)
                              |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1650021751576) (:by |rJG4IHzWf) (:text "|\"EDN") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1650021753773) (:by |rJG4IHzWf) (:text |:edn) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1650021758520) (:by |rJG4IHzWf) (:text "|\"data/edn.md") (:type :leaf)
                  |n $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648806831002) (:by |rJG4IHzWf) (:text "|\"Features") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648806865017) (:by |rJG4IHzWf) (:text |:features) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648806833902) (:by |rJG4IHzWf) (:text "|\"features.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806837985) (:by |rJG4IHzWf) (:text "|\"List") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806840936) (:by |rJG4IHzWf) (:text |:list) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806855620) (:by |rJG4IHzWf) (:text "|\"features/list.md") (:type :leaf)
                              |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806881097) (:by |rJG4IHzWf) (:text "|\"HashMap") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806883660) (:by |rJG4IHzWf) (:text |:hashmap) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806886377) (:by |rJG4IHzWf) (:text "|\"features/hashmap.md") (:type :leaf)
                              |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806893418) (:by |rJG4IHzWf) (:text "|\"Macros") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806898016) (:by |rJG4IHzWf) (:text |:macros) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806900037) (:by |rJG4IHzWf) (:text "|\"features/macros.md") (:type :leaf)
                              |o $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806906002) (:by |rJG4IHzWf) (:text "|\"js interop") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806910885) (:by |rJG4IHzWf) (:text |:js-interop) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806913670) (:by |rJG4IHzWf) (:text "|\"features/js-interop.md") (:type :leaf)
                              |q $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806927707) (:by |rJG4IHzWf) (:text "|\"Imports") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806931854) (:by |rJG4IHzWf) (:text |:imports) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806940907) (:by |rJG4IHzWf) (:text "|\"features/imports.md") (:type :leaf)
                              |s $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648806952707) (:by |rJG4IHzWf) (:text "|\"Polymorphism") (:type :leaf)
                                  |h $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648806954322) (:by |rJG4IHzWf) (:text |:polymorphism) (:type :leaf)
                                  |l $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648806658267) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648806955897) (:by |rJG4IHzWf) (:text "|\"features/polymorphism.md") (:type :leaf)
                  |q $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648806970346) (:by |rJG4IHzWf) (:text "|\"Ecosystem") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648806971684) (:by |rJG4IHzWf) (:text |:ecosystem) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648806972842) (:by |rJG4IHzWf) (:text "|\"ecosystem.md") (:type :leaf)
                      |o $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648806967049) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648806967355) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
          |load-doc $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646492046361) (:by |rJG4IHzWf) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
              |h $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492043321) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
              |l $ {} (:at 1646492047430) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492049914) (:by |rJG4IHzWf) (:text |read-file) (:type :leaf)
                  |b $ {} (:at 1646492050611) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1646492051158) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                      |b $ {} (:at 1646492054009) (:by |rJG4IHzWf) (:text "|\"docs/") (:type :leaf)
                      |h $ {} (:at 1646492057193) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
          |store $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1584781004285) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584781007287) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584781007486) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1584874633844) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |v $ {} (:at 1519489491135) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1519489492110) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1627849233602) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |l $ {} (:at 1627849235240) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1627849235639) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1627849235881) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1627849236652) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1627849247340) (:by |rJG4IHzWf) (:text "|\"unknown op:") (:type :leaf)
                          |r $ {} (:at 1627849241947) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                      |r $ {} (:at 1627849245294) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |n $ {} (:at 1507399852251) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399855618) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1584874625235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                          |j $ {} (:at 1584874628374) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1584874632002) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |t $ {} (:at 1518157547521) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157657108) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                      |j $ {} (:at 1584874637339) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1584874614885) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1584874616720) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1584874621524) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
