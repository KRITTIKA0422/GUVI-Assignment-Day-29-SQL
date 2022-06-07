EXERCISE -1
ANSWERS
1. SELECT title FROM movies;
2. SELECT director FROM movies;
3. SELECT title,director FROM movies;
4. SELECT title,year FROM movies;
5. SELECT * FROM movies;

EXERCISE -2
ANSWERS
1. SELECT * FROM movies where id=6;
2. SELECT * FROM movies where year between 2000 and 2010;
3. SELECT * FROM movies where year not between 2000 and 2010;
4. SELECT id,title,year FROM movies where id in (1,2,3,4,5);

EXERCISE -3
ANSWERS
1. SELECT * FROM movies where title like "Toy Story%";
2. SELECT * FROM movies where director like "John Lasseter";
3. SELECT title, director FROM movies where director not like "John Lasseter";
4. SELECT * FROM movies where title like "WALL-_";

EXERCISE -4
ANSWERS
1. SELECT distinct director FROM movies order by director;
2. SELECT * FROM movies order by year desc limit 4;
3. SELECT * FROM movies order by title limit 5;
4. SELECT * FROM movies order by title limit 5 offset 5;

EXERCISE -5
ANSWERS
1. SELECT city, country,population FROM north_american_cities where country like "Canada" ;
2. SELECT * FROM north_american_cities where country like "United States" order by latitude desc ;
3. SELECT * FROM north_american_cities where longitude<(SELECT longitude FROM north_american_cities where city like "Chicago") order by longitude;
4. SELECT * FROM north_american_cities where country="Mexico" order by population desc limit 2;
5. SELECT city,population FROM north_american_cities where country="United States" order by population desc limit 2 offset 2;

EXERCISE -6
ANSWERS
1. SELECT title,Domestic_sales,International_sales FROM movies inner join Boxoffice on Id=Movie_id;
2. SELECT title,Domestic_sales,International_sales FROM movies inner join Boxoffice on Id=Movie_id where International_sales>Domestic_sales;
3. SELECT title,rating FROM movies inner join boxoffice on movies.Id=Boxoffice.Movie_id order by rating desc;

EXERCISE -7
ANSWERS
1. SELECT distinct Building_name FROM Buildings inner join employees on Building_name=Building;
2. SELECT * FROM Buildings;
3. SELECT distinct Building_name,role FROM Buildings left join Employees on Building_name=Building ;

EXERCISE -8
ANSWERS
1. SELECT name,role FROM employees where Building is null;
2. SELECT Building_name FROM Buildings left join Employees on Building_name=Building where building is null;

EXERCISE -9
ANSWERS
1. SELECT title,(Domestic_sales+International_sales)/1000000 AS Total_sales_in_millions FROM movies inner join Boxoffice on Id=Movie_id;
2. SELECT title,(rating*10) as Rating_in_percent FROM movies inner join Boxoffice on Id=Movie_id;
3. SELECT title,year FROM movies where (year%2)=0;

EXERCISE -10
ANSWERS
1. SELECT role,name,max(Years_employed) FROM employees;
2. SELECT role,avg(Years_employed) FROM employees group by role;
3. SELECT building,sum(Years_employed) FROM employees group by building;

EXERCISE -11
ANSWERS
1. SELECT role,count(role) FROM employees where role like "Artist";
2. SELECT role,count(role) FROM employees group by role;
3. SELECT role,sum(years_employed) FROM employees where role like "engineer";

EXERCISE -12
ANSWERS
1. SELECT director,count(title) as No_of_movies FROM movies group by director;
2. SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies FROM movies INNER JOIN boxoffice ON movies.id = boxoffice.movie_id GROUP BY director;

EXERCISE -13
ANSWERS
1. INSERT INTO Movies
(Id,Title,Director,Year,Length_minutes)
VALUES (15,"Toy Story 4","John_Lasseter",2014,100);

2. INSERT INTO Boxoffice 
VALUES (15,8.7,340000000,270000000);

EXERCISE -14
ANSWERS
1. UPDATE movies
SET director="John Lasseter"
WHERE title="A Bug's Life";

2. UPDATE movies
SET year=1999
WHERE title="Toy Story 2";

3. UPDATE movies
SET title="Toy Story 3",
director="Lee Unkrich"
WHERE title="Toy Story 8";

EXERCISE -15
ANSWERS
1. DELETE FROM movies
WHERE year<2005;

2. DELETE FROM movies
WHERE director like "Andrew Stanton";

EXERCISE -16
ANSWERS
1. CREATE TABLE Database(
Name TEXT,
Version FLOAT,
Download_count INTEGER
);

EXERCISE -17
ANSWERS
1. ALTER TABLE movies
ADD Aspect_ratio FLOAT; 
2. ALTER TABLE movies
ADD Language TEXT
DEFAULT "English"; 

EXERCISE -18
ANSWERS
1. DROP TABLE IF EXISTS Movies;
2. DROP TABLE IF EXISTS boxoffice;











