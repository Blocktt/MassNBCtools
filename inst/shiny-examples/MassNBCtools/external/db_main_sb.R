#Sidebar----
#sb_main <- function(id) {
function(id) {
  dashboardSidebar(
    width = 275
    , HTML("&nbsp;&nbsp;<font size=5><b>Menu Options</b></font>")
    , sidebarMenu(id = id
                  , menuItem(text = "About"
                             , tabName = "tab_about"
                             , icon = icon("home", lib = "glyphicon")
                  )## menuItem ~ About ~ END
                  , menuItem(text = "Natural Background Evaluation"
                             , icon = icon("list", lib = "glyphicon")
                             , tabName = "tab_Gen"
                             , menuSubItem("Input: Land Evaluation"
                                           , tabName = "tab_Gen_input"
                                           , icon = icon("chevron-right"
                                                         , lib = "glyphicon"))
                             , menuSubItem("Input: Temperature"
                                           , tabName = "tab_Gen_temp"
                                           , icon = icon("plus-sign"
                                                         , lib = "glyphicon"))
                             , menuSubItem("Input: Dissolved Oxygen"
                                           , tabName = "tab_Gen_DO"
                                           , icon = icon("plus-sign"
                                                         , lib = "glyphicon"))
                             , menuSubItem("Input: Total Phosphorus"
                                           , tabName = "tab_Gen_TP"
                                           , icon = icon("plus-sign"
                                                         , lib = "glyphicon"))
                             , menuSubItem("Input: pH"
                                           , tabName = "tab_Gen_pH"
                                           , icon = icon("plus-sign"
                                                         , lib = "glyphicon"))
                             , menuSubItem("Input: Metals"
                                           , tabName = "tab_Gen_metal"
                                           , icon = icon("plus-sign"
                                                         , lib = "glyphicon"))
                             , menuSubItem("Output: Results and Download"
                                           , tabName = "tab_Gen_output"
                                           , icon = icon("cloud-download"
                                                         , lib = "glyphicon"))
                  )## menuItem ~ Gen Eval
                  , menuItem(text = "FAQ"
                             , tabName = "tab_FAQ"
                             , icon = icon("question-sign", lib = "glyphicon")
                  )## menuItem ~ About ~ END
                  , menuItem(text = "Contact"
                             , tabName = "tab_contact"
                             , icon = icon("envelope", lib = "glyphicon")
                  )## menuItem ~ About ~ END
    )## sidebarMenu ~ END
  )## dashboardSidebar ~ END
}## FUNCTION ~ END