# FAQ Panel

function(){
  tabPanelBody("tabpan_FAQ",
           sidebarLayout(
             sidebarPanel(
               img(src = "MassDEPlogo.png", height = 200)
               , width = 2
             )# sidebarPanel~END
             , mainPanel(
               includeHTML("www/App_FAQ.html")
             )# mainPanel~END
           )# sidebarLayout~END
  ) # tabPanelBody~END
}# FUNCTION~END