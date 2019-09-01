-- SELECT concat(substr(title,1,10),"...") AS 'Short title'
-- from books;

-- SELECT replace(title,'e',7)
-- from books;

-- SELECT concat(substr(replace(title,'e',7),1,10),"...") AS 'Short title'
-- from books;

-- select author_fname, reverse(author_fname)
-- from books;

-- select concat(author_lname, ' is ', CHAR_LENGTH(author_lname),' characters long') as Length from books;

-- select concat('My favorite book is ', UPPER(title), ' by ', lower(author_fname)) as 'Fav Book' from books;

-- select reverse(upper("Why does my cat look at me with such hatred?"))

-- select Replace(title,' ', '->') from books;

-- select author_lname as 'forwards', reverse(author_lname) as 'backwards' from books;

-- select Upper(concat(author_fname," ",author_lname)) as 'full name in caps' from books;

-- select concat(substr(title,1,10),"...") as 'short title', concat(author_lname,",",author_fname) as 'author', concat(stock_quantity," in stock") as 'quantity' from books;

-- INSERT INTO books
--     (title, author_fname, author_lname, released_year, stock_quantity, pages)
--     VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
--            ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
--            ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- select count(distinct author_lname), count(author_lname) from books;

-- select title from books where title like '%\%%';

-- select title from books where title like '%\_%';

-- select title,pages from books order by pages desc limit 1;

select title, pages from books where pages = (select max(pages) from books);