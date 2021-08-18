--Weather Observation Station 20
 Select round(S.LAT_N,4) median from station S 
 where (select count(Lat_N) from station where Lat_N < S.LAT_N ) = (select count(Lat_N) from station where Lat_N > S.LAT_N)

--Population Census
Select sum(c.population) from city c
join country co
on co.code = c.countrycode
where co.continent = 'Asia'

--African Cities
select c.name from city c
join country co
on co.code = c.countrycode
where co.continent = 'Africa'

--Ollivander's Inventory
SELECT id, age, m.coins_needed, m.power FROM 
(SELECT code, power, MIN(coins_needed) AS coins_needed FROM Wands GROUP BY code, power) AS m
JOIN Wands AS w ON m.code = w.code AND m.power = w.power AND m.coins_needed = w.coins_needed
JOIN Wands_Property AS p ON m.code = p.code
WHERE p.is_evil = 0
ORDER BY m.power DESC, age DESC;

--Challenges
SELECT c.hacker_id, h.name, COUNT(c.challenge_id) AS cnt 
FROM Hackers AS h JOIN Challenges AS c ON h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name 
HAVING
cnt = (SELECT COUNT(c1.challenge_id) FROM Challenges AS c1 GROUP BY c1.hacker_id ORDER BY COUNT(*) DESC LIMIT 1) OR
cnt NOT IN (SELECT COUNT(c2.challenge_id) FROM Challenges AS c2 GROUP BY c2.hacker_id HAVING c2.hacker_id <> c.hacker_id)
ORDER BY cnt DESC, c.hacker_id;
