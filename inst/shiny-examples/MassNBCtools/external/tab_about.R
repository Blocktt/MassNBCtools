# About Panel

function(){
  tabPanelBody("tabpan_about",
           sidebarLayout(
             sidebarPanel(
               img(src = "MassDEPlogo.png", height = 200)
               , width = 2
             )# sidebarPanel~END
             , mainPanel(
               includeHTML("www/App_Background.html")
             )# mainPanel~END
           )# sidebarLayout~END
  ) # tabPanelBody~END
}# FUNCTION~END