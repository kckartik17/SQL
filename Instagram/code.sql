-- Challenge 1
-- SELECT * from users order by created_at LIMIT 5;

-- Challenge 2
-- SELECT DAYNAME(created_at) as freq_day, count(*) as count from users group by freq_day order by count desc;

-- Challenge 3
-- SELECT username from users LEFT JOIN photos on users.id = photos.user_id where image_url is NULL;

-- Challenge 4
-- select username , photo_id ,image_url, count(*) as total_likes from likes INNER JOIN photos on likes.photo_id = photos.id INNER JOIN users on photos.user_id = users.id group by likes.photo_id order by total_likes desc Limit 1;

-- Challenge 5
-- SELECT ((SELECT count(*) from photos) / (SELECT count(*) from users)) as 'avg';

-- Challenge 6
-- SELECT tag_name, count(*) as times from photo_tags INNER JOIN tags on tags.id = photo_tags.tag_id group by tags.id order by times desc LIMIT 10;

-- Challenge 7
SELECT username,
  COUNT(*) as num_likes
from users INNER JOIN likes
on users.id = likes.user_id
group by likes.user_id
having num_likes = (select count(*) from photos);
