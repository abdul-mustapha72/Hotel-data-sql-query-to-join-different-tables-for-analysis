WITH Hotels AS (
	SELECT * FROM [2018]
	UNION
	SELECT * FROM [2019]
	UNION
	SELECT * FROM [2020])

--SELECT 
	--hotel, 
	--arrival_date_year, 
	--round(sum((stays_in_week_nights+stays_in_weekend_nights)*adr), 2) AS Revenue 
	--FROM 
		--Hotels
--GROUP BY 
	--arrival_date_year, hotel
--ORDER BY 
	--Revenue DESC

--SELECT * FROM dbo.market_segment

SELECT * FROM Hotels
LEFT JOIN market_segment ON
	Hotels.market_segment = market_segment.market_segment
LEFT JOIN meal_cost ON
 Hotels.meal = meal_cost.meal