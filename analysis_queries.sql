-- Top 10 scoring players
SELECT PLAYER_NAME, TEAM, PTS
FROM player_stats
ORDER BY PTS DESC
LIMIT 10;

-- Top 10 players by assists
SELECT PLAYER_NAME, TEAM, AST
FROM player_stats
ORDER BY AST DESC
LIMIT 10;

-- Team average points
SELECT TEAM, ROUND(AVG(PTS), 2) AS Avg_Points
FROM player_stats
GROUP BY TEAM
ORDER BY Avg_Points DESC;

-- Most efficient players
SELECT PLAYER_NAME, TEAM, FG_percent, ThreeP_percent
FROM player_stats
ORDER BY (FG_percent + ThreeP_percent) DESC
LIMIT 10;

-- Optional: correlation (if MySQL 8+)
SELECT ROUND(CORR(PTS, AST), 3) AS correlation_points_assists
FROM player_stats;
