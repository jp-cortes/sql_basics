-- FROM
SELECT	*
FROM		posts;
    
SELECT	*
FROM	users 
	LEFT JOIN posts on users.id = posts.user_id;
    
SELECT	*
FROM	users 
	LEFT JOIN posts on users.id = posts.user_id
WHERE	posts.user_id IS NULL;

SELECT	*
FROM	users 
	RIGHT JOIN posts on users.id = posts.user_id;
    
SELECT	*
FROM	users 
	RIGHT JOIN posts on users.id = posts.user_id
WHERE	posts.user_id IS NULL;

SELECT	*
FROM	users 
	INNER JOIN posts on users.id = posts.user_id;
    
SELECT	*
FROM	users 
	JOIN posts on users.id = posts.user_id;
    
SELECT	*
FROM		users 
	LEFT JOIN posts   ON users.id = posts.user_id
UNION 
SELECT	*
FROM		users 
	RIGHT JOIN posts ON users.id = posts.user_id;
    
SELECT	*
FROM	users 
	LEFT JOIN posts on users.id = posts.user_id
WHERE	posts.user_id IS NULL
UNION
SELECT	*
FROM	users 
	RIGHT JOIN posts on users.id = posts.user_id
WHERE	posts.user_id IS NULL;