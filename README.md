# He Got that DAWG in Him:
## Quantifying NBA Player Toughness Using Counting Stats

Data Visualization Presentation: https://public.tableau.com/app/profile/matthew.parizot/viz/NBAPlayerToughness2021-22/Story1?publish=yes
Technologies Used: SQL, Python, Excel, Tableau

Inspired from a technical question asked by the Miami Heat for their analytics internships, how does one measure "toughness" in a player? My attempt to answer this question lead me to the creation of a statistic called Discrete Actions for Winning Games (or DAWG).

DAWG is calculated using individual counting stats, and is weighted by "level of toughness" as well as average season totals. DAWGS is separated into Offensive and Defensive values. The stats used to calculate each is as follows:

Offensive DAWGs
  - Offensive Rebounds
  - Screen Assists
  - Making Contested Shots
  - Offensive Boxouts
  - Drawn Shooting Fouls
  - And1s
  - Recovering Loose Balls (Off)
  - Lost Ball Turnovers
  
 Defensive DAWGs:
  - Defensive Rebounds
  - Steals
  - Blocks
  - Offensive Fouls Drawn
  - Deflections
  - Recovering Loose Balls (Def)
  - Charges
  - Defensive Boxouts
  
 The exact values for each action can be found in the Jupyter notebook. A secondary stat was also created, which tries to adjust for minutes played. 
  
 Some of the conclusions I found:
  - These specific counting stats favour the largest positions more (PFs and Cs), which makes sense, but I would like to have some method that can help the guard     positions more.
  - My favourite team, the Toronto Raptors, falls in the rankings when adjusted for minutes. This is likely due to how bad their bench production was in the 21-22 season.
  - Nikola Jokic is the best player in the NBA. 
  
  Thanks for checking this out and I hope you enjoy it. Please let me know if you have any feedback as well.


![playerdawgs](https://user-images.githubusercontent.com/26802284/200697499-9e5797c8-d9c3-4b08-907f-3732adfecd97.PNG)
