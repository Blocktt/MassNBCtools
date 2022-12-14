#Sidebar----
#sb_main <- function(id) {
function(id) {
  dashboardSidebar(
    width = 275
    , HTML("&nbsp;&nbsp;<font size=5><b>Steps</b></font>")
    , sidebarMenu(id = id
                  , menuItem(text = "About"
                             , tabName = "tab_about"
                             , icon = icon("home", lib = "glyphicon")
                  )## menuItem ~ About ~ END
                  , menuItem(text = "Water Temperature"
                             , icon = icon("list", lib = "glyphicon")
                             , tabName = "tab_watertemp"
                             , menuSubItem("Select AU // Summary Results"
                                           , tabName = "tab_temp_AU"
                                           , icon = icon("exclamation-sign", lib = "glyphicon"))
                             , menuSubItem("Temperature Criterion"
                                           , tabName = "tab_temp_crit"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Land Cover"
                                           , tabName = "tab_temp_LC"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Point Sources"
                                           , tabName = "tab_temp_pointsrc"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Water Withdrawals"
                                           , tabName = "tab_temp_withdrwl"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Dams"
                                           , tabName = "tab_temp_dams"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Temperature Spikes"
                                           , tabName = "tab_temp_spike"
                                           , icon = icon("cog", lib = "glyphicon"))
                  )## menuItem ~ Temperature
                  , menuItem(text = "Dissolved Oxygen"
                             , icon = icon("list", lib = "glyphicon")
                             , tabName = "tab_DO"
                             , menuSubItem("Step 1: Site selection"
                                           , tabName = "tab_DO_site"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Step 2:"
                                           , tabName = "tab_DO_disturb"
                                           , icon = icon("cog", lib = "glyphicon"))
                  )## menuItem ~ DO
                  , menuItem(text = "pH"
                             , icon = icon("list", lib = "glyphicon")
                             , tabName = "tab_pH"
                             , menuSubItem("Step 1: Site selection"
                                           , tabName = "tab_pH_site"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Step 2:"
                                           , tabName = "tab_pH_disturb"
                                           , icon = icon("cog", lib = "glyphicon"))
                  )## menuItem ~ pH
                  , menuItem(text = "Total Phosphorus"
                             , icon = icon("list", lib = "glyphicon")
                             , tabName = "tab_pH"
                             , menuSubItem("Step 1: Site selection"
                                           , tabName = "tab_TP_site"
                                           , icon = icon("cog", lib = "glyphicon"))
                             , menuSubItem("Step 2:"
                                           , tabName = "tab_TP_disturb"
                                           , icon = icon("cog", lib = "glyphicon"))
                  )## menuItem ~ TP
    )## sidebarMenu ~ END
  )## dashboardSidebar ~ END
}## FUNCTION ~ END