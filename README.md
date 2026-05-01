# NFL-Concussion-Data-Project
## Description
My project analyses NFL injuries to identify the patterns of concussions through positions, teams, weeks and game situations. Using R to help understand what players are more at risk and when they happen more frequently over time.

## Research Questions
- Do concussions happen more frequently early in the season or later?
- What team had the most concussion rates and why?
- Are certain positions more susceptible to concussions?
- How often after concussions are players seen as Out vs. Questionable

## Data Description
I got all of my data from the nflreadr package in R. This gave me data about all of the injuries that happened last season and helped me compile an analysis. Containing NFL injury report data, like what team the players were on what week it happened, the players position, and the injury status. 
In order, to get the results I wanted I chose to filter most of the injuries by only head impact injuries resulting in concussions counting towards the primary and secondary injury.

## R Commands used
In R many packages were installed in including dplyr, ggplot2, readxl, tidyverse, and nflreadr.
The most important commands used were:
- The filter() and grepl() commands to filter the data  to only include concusion related injuries.
- The count command to show how many instances said injuries happened.
- The arrange command to sort my results.
- The ggplot2 command and geom_col() and geom_line() to graph the data to help better understand it.

# Results of Project
I will split the results up into sections so that there is a better understanding.
## Weekly Trends
When concussions were analyzed by each week I observed that as the weeks went on the later in the season the higher the rates of concussions would be and remain quite constant. 

<img src="https://github.com/reginaldelam04/NFL-Concussion-Data-Project/blob/main/Graph%201.png" alt="Graph1" width="400">
