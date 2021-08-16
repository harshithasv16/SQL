--Type of Triangle
SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;

--The PADS
select concat(Name,'(',Substring(Occupation,1,1),')') as Name
from occupations
Order by Name;

select concat('There are a total of',' ',count(occupation),' ',lower(occupation),'s.') as total
from occupations
group by occupation
order by total;

--Occupations
select d.name,p.name,s.name,a.name from
(select name, row_number() over (partition by occupation order by name) id from occupations
where occupation = 'Doctor') d
full outer join 
(select name, row_number() over (partition by occupation order by name) id from occupations
where occupation = 'Professor') p on d.id=p.id
full outer join
(select name, row_number() over (partition by occupation order by name) id from occupations
where occupation = 'Singer') s on s.id=p.id
full outer join
(select name, row_number() over (partition by occupation order by name) id from occupations
where occupation = 'Actor') a on a.id=s.id

--Binary Tree Nodes
select N,
case 
    when P is null then 'Root' 
    when N in (select distinct P from BST) then 'Inner'
    else 'Leaf' 
end 
from BST
order by N

--New Companies
select C.company_code, C.founder, count(distinct L.lead_manager_code), count(distinct S.senior_manager_code), count(distinct M.Manager_code),count(distinct E.employee_code) 
from Employee E
inner Join company C on E.company_code = C.company_code
inner join lead_manager L on L.company_code = C.company_code
inner join senior_manager S on S.Company_code = L.company_code
inner join Manager M on M.Company_code = S.Company_code
group by c.company_code, c.founder
order by C.company_code

--Revising Aggregations - The Count Function
Select count(id) from city
where population > 100000
