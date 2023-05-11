# SQL Basics: Platziblog Schema
This repository contains SQL examples for the schema of Platziblog, a fictional blogging platform. The purpose of this repository is to provide basic examples of SQL queries and commands for beginners who are just starting to learn SQL.

# Schema Overview
The Platziblog schema consists of the following tables:

* login: contains information about the authors who write blog posts
* posts: contains information about blog posts, including the author who wrote the post
* comments: contains information about comments made on blog posts
* tags: tags by category
* categories: contains information about the categories that blog posts can belong to


# Examples
The following SQL examples demonstrate basic queries and commands for the Platziblog schema.

# SELECT
To retrieve all the data from a table:

```
SELECT * FROM users;

```
To retrieve data from multiple tables:
```
SELECT	title, publication_date, estatus
FROM		posts;
```
# INSERT
To insert data in to a table

```
INSERT INTO `platziblog.userss` (`id`,`login`,`password`,`nickname`,`email`) VALUES (1,'israel','jc8209*(^GCHN_(hcLA','Israel','israel@platziblog.com');
```

GROUP BY
To group data by a specific column:

```
SELECT MONTHNAME(fecha_publication) AS post_month, estatus, COUNT(*) AS post_quantity
FROM post
GROUP BY estatus, post_month
HAVING post_quantity > 2
ORDER BY post_month
;
```
ORDER BY
To sort data by a specific column:

```
SELECT	*
FROM		posts
ORDER BY titulo DESC;

SELECT	*
FROM		posts
ORDER BY usuario_id ASC
LIMIT 5;

SELECT	MONTHNAME(fecha_publicacion) AS post_month, estatus, COUNT(*) AS post_quantity
FROM		posts
GROUP BY estatus, post_month
ORDER BY post_month;
```

Drop
To drop the schema:
```
DROP DATABASE platziblog;
```

# Conclusion
These are just a few basic examples of SQL queries and commands for the Platziblog schema. SQL is a powerful tool for working with databases, and there are many more advanced features and commands to learn. Hopefully, these examples will help you get started with SQL and inspire you to explore more.
