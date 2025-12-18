--more examples of filtering
use BAS

select*from airbnb

select city from airbnb

select city, year_listed from airbnb

select id, city from airbnb
ORDER BY number_of_rooms ASC

--give only the 5 first rows of the table -ERROR
--select*from airbnb LIMIT 3  

--Filtering numerical columns
select*from airbnb where number_of_rooms BETWEEN 3 AND 5

--Filtering text columns
select*from airbnb where city='Paris'

select*from airbnb where country IN ('France', 'Japan')

--city begin with T and does not end to t
select*from airbnb where city LIKE 'T%' AND city NOT LIKE '%t'

--Filtering on multiple columns
select*from airbnb where city='Paris' AND number_of_rooms>3

select*from airbnb where city='Paris' or year_listed>2012

