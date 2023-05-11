-- What do you want to show = SELECT
-- where from get the data = FROM
-- filters of data you want to show = WHERE
-- how i would like to group my data = GROUP BY
-- how i do want to show my information =  ORDER BY
-- filters which i want my data to have =  HAVING

-- Howmanybtag for post?
SELECT  posts.title, COUNT(*) AS num_etiquetas
FROM    posts
    INNER JOIN posts_tags ON posts.id = posts_tags.post_id
    INNER JOIN tags ON tags.id = posts_tags.etiqueta_id
GROUP BY posts.id;

-- Which tag is the most often?
SELECT  tags.name_tag, COUNT(*) AS ocurrencias
FROM tags
    INNER JOIN posts_tags ON tags.id = posts_tags.etiqueta_id
GROUP BY tags.id
ORDER BY ocurrencias DESC;

-- tags of post seoarated by a comma?
SELECT  posts.title, GROUP_CONCAT(name_tag)
FROM    posts
    INNER JOIN posts_tags ON posts.id = posts_tags.post_id
    INNER JOIN tags ON tags.id = posts_tags.etiqueta_id
GROUP BY posts.id;

-- What tags does not have a related post?
SELECT	*
FROM	tags 
	LEFT JOIN posts_tags on tags.id = posts_tags.etiqueta_id
WHERE	posts_tags.etiqueta_id IS NULL;

-- categories sorted by number of post?
SELECT c.name_category, COUNT(*) AS cant_posts
FROM    categories AS c
    INNER JOIN posts AS p on c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC;

-- which category has most number of post?
SELECT c.name_category, COUNT(*) AS cant_posts
FROM    categories AS c
    INNER JOIN posts AS p on c.id = p.categoria_id
GROUP BY c.id
ORDER BY cant_posts DESC
LIMIT 1;

-- which user  wrote most post?
SELECT u.nickname, COUNT(*) AS cant_posts
FROM    users AS u
    INNER JOIN posts AS p on u.id = p.user_id
GROUP BY u.id
ORDER BY cant_posts DESC
LIMIT 1;

-- which categories write every user?
SELECT u.nickname, COUNT(*) AS cant_posts,  GROUP_CONCAT(name_category)
FROM    users AS u
    INNER JOIN posts AS p ON u.id = p.user_id
    INNER JOIN categories AS c ON c.id = p.category_id
GROUP BY u.id;

-- Which user didn't write a post yet?
SELECT	*
FROM	users 
	LEFT JOIN posts on users.id = posts.user_id
WHERE	posts.user_id IS NULL