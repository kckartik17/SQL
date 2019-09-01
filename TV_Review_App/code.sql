-- Challenge 1
-- select title, rating from series INNER JOIN reviews on series.id = reviews.series_id LIMIT 15;

-- Challenge 2
-- select title, avg(rating) as avg_rating from series JOIN reviews on series.id = reviews.series_id group by series.id order by avg_rating;

-- Challenge 3
-- select first_name , last_name, rating from reviewers JOIN reviews on reviewers.id = reviews.reviewer_id;

-- Challenge 4
-- select title as unreviewed_series from series LEFT JOIN reviews on series.id = reviews.series_id where rating is NULL;

-- Challenge 5
-- select genre, round(avg(rating),2) as avg_rating from series INNER JOIN reviews on series.id = reviews.series_id group by genre;

-- Challenge 6
-- select first_name,
--         last_name, 
--         count(rating) as count, 
--         ifnull(min(rating),0) as MIN, 
--         ifnull(Max(rating),0) as MAX, 
--         round(ifnull(avg(rating),0),2) as AVG,
--         CASE
--           when Count(rating) > 0 then 'ACTIVE'
--           else 'INACTIVE'
--         END AS STATUS
--         from reviewers LEFT JOIN reviews on reviewers.id = reviews.reviewer_id group by reviewers.id;

-- Challenge 7
-- select title , rating , Concat (first_name, ' ', last_name) as reviewer from series inner join reviews on series.id = reviews.series_id inner join reviewers on reviews.reviewer_id  = reviewers.id order by title;