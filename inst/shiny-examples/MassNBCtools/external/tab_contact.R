# Contact panel

function(){
  tabPanelBody("tabpan_contact",
           sidebarLayout(
             sidebarPanel(
               img(src = "MassDEPlogo.png", height = 200)
               , width = 2
             )# sidebarPanel~END
             , mainPanel(
               includeHTML("www/App_Contacts.html")
               , width = 7
             )# mainPanel~END
           )# sidebarLayout~END
  ) # tabPanelBody~END
}# FUNCTION~END