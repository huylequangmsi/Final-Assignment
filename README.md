# Final-Assignment

Modern Workflow in Data Science - Final Assignment

## 1. Introduction

This repository is created for the Final Assignment of the Modern Workflow in Data Science. The project aims at creating a ShinyApp to investigate people's attitude towards working mothers and jobs for immigrants. The dataset used in this project is the European Value Study 2017 (EVS 2017). The dataset can be obtained from [this website](https://search.gesis.org/research_data/ZA7500).

The repository consists of four Rmarkdown files:

- data_cleaning.R: to import, and clean data

- Shiny.Rmd: to create ShinyApp

- report.Rmd: to create downloadable reports based on selected inputs.

- Example.doc: a screenshot of the ShinyApp

## 2. Session Information

R version 4.0.1 (2020-06-06)
Platform: x86_64-w64-mingw32/x64 (64-bit)
Running under: Windows 10 x64 (build 18363)

Matrix products: default

locale:
[1] LC_COLLATE=English_Germany.1252  LC_CTYPE=English_Germany.1252    LC_MONETARY=English_Germany.1252
[4] LC_NUMERIC=C                     LC_TIME=English_Germany.1252    

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] threejs_0.3.3        igraph_1.2.5         shinydashboard_0.7.1 shiny_1.5.0          stargazer_5.2.2     
 [6] foreign_0.8-80       forcats_0.5.0        stringr_1.4.0        dplyr_1.0.0          purrr_0.3.4         
[11] readr_1.3.1          tidyr_1.1.0          tibble_3.0.1         ggplot2_3.3.1        tidyverse_1.3.0     

loaded via a namespace (and not attached):
 [1] Rcpp_1.0.4.6      lubridate_1.7.9   assertthat_0.2.1  digest_0.6.25     packrat_0.5.0     mime_0.9         
 [7] R6_2.4.1          cellranger_1.1.0  backports_1.1.7   reprex_0.3.0      evaluate_0.14     httr_1.4.1       
[13] pillar_1.4.4      rlang_0.4.6       readxl_1.3.1      rstudioapi_0.11   blob_1.2.1        rmarkdown_2.2    
[19] labeling_0.3      htmlwidgets_1.5.1 munsell_0.5.0     broom_0.7.0       compiler_4.0.1    httpuv_1.5.4     
[25] modelr_0.1.8      xfun_0.14         pkgconfig_2.0.3   base64enc_0.1-3   htmltools_0.5.0   tidyselect_1.1.0 
[31] fansi_0.4.1       crayon_1.3.4      dbplyr_1.4.4      withr_2.2.0       later_1.1.0.1     grid_4.0.1       
[37] jsonlite_1.6.1    xtable_1.8-4      gtable_0.3.0      lifecycle_0.2.0   DBI_1.1.0         magrittr_1.5     
[43] scales_1.1.1      cli_2.0.2         stringi_1.4.6     farver_2.0.3      fs_1.4.1          promises_1.1.1   
[49] xml2_1.3.2        ellipsis_0.3.1    generics_0.0.2    vctrs_0.3.1       Cairo_1.5-12.2    tools_4.0.1      
[55] glue_1.4.1        hms_0.5.3         crosstalk_1.1.0.1 rsconnect_0.8.16  fastmap_1.0.1     yaml_2.2.1       
[61] colorspace_1.4-1  rvest_0.3.5       knitr_1.28        haven_2.3.1      