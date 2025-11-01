-- Create a new database
CREATE DATABASE nba_analysis;

-- Use the created database
USE nba_analysis;

-- Create a table for player statistics
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
