# He Got that DAWG in Him:
## Quantifying NBA Player Toughness Using Counting Stats

Data Visualization Presentation: https://public.tableau.com/app/profile/matthew.parizot/viz/NBAPlayerToughness2021-22/Story1?publish=yes

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
  
  The exact values for each action can be found in the Jupyter notebook. Thanks for checking this out and I hope you enjoy it. Please let me know if you have any feedback as well.
