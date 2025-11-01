## NBA Player Performance Data Analysis Using SQL

##  Project Overview
This project analyzes NBA player statistics from the **2022–2023 Regular Season** using **MySQL**.  
It demonstrates SQL skills like data cleaning, aggregation, joins, and performance insights.

**Dataset Source:** [Kaggle - 2022-2023 NBA Player Stats Regular Season](https://www.kaggle.com/datasets/vivovinco/20222023-nba-player-stats-regular)

---

##  Objectives
- Identify **top-performing players** based on Points, Assists, and Efficiency.
- Analyze **team-level averages** and performance consistency.
- Compare **player positions** in terms of scoring and assists.
- Demonstrate use of **SQL analytical queries**.

---

##  Database Schema

| Column Name | Data Type | Description |
|--------------|------------|-------------|
| PLAYER_NAME | VARCHAR | Name of the player |
| TEAM | VARCHAR | Team abbreviation |
| GP | INT | Games Played |
| PTS | FLOAT | Points per game |
| AST | FLOAT | Assists per game |
| REB | FLOAT | Rebounds per game |
| STL | FLOAT | Steals per game |
| BLK | FLOAT | Blocks per game |
| TOV | FLOAT | Turnovers per game |
| FG% | FLOAT | Field Goal Percentage |
| 3P% | FLOAT | 3-Point Percentage |
| FT% | FLOAT | Free Throw Percentage |

---

##  SQL Setup

```sql
-- 1 Create database
CREATE DATABASE nba_analysis;

-- 2 Use database
USE nba_analysis;

-- 3 Create table
CREATE TABLE player_stats (
    PLAYER_NAME VARCHAR(100),
    TEAM VARCHAR(10),
    GP INT,
    PTS FLOAT,
    AST FLOAT,
    REB FLOAT,
    STL FLOAT,
    BLK FLOAT,
    TOV FLOAT,
    FG_percent FLOAT,
    ThreeP_percent FLOAT,
    FT_percent FLOAT
);

-- 4 Load CSV data (if you have MySQL locally)
-- LOAD DATA INFILE '/path/to/your/csv/nba2023.csv'
-- INTO TABLE player_stats
-- FIELDS TERMINATED BY ','
-- IGNORE 1 ROWS;
