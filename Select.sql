-- Select examples
SELECT	*
FROM		posts;

SELECT	title, publication_date, estatus
FROM		posts;

SELECT	title AS header, publication_date AS posted, status AS state
FROM		posts;

-- SELECT	posts.title, categories.category_name;
SELECT	count(*)
FROM		posts;

SELECT	count(*) posts_numbers
FROM		posts;