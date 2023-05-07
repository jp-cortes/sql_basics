SELECT new_table_projection.date, COUNT(*) AS post_count
FROM (
    SELECT DATE(MIN(fecha_publicacion)) AS date, YEAR(fecha_publicacion) AS post_year
    FROM post_count
    GROUP BY post_year
) AS new_table_projection
GROUP BY new_table_projection.date
ORDER BY new_table_projection.date;

--example 2

SELECT * 
FROM posts
WHERE fecha_publicacion = (
    SELECT MAX(fecha_publicacion)
    FROM posts
);

SELECT MAX(fecha_publicacion)
FROM post;