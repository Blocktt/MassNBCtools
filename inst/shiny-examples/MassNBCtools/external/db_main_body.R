
# Main

function(id) {
  
  tabItems(
    tabItem(tabName = "tab_about", tab_code_about())
    , tabItem(tabName = "tab_FAQ", tab_code_FAQ())
    , tabItem(tabName = "tab_contact", tab_code_contact())
    # General Evaluation
    , tabItem(tabName = "tab_Gen_input", tab_code_Gen_input())
    , tabItem(tabName = "tab_Gen_output", tab_code_Gen_output())
    
    # Parameter specifics
    , tabItem(tabName = "tab_Gen_temp", tab_code_Gen_temp())
    , tabItem(tabName = "tab_Gen_DO", tab_code_Gen_DO())
    , tabItem(tabName = "tab_Gen_TP", tab_code_Gen_TP())
    , tabItem(tabName = "tab_Gen_pH", tab_code_Gen_pH())
    , tabItem(tabName = "tab_Gen_metal", tab_code_Gen_metal())
    )## tabItems
  
}## FUNCTION ~ END