# General Evaluation Input Panel

function() {
  tabPanelBody("tabpan_Gen_input"
           , sidebarLayout(
             sidebarPanel(
               width = 3
               # Analyst Name
               ,textInput(inputId = "input_analyst"
                         ,label = "Analyst Name:"
                         ,placeholder = "Type your name here!")
               # Choose AU
               ,selectizeInput(inputId = "input_AU_choice"
                               , label = "Assessment Unit (AU):"
                               , choices = NULL)
               # Q: Land cover
               ,selectInput(inputId = "input_Nat_Land_choice"
                            ,label = "Is natural land cover below NBC thresholds?"
                            ,choices = c("","Yes","No")) # selectInput
               , htmlOutput("output_LC_Results1")
               , br()
               # Q: Ag Cover
               ,selectInput(inputId = "input_Ag_Land_choice"
                            ,label = "Is agricultural land cover above NBC thresholds?"
                            ,choices = c("","Yes","No")) # selectInput
               , htmlOutput("output_Ag_Results1")
               , br()
               # Q: Dams
               ,selectInput(inputId = "input_Dam_choice"
                            ,label = "Are dams present that likely alter NBC?"
                            ,choices = c("","Yes","No")) # selectInput
               , htmlOutput("output_dam_count1")
               , br()
               # Q: Point sources
               ,selectInput(inputId = "input_PtSrc_choice"
                            ,label = "Are point source discharges present that likely alter NBC?"
                            ,choices = c("","Yes","No")) # selectInput
               , htmlOutput("output_ptsrc_counts1")
               , br()
               # Q: Water Withdrawal
               ,selectInput(inputId = "input_Withdrawal_choice"
                            ,label = "Are water withdrawals present that likely alter NBC?"
                            ,choices = c("","Yes","No")) # selectInput
               , htmlOutput("output_pctZone2_1")
               , br()
               # Notes
               ,textInput(inputId = "input_notes"
                          ,label = "General Notes:"
                          ,placeholder = "Type any additional notes here!")
               #https://github.com/dreamRs/capture
               ,capture::capture(selector = "body"
                                 , filename = "all-page.png"
                                 , icon("camera-retro")
                                 , "Take screenshot of entire page"
                                 , class = "btn-primary")
               , br()
               ,capture::capture(selector = "#mymap"
                                 , filename = "mymap.png"
                                 , icon("camera-retro")
                                 , "Take screenshot of map only"
                                 , class = "btn-info")
               ,img(src = "Map_Legend.png", height = 200)
               
             ) # sidebarPanel
             , mainPanel(
               width = 9
               , DT::dataTableOutput("input_DT")
               , leafletOutput("mymap", height = 600)
             ) # mainPanel
           ) # sidebarLayout
  )##tabPanelBody ~ END
}##FUNCTION ~ END