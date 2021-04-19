use Movie;
SELECT  mov_title, mov_year
FROM movie;

SELECT mov_year
FROM movie
WHERE mov_title = 'American Beauty';

SELECT mov_title
FROM movie
WHERE mov_year = '1999';

SELECT mov_title
FROM movie
WHERE mov_year = '1998';

SELECT  mov_title
from movie
where mov_year = '1999';

SELECT reviewer.rev_name , movie.mov_title
FROM reviewer, movie;

SELECT rev_name
FROM reviewer
WHERE rev_id in (
SELECT rev_id 
FROM rating 
WHERE rev_stars >= 7);

SELECT mov_title
FROM movie
WHERE mov_id in (
SELECT mov_id
FROM rating
WHERE num_o_ratings_ is Null);

SELECT rev_name
FROM reviewer
WHERE rev_id in (
SELECT rev_id 
FROM rating
WHERE rev_stars is Null);

SELECT dir_fname, dir_lname
FROM director
WHERE dir_id in (
     SELECT dir_id 
     FROM movie_direction
   WHERE mov_id in (
     SELECT mov_id 
   FROM movie
   WHERE movie_title = 'Eyes Wide Shut'));