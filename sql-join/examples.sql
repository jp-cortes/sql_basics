use platziblog;

-- todos los users tengan o no  un post relacionado
 select*
 from users as u
 left join posts as p
 on u.id = p.user_id;
 
-- todos los users que no han hecho post
 select*
 from users as u
 left join posts as p
 on u.id = p.user_id
 where p.user_id IS NULL;

-- todos los post esten o no asociados con un usuario
 select*
 from users as u
 right join posts as p
 on u.id = p.user_id;
 
 -- los post que no estan asociados con un usuario
 select*
 from users as u
 right join posts as p
 on u.id = p.user_id
 where u.id is null;
 
 -- todos los users que sí hayan hecho posts, con su respectivo post
  select*
 from users as u
 inner join posts as p
 on u.id = p.user_id;
 
 -- conjunto universo UNION
  select*
 from users as u
 left join posts as p
 on u.id = p.user_id
 UNION
  select*
 from users as u
 right join posts as p
 on u.id = p.user_id;
 
 -- los users que no hayan hecho un post, junto con los post que no tiene usuario
   select*
 from users as u
 left join posts as p
 on u.id = p.user_id
 where p.user_id is NULL
 UNION
  select*
 from users as u
 right join posts as p
 on u.id = p.user_id
 where p.user_id is NULL;
 