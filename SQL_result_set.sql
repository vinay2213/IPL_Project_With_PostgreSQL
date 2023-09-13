-- Number of matches played per year of all the years in IPL
SELECT season, count(*) FROM matches GROUP BY season ORDER BY season ASC;

-- Number of matches won of all teams over all the years of IPL
SELECT winner, count(*) FROM matches WHERE winner IS NOT null GROUP BY winner;

-- For the year 2016 get the extra runs conceded per team
SELECT bowling_team, SUM(extra_runs) AS extra_runs FROM deliveries INNER JOIN matches ON deliveries.match_id = matches.id WHERE season = '2016' GROUP BY bowling_team ORDER BY extra_runs ASC;

-- For the year 2015 get the top economical bowlers
SELECT
	bowler,
	ROUND((SUM(total_runs - bye_runs - legbye_runs) / (COUNT(CASE WHEN (wide_runs = 0 AND noball_runs =0) THEN 1 ELSE null END) / 6.0)),2) AS economy_rate
FROM deliveries
INNER JOIN matches
ON deliveries.match_id = matches.id
WHERE season = '2015'
GROUP BY bowler
ORDER BY economy_rate ASC;
