SELECT new_table_projection.date, COUNT(*) AS post_count
FROM (
    SELECT DATE(MIN(publication_date)) AS date, YEAR(publication_date) AS post_year
    FROM post_count
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date;

--example 2

SELECT * 
FROM posts
WHERE publication_date = (
    SELECT MAX(publication_date)
    FROM posts
);

SELECT MAX(publication_date)
FROM post;