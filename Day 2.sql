Practice SQL in Hackerrank

--Weather Observation Station 4
Select count(city)-count(distinct(city)) from station;

--Weather Observation Station 5
(select city c, length(city) as len from station
order by len asc,c asc
limit 1)
union
(select city c, length(city) as len from station
order by len desc,c asc
limit 1)

--Weather Observation Station 6
select distinct city from station
WHERE substr(city,1,1) in ('A','E','I','O','U')

--Weather Observation Station 7
select distinct city from station 
where substr(city,length(city),1) in ('A','E','I','O','U')

--Weather Observation Station 8
select city from station
where substr(city,1,1) in ('A','E','I','O','U') and substr(city,length(city),1) in ('A','E','I','O','U')

--Weather Observation Station 9
select distinct city from station
where substr(city,1,1) not in ('A','E','I','O','U')

--Weather Observation Station 10
select distinct city from station
where substr(city,length(city),1) not in ('A','E','I','O','U')
