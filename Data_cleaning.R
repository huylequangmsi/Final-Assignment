## Load necessary package

library(tidyverse)
library(foreign)


## Load data

data_raw <- read.dta("G:/My Drive/IPSDS/Modern Workflow in Data Science/Assignments/Assignment-2/ZA7500_v3-0-0.dta/ZA7500_v3-0-0.dta")

## Clean data

# select variables of interest

vars <- c("country", "v72", "v80", "age", "v225", "v243_r")

data_final <- data_raw %>% 
    select(vars) %>% 
    filter(age >=0) %>% 
    filter(v72 == "agree strongly"| v72 == "agree"| 
               v72 == "disagree"| v72 == "disagree strongly") %>% 
    filter(v80 == "agree strongly"|v80 == "agree"|v80 == "neither agree nor disagree"|
               v80 == "disagree"|v80 == "disagree strongly") %>% 
    filter(v225 == "male"|v225 == "female") %>% 
    filter(v243_r == "lower"|v243_r == "medium"|v243_r == "higher") %>% 
    mutate(working_mom = as.numeric(v72),
           immigrant_job = as.numeric(v80),
           education = as.numeric(v243_r),
           male = ifelse(v225 == "male", 1, 0),
           male = factor(male,
                         labels = c("Female", "Male")),
           working_mom_fct = factor(working_mom,
                                    labels = c("agree strongly", "agree", 
                                               "disagree","disagree strongly")),
           immigrant_job_fct = factor(immigrant_job,
                                      labels = c("agree strongly", "agree", "neither agree nor disagree",
                                                 "disagree", "disagree strongly")),
           education_fct = factor(education,
                                  labels = c("lower", "medium", "higher")),
           working_mom = case_when(working_mom == 9 ~ 1,
                                   working_mom == 10 ~ 2,
                                   working_mom == 11 ~ 3,
                                   working_mom == 12 ~ 4),
           immigrant_job = case_when(immigrant_job == 9 ~ 1,
                                     immigrant_job == 10 ~ 2,
                                     immigrant_job == 11 ~ 3,
                                     immigrant_job == 12 ~ 4,
                                     immigrant_job == 13 ~ 5),
           education = case_when(education == 8 ~ 1,
                                 education == 9 ~ 2,
                                 education == 10 ~ 3))


summary(data_final)


# make smaller data for descriptive:

explore_data <- data_final %>% 
    select(-v72, -v80, -v225, -v243_r, -education)

## Graphs

# Working mom and age

explore_data %>% 
    ggplot(aes(x = age,
               y = working_mom))+
    stat_summary(fun.y = mean,
                 geom = "line",
                 color = "red")+
    ylim(1,4)+
    theme_bw()+
    labs(x = "Age",
         y = "Attitude towards working mothers",
         caption = "Age and the attitude towards working mothers. Data: EVS 2017")

# Working mom and gender

explore_data %>% 
    ggplot(aes(x = as.factor(male), 
               y = working_mom,
               color = male))+
    stat_summary(fun.y = mean,
                geom = "point")+
    ylim(1,4)+
    theme_bw()+
    labs(x = "Gender",
         y = "Attitude towards working mothers",
         caption = "Gender and the attitude towards working mothers. Data: EVS 2017",
         color = "Gender")
    

# Working mom and education

explore_data %>% 
    ggplot(aes(x = education_fct,
               y = working_mom,
               color = education_fct))+
    stat_summary(fun.y = mean,
                 geom = "point")+
    ylim(1,4)+
    theme_bw()+
    labs(x = "Education level",
         y = "Attitude towards working mothers",
         caption = "Education level and the attitude towards working mothers. Data: EVS 2017",
         color = "Education level")


# Immigrant job and age

explore_data %>% 
    ggplot(aes(x = age,
               y = immigrant_job))+
    stat_summary(fun.y = mean,
                 geom = "line",
                 color = "red")+
    ylim(1,5)+
    theme_bw()+
    labs(x = "Age",
         y = "Attitude towards jobs for immigrants",
         caption = "Age and the attitude towards jobs for immigrants. Data: EVS 2017")

# Immigrant job and gender

explore_data %>% 
    ggplot(aes(x = as.factor(male), 
               y = immigrant_job,
               color = male))+
    stat_summary(fun.y = mean,
                 geom = "point")+
    ylim(1,5)+
    theme_bw()+
    labs(x = "Gender",
         y = "Attitude towards jobs for immigrants",
         caption = "Gender and the attitude towards jobs for immigrants. Data: EVS 2017",
         color = "Gender")


# Immigrant job and education

explore_data %>% 
    ggplot(aes(x = education_fct,
               y = immigrant_job,
               color = education_fct))+
    stat_summary(fun.y = mean,
                 geom = "point")+
    ylim(1,5)+
    theme_bw()+
    labs(x = "Education level",
         y = "Attitude towards jobs for immigrants",
         caption = "Education level and the attitude towards jobs for immigrants. Data: EVS 2017",
         color = "Education level")



