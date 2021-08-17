--Revising Aggregations - The Sum Function
Select sum(population) from city
where district = 'California'

--Revising Aggregations - Averages
Select avg(population) from city
where district = 'California'

--Average Population
Select floor(avg(population)) from city

--Japan Population
Select Sum(population) from city
where countrycode = 'JPN'

--Population Density Difference
Select max(population) - min(population) from city

--The Blunder
Select ceil(avg(Salary) - avg(replace(salary,0,''))) from employees

--Top Earners
select months*Salary as earnings, count(*) from employee
group by earnings
order by earnings desc
limit 1

--Weather Observation Station 2
select round(sum(lat_n),2),round(sum(long_w),2) from station

--Weather Observation Station 13
select truncate(sum(lat_n),4) as NL from station
where lat_n > 38.7880 and lat_n < 137.2345

--Weather Observation Station 14
select truncate(max(lat_n),4) from station 
where lat_n < 137.2345

--Weather Observation Station 15
Select round(long_w,4) from station 
where lat_n < 137.2345
order by lat_n desc
limit 1

--Weather Observation Station 16
select round(min(lat_n),4) from station
where lat_n > 38.7780

--Weather Observation Station 17
Select round(long_w,4) from station 
where lat_n > 38.7780
order by lat_n 
limit 1

--Weather Observation Station 18
select round(((max(lat_n) - min(lat_n)) + (max(long_w) - min(long_w))),4) from station

--Weather Observation Station 19
select round(sqrt(power(max(lat_n)-min(lat_n),2) + power(max(long_w)-min(long_w),2)),4) from station
