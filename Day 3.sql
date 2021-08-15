Practice in Hackerrank

--Weather Observation Station 11
select distinct city from station
where substr(city,1,1) not in ('A','E','I','O','U') or substr(city,length(city),1) not in ('A','E','I','O','U')

--Weather Observation Station 12
select distinct city from station
where substr(city,1,1) not in ('A','E','I','O','U') and substr(city,length(city),1) not in ('A','E','I','O','U')

--Higher Than 75 Marks
select name from students
where marks > 75
order by substr(name,length(name)-2,3), id asc

--Employee Names
select name from employee
order by name

--Employee Salaries
select name from employee
where salary > 2000 and months < 10
order by employee_id

--Average Population of Each Continent
Select COUNTRY.Continent, floor(avg(CITY.Population)) from country 
inner join city on city.countrycode = country.code
group by country.continent

--Top Competitors
select h.hacker_id, h.name
from submissions s
inner join challenges c
on s.challenge_id = c.challenge_id
inner join difficulty d
on c.difficulty_level = d.difficulty_level 
inner join hackers h
on s.hacker_id = h.hacker_id
where s.score = d.score and c.difficulty_level = d.difficulty_level
group by h.hacker_id, h.name
having count(s.hacker_id) > 1
order by count(s.hacker_id) desc, s.hacker_id asc

--The Report
select if(grade<8, null, name), grade, marks
from students join grades
where marks between min_mark and max_mark
order by grade desc, name, marks
