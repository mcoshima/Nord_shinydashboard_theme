# Nord_shinydashboard_theme
A customized shinydashboard theme based on the Nord color palette.

### Installation:

```R
library(devtools)
install_github("nik01010/dashboardthemes")
library(dashboardthemes)
```

### To use: 

Create a new script with your custom theme and/or logo. Then at the top of the app.R file (or in UI file), source the script.

`source("./Covid19Dash/theme_diy.R")`

To add a custom logo to dashboard 

```R
 ### calling custom logo object in shinydashboard
    ...
    ### ui
    ui <- dashboardPage(
      
      ### ui header
      dashboardHeader(
    
        ### changing logo
        title = logo_blue_gradient
        ...
```

To add a custom theme

```R
### calling custom theme object in shinydashboard
    ...
    ### ui body
    dashboardBody(
      
      ### changing theme
      theme_blue_gradient
      
      ### ui tabs
      ,tabItems(
        tabItem(
          ...
```

#### Sources 

Based on the [dashboardthemes](https://github.com/nik01010/dashboardthemes) package by nik01010 and the [Nord color palette](https://www.nordtheme.com/docs/colors-and-palettes).

