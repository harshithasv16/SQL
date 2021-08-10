Practice SQL in Hackerrank

--Select ALL
Select * from City;

--Revising the Select Query 1
Select * from city 
where population > 100000
and countrycode = 'USA';

--Revising the Select Query 2
Select Name from city
where population > 120000
and countrycode = 'USA';

--Select by ID
Select * from city
where ID = 1661;

--Japanese Cities' Attributes
Select * from city
where countrycode = 'JPN';

--Japanese Cities' Names
Select Name from city
and countrycode = 'JPN';

--Weather observation station 1
Select city, state from station;

--Weather observation station 3
Select distinct(city) from station
where (id%2) = 0 ;
