-- Create and use a database
CREATE DATABASE mobiles;
USE mobiles;

-- Select all rows from the movies table
select *from movies;

-- Movies released in specific years
select year, count(*) as totalmovies from movies
group by year 
order by totalmovies desc;

-- Which movie has the highest rating?
select movie_name, year from movies
order by year desc
limit 5;

-- Movies with highest and lowest votes
select movie_name,rating,votes
from movies
order by rating desc
limit 5;

-- highest meta score
select max(meta_score)
from movies
group by movie_name
limit 5;

-- Average Meta Score for a specific year (2023)
select avg (meta_score) as average_meta_score
from movies
where year=2023;

-- Count the total number of movies
select count(*)
from movies ;

--  Find directors who have directed more than 1 movie
select director ,count(director) as count from movies group by director having count(director)>1;

--  Find movies that appear more than once
select movie_name,count(movie_name) as count from movies group by movie_name having count(movie_name)>1;

-- Find movies with the same name, year, and director
select movie_name,year,director,count(*)
from movies
group by movie_name,year,director
having count(*)>1;

--    Movies with votes greater than 100,000 and rating above 7
select movie_name,rating,votes
from movies
where rating>7 and votes>100000
order by rating desc;

-- Movies with a specific cast member (e.g., Leonardo DiCaprio)
select movie_name,cast,year
from movies
where cast like '%leonardo dicaprio%';

--  Movies with a certain PG rating
select pg_rating,count(*) as movie_count
from movies
group by pg_rating;

-- Movies grouped by genre
select genre,count(*) as movie_count
from movies
group by genre
order by movie_count desc;

--  Total votes for 2023 movies
select sum(votes) as total_votes
from movies
where year=2023;

--  Movies with the longest and shortest durations
select movie_name, duration
from movies
order by duration desc 
limit 1;

--  Movies with 'R' rating
select count(*) as r_rated_movies
from movies
where pg_rating='r';

-- 	Movies where the rating is higher than a specific value
select movie_name, rating
from movies
where rating > 8
order by rating desc;

-- Movies with a specific genre
select movie_name, genre, rating
from movies
where genre like '%action%' and genre like '%adventure%'
order by rating desc;

-- Movies in a specific duration range
select movie_name, duration
from movies
where duration like '% 3h 00m%'
order by duration desc;

-- Movies released within a specific year range (2000-2023)
select movie_name, year, rating
from movies
where year between 2000 and 2023
order by year desc;

-- Count the total number of movies in the database
select count(*) from movies;










