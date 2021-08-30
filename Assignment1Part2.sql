-- This is the query that I used for Part 2: Which airlines experienced the 
-- most arrival delays despite not experiencing departure delays?
SELECT
airlines.name AS 'Airline',
COUNT(flights.arr_delay) AS 'Delayed_Arrivals'
FROM airlines
LEFT JOIN flights
ON airlines.carrier = flights.carrier
WHERE dep_delay <= 0 AND arr_delay > 0
GROUP BY airlines.name
ORDER BY Delayed_Arrivals DESC;