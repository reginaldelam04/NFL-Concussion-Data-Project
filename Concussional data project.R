install.packages('tidyverse')
library(dplyr)
library(ggplot2)
library(readxl)
library(tidyverse)
install.packages("nflreadr")
library(nflreadr)
#NFL injury data

injuries <- load_injuries()
names(data)
injuries = load_injuries()
names(injuries)
#Filtering concussed players data
#including both primary and secondary injuries
concussions = data
df = df|>
  filter(report_primary_injury == "Concussion")
concussions <- injuries %>%
  filter(grepl("concussion", report_primary_injury, ignore.case = TRUE) |
           grepl("concussion", report_secondary_injury, ignore.case = TRUE)
  )
#Showing the weekly amount of concussions
nrow(concussions)
#Question 1
#Are concussion more frequent towards the end of the season???

weekly_counts= count(concussions, week)
#Create a graph showing weekly concussions
ggplot(weekly_counts, aes(x = week, y = n)) + 
  geom_line() + 
  geom_point() + 
  labs( 
    title = "Concussions by NFL Week", 
    x = "Week of Season", 
    y = "Number of Concussions" 
    )
position_graph <- ggplot(concussions, aes(x = position)) +
  geom_bar()
ggsave("position_graph.png", width = 8, height = 5)
getwd()
#Concussion reports towards the middle of the season and the end were higher due to wear and tear from season.
#Question 2
#What teams have more concussion reports???
# Shows concussion rates by teams
team_counts = count(concussions, team)
ggplot(team_counts, aes(x = reorder(team, n), y = n)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Concussions by Team (2025)",
    x = "Team",
    y = "Number of Concussions"
  )
#Now I will count by the players position
#Question 3
#Are concussions more frequent in positions???
position_counts = count(concussions, position)
ggplot(position_counts, aes(x = reorder(position, n), y = n)) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Concussions by Position",
    x = "Position",
    y = "Number of Concussions"
  )
#Positions with higher rates could be experiencing higher contact in their positions.
#Are players more Questionable or Out when they get concussions?
#Concussions by injury status
status_counts = count(concussions, report_status)
#Concussion reports instantly impacted availability for the next few weeks.