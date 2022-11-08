# Altering column names for selection

ALTER TABLE `nba_data`.`playertotals21_22` 
CHANGE COLUMN `ï»¿Rk` `ID` INT NULL DEFAULT NULL ,
CHANGE COLUMN `FG%` `FGP` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `3P%` `3PP` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `2P%` `2PP` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `eFG%` `eFGP` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `FT%` `FTP` DOUBLE NULL DEFAULT NULL ;

ALTER TABLE `nba_data`.`playerpbp21_22` 
CHANGE COLUMN `ï»¿Rk` `ID` INT NULL DEFAULT NULL ,
CHANGE COLUMN `Position Estimate PG%` `Position Estimate PG` INT NULL DEFAULT NULL ,
CHANGE COLUMN `Position Estimate SG%` `Position Estimate SG` INT NULL DEFAULT NULL ,
CHANGE COLUMN `Position Estimate SF%` `Position Estimate SF` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Position Estimate PF%` `Position Estimate PF` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `Position Estimate C%` `Position Estimate C` DOUBLE NULL DEFAULT NULL, 
CHANGE COLUMN `Turnovers BadPass` `TurnoversBadPass` INT NULL DEFAULT NULL,
CHANGE COLUMN `Turnovers LostBall` `TurnoversLostBall` INT NULL DEFAULT NULL,
CHANGE COLUMN `Fouls Drawn Shoot` `FoulsDrawnShoot` INT NULL DEFAULT NULL,
CHANGE COLUMN `Fouls Drawn Off.` `FoulsDrawnOff` INT NULL DEFAULT NULL,
CHANGE COLUMN `Misc. And1` `And1` INT NULL DEFAULT NULL;

ALTER TABLE `nba_data`.`playerhustle21_22` 
CHANGE COLUMN `ï»¿Rk` `ID` INT NULL DEFAULT NULL ,
CHANGE COLUMN `%LooseBallsRecOff` `LooseBallsRecOff` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `%LooseBallsRecDEF` `LooseBallsRecDEF` DOUBLE NULL DEFAULT NULL ;

ALTER TABLE `nba_data`.`playerboxouts21_22` 
CHANGE COLUMN `ï»¿Rk` `ID` INT NULL DEFAULT NULL ,
CHANGE COLUMN `%BoxOutsOFF` `PBoxOutsOFF` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `%BoxOutsDEF` `PBoxOutsDEF` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `%TeamRebWhenBoxOut` `PTeamRebWhenBoxOut` DOUBLE NULL DEFAULT NULL ,
CHANGE COLUMN `%PlayerRebWhenBoxOut` `PPlayerRebWhenBoxOut` DOUBLE NULL DEFAULT NULL ;

# Selecting columns needed for analysis

CREATE TABLE playerdawgs21_22 
AS (SELECT 
playertotals21_22.Player, playertotals21_22.Pos, playertotals21_22.Tm, playertotals21_22.G, playertotals21_22.MP,
	playertotals21_22.FGP, playertotals21_22.ORB, playertotals21_22.DRB, playertotals21_22.TRB,
	playertotals21_22.STL, playertotals21_22.BLK, 
playerpbp21_22.TurnoversBadPass, playerpbp21_22.TurnoversLostBall, playerpbp21_22.FoulsDrawnShoot, playerpbp21_22.FoulsDrawnOff, 
	playerpbp21_22.And1, 
playerhustle21_22.ScreenAssist, playerhustle21_22.Deflections, playerhustle21_22.OFFLooseBallsRec, playerhustle21_22.DEFLooseBallsRec,
	playerhustle21_22.Charges, playerhustle21_22.Contested2PT, playerhustle21_22.Contested3PT, 
playerboxouts21_22.OFFBoxOuts, playerboxouts21_22.DEFBoxOuts, playerboxouts21_22.PTeamRebWhenBoxOut
FROM playertotals21_22
JOIN playerpbp21_22
	ON playertotals21_22.ID = playerpbp21_22.ID
	AND playertotals21_22.Tm = playerpbp21_22.Tm
JOIN playerhustle21_22
	ON playertotals21_22.ID = playerhustle21_22.ID
    AND playertotals21_22.Tm = playerhustle21_22.Tm
JOIN playerboxouts21_22
	ON playertotals21_22.ID = playerboxouts21_22.ID
    AND playertotals21_22.Tm = playerboxouts21_22.Tm);
    
SELECT * FROM playerdawgs21_22;
SELECT DISTINCT Tm FROM playerdawgs21_22
ORDER BY Tm ASC;

# Creating individual team tables

CREATE TABLE hawks
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "ATL");

SELECT * FROM hawks;

CREATE TABLE celtics
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "BOS");

CREATE TABLE nets
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "BRK");

CREATE TABLE bulls
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "CHI");

CREATE TABLE hornets
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "CHO");

CREATE TABLE cavs
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "CLE");

CREATE TABLE mavs
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "DAL");

CREATE TABLE nuggets
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "DEN");

CREATE TABLE pistons
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "DET");

CREATE TABLE warriors
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "GSW");

CREATE TABLE rockets
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "HOU");

CREATE TABLE pacers
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "IND");

CREATE TABLE clippers
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "LAC");

CREATE TABLE lakers
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "LAL");

CREATE TABLE grizzlies
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "MEM");

CREATE TABLE heat
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "MIA");

CREATE TABLE bucks
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "MIL");

CREATE TABLE wolves
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "MIN");

CREATE TABLE pels
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "NOP");

CREATE TABLE knicks
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "NYK");

CREATE TABLE thunder
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "OKC");

CREATE TABLE magic
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "ORL");

CREATE TABLE sixers
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "PHI");

CREATE TABLE suns
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "PHO");

CREATE TABLE blazers
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "POR");

CREATE TABLE kings
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "SAC");

CREATE TABLE spurs
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "SAS");

CREATE TABLE raptors
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "TOR");

CREATE TABLE jazz
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "UTA");

CREATE TABLE wizards
AS (SELECT *
FROM playerdawgs21_22
WHERE Tm = "WAS");

# Creating table to remove multiple instances of players on different teams

CREATE TABLE rawdawgs21_22
AS (WITH ttable AS (
SELECT *,
RANK() OVER (PARTITION BY Player
	ORDER BY G DESC) AS TRank
FROM playerdawgs21_22)
SELECT * 
FROM ttable
WHERE TRank = 1);

SELECT * FROM rawdawgs21_22;

ALTER TABLE rawdawgs21_22
DROP COLUMN TRank;