Loop# NFL-Concussion-Data-Project
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
When concussions were analyzed by each week I observed that as the weeks went on the later in the season the higher the rates of concussions would be and remain quite constant. There is a decrease in the late weeks because less teams are playing when its the playoffs and even before that if you already made it to the playoffs or your team isn't going to make it teams usually decide to rest their starters who have been playing all season. Concluding this data I gathered that their are higher rates during the mid to later end of the season do to wear and tear from the beginning of the season that breaks down your body and makes it weaker against hits later in the season leading to more concussed players.

<img src="https://github.com/reginaldelam04/NFL-Concussion-Data-Project/blob/main/Graph%201.png" alt="Graph1" width="400">

## Team analysis
After this I compared the number of concussed players to the teams they played for and who had the highest amount. In this I found that the Minnesota Vikings had the highest amount by a longshot and the New York Jets and New York Giants were tied for 2nd and 3rd after them. After this I began to start to try to understand why and this is because of one of their lack of talent to protect their QB's leading to more impacts on them and their backline of offense as the Center for the Vikings showed up on three diffrent occasions with a concussion and even their QB showing up at least once on the list. Also, the Vikings playstyle on deffense is heavy in blitzing which is sending more people then regularly to try to sack the QB which leads to more impact from their defensive players to the bigger offensive linemen they are going against. From the other side the Giants also had a playstyle problem as their QB has been evaluated for a concussion 5 times in 10 weeks but, this is due to his playstyle he likes to lead in with his head when getting hit by someone. The Jets have this issue because of skill they finished with one of the worst records in the NFL and when you play bad you probably get hit more.

<img src="https://github.com/reginaldelam04/NFL-Concussion-Data-Project/blob/main/graph2.png" alt="Graph1" width="400">

## Position analysis
Lastly, I compared the analyysis between concussions and positions on the field I gathered that these injuries happen more to wide recievers and corner backs the most with a large margin more than anyone after but after that are linebackers. Showing me that the distribution was not evenly distrubuted by the other positions. This is due to position requirements such as open field collisions, and tackling which lead to more head impacts. In many cases wide recievers are catching the ball in open space when someone on the other team is running at them full speed ready to hit them and vice versa the cornerback is gaurding the wide reciever and see them about to catch the ball so they want to make a play and tackle them. 

<img src="https://github.com/reginaldelam04/NFL-Concussion-Data-Project/blob/main/graph%204.png" alt="Graph1" width="400">

## Injury Status Analysis
The injury report status shows if a player will be playing after concussions happen in the next week. When studied I seen that there was a high chance that if you got a concussion you will be out for the next three weeks. Showing that if a concussion happens it immediately has a lasting impact on players taking them out of football for weeks to recover and having a uncertainty on availability short term.
## Conclusion
In conclusion, in my data I gathered in reports of many weeks, teams, and player's positions. Positions involving more usual frequent contact suffer higher rates of concussions. In these cases they usually are out for three weeks minimum recovering. Rates also depend on what team you are on and how far into the season you are one because if your team has a lack of talent in areas you are more susceptible to hits and two the later on into the season the weaker your body will be to hits allow concussions to happen more frequently. These findings show the importance of keeping track of players safety and having a better understanding of health in NFL players because concussions can later evolve to CTE which is a way bigger problem that many retired players suffer from.
