# General Evaluation Output Panel

function() {
  tabPanelBody("tabpan_Gen_output"
           , sidebarLayout(
             sidebarPanel(
               width = 5
               ,h2("NBC Evaluation Results")
               # Metadata
               , p(strong("Analyst name:"), textOutput("output_analyst", inline = T)
                   , style = "font-size:20px;")
               , p(strong("Date (YYYY-MM-DD):"), Sys.Date(), style = "font-size:20px;")
               , p(strong("Chosen AU:"), textOutput("output_AU_choice1", inline = T)
                   , style = "font-size:20px;")
               , p(strong("AU Area (Sq Mi):"), textOutput("output_Area_SQ_MI", inline = T)
                   , style = "font-size:20px;")
               # Land evaluation
               , p(strong("Natural land cover answer:"), textOutput("output_Nat_Land_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_Nat_Land_choice2")
               , htmlOutput("output_LC_Results2")
               # Ag evaluation
               , p(strong("Ag land cover answer:"), textOutput("output_Ag_Land_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_Ag_Land_choice2")
               , htmlOutput("output_Ag_Results2")
               # , br()
               , p(strong("Dam influence answer:"), textOutput("output_Dam_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_Dam_choice2")
               , htmlOutput("output_dam_count2")
               # , br()
               , p(strong("Point source influence answer:"), textOutput("output_PtSrc_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_PtSrc_choice2")
               , htmlOutput("output_ptsrc_counts2")
               # , br()
               , p(strong("Water withdrawal influence answer:"), textOutput("output_Withdrawal_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_Withdrawal_choice2")
               , htmlOutput("output_pctZone2_2")
               # , br()
               # Temperature
               , p(strong("Temperature influences:"), style = "font-size:20px;")
               , p(strong("Temperature critieria violation answer:"), textOutput("output_tempcrit_choice1", inline = T)
                   , style = "font-size:15px;")
               , htmlOutput("output_tempcrit_choice2")
               , p(strong("Temperature isolated spikes answer:"), textOutput("output_tempspike_choice1", inline = T)
                   , style = "font-size:15px;")
               , htmlOutput("output_tempspike_choice2")
               , p(strong("Impervious land cover influence answer:"), textOutput("output_imperv_choice1", inline = T)
                   , style = "font-size:15px;")
               , htmlOutput("output_imperv_choice2")
               
               # DO
               , p(strong("DO influences:"), style = "font-size:20px;")
               , p(strong("DO isolated spikes answer:"), textOutput("output_dospike_choice1", inline = T)
                   , style = "font-size:15px;")
               , htmlOutput("output_dospike_choice2")
               , p(strong("DO diurnal shift answer:"), textOutput("output_dodiurnal_choice1", inline = T)
                   , style = "font-size:15px;")
               , htmlOutput("output_dodiurnal_choice2")
               , p(strong("DO Wetland LC influence answer:"), textOutput("output_wetland1_choice1", inline = T)
                   , style = "font-size:15px;")
               , htmlOutput("output_wetland1_choice2")
               # TP
               , p(strong("TP lithology influence answer:"), textOutput("output_geoTP_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_geoTP_choice2")
               
               # pH
               , p(strong("pH wetland LC influence answer:"), textOutput("output_wetland2_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_wetland2_choice2")
               
               # Metals
               , p(strong("Metals lithology influence answer:"), textOutput("output_geoMetal_choice1", inline = T)
                   , style = "font-size:20px;")
               , htmlOutput("output_geoMetal_choice2")
               
               # Notes
               , p(strong("General notes:"), style = "font-size:20px;")
               , textOutput("output_notes")
               
               # NBC Determination
               , p(strong("NBC determination:"), style = "font-size:20px;")
               , textOutput("output_NBC_auto")
               , selectInput(inputId = "input_NBC_choice"
                            ,label = "Is the water quality condition a result of NBC?"
                            ,choices = c("","Yes","No")) # selectInput
               , p(strong(textOutput("output_NBC_choice", inline = T))
                   , style = "font-size:20px;")
               
               
               ) # sidebarPanel
             
             , mainPanel(
               #https://github.com/dreamRs/capture
               capture::capture(selector = "div.col-sm-5" #body
                                 , filename = "NBC_Eval_Results.png"
                                 , icon("camera-retro")
                                 , "Take screenshot of results"
                                 , class = "btn-primary")

             ) # mainPanel
           ) # sidebarLayout
  )##tabPanelBody ~ END
}##FUNCTION ~ END