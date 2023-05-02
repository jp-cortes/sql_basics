-- WHERE examples

SELECT	*
FROM		posts
WHERE	id	< 50;

SELECT	*
FROM		posts
WHERE	status = 'Inactivo';

SELECT	*
FROM		posts
WHERE	title LIKE '%scandal%';

SELECT	*
FROM		posts
WHERE	publication_date > '2025-01-01';

SELECT	*
FROM		posts
WHERE	publication_date BETWEEN '2023-01-01' AND '2025-12-31';

SELECT	*
FROM		posts
WHERE	YEAR(publication_date) BETWEEN '2023' AND '2024';

SELECT	*
FROM		posts
WHERE	MONTH(publication_date) = '04';

SELECT	*
FROM		posts
WHERE	user_id IS NOT NULL;

SELECT	*
FROM		posts
WHERE	user_id IS NULL;