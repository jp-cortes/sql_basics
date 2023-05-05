-- WHERE examples

SELECT	*
FROM		posts
WHERE	id	< 50; -- id lower than 50

SELECT *
FROM posts
WHERE id!=50;-- !== is some cases is not working so is possible use "<>" means  Different to ...

SELECT	*
FROM		posts
WHERE	status = 'Inactivo';-- status equals to 

SELECT	*
FROM		posts
WHERE	title LIKE '%escandalo%';-- post that in  the title  contains the word "escandalo"
-- example 2
WHERE	title LIKE 'escandalo%';-- post which title  begins with the word "escandalo"
-- example 3
WHERE	title LIKE '%escandalo';-- post which title  ends with the word "escandalo"
--NOT LIKE is also possible to use

SELECT	*
FROM		posts
WHERE	publication_date > '2025-01-01';--date lower than

SELECT	*
FROM		posts
WHERE	publication_date BETWEEN '2023-01-01' AND '2025-12-31';--between

SELECT	*
FROM		posts
WHERE	YEAR(publication_date) BETWEEN '2023' AND '2024';--year
--NOT BETWEEN "" AND"" is also possible to use

SELECT	*
FROM		posts
WHERE	MONTH(publication_date) = '04';--month


SELECT	*
FROM		posts
WHERE	user_id IS NULL;

SELECT	*
FROM		posts
WHERE	user_id IS NOT NULL;

SELECT	*
FROM		posts
WHERE	user_id IS NOT NULL
AND estatus = 'activo'
AND id < 50
AND categoria_id=2
AND YEAR(fecha_publicacion)=2025
;

REGEXP_LIKE -- for REGEX

SELECT *
FROM        post
WHERE   REGEXP_LIKE (users.id ,'[0-5]')--REGEX
;


