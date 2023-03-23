
--Registro de datos
--Categories
insert into categories  ( name ) values( 'Tech'),('Programacion'),('Desarrollo web');
--Levels
insert into level ( title ) values( 'Principiante'),('Intermedio'),('Avanzado');
--Teachers
insert into teachers (first_name, last_name) values ('Junior', 'Pacheco'),('Jesus','Hernandez'),('SAhid','Kick'),('Jose', 'Perez');
--Course Video
insert into course_video (
title,
url
) values (
'Programacion node',
'https://www.youtube.com/?hl=es-419&gl=PE'
),
(
'Programacion Js',
'https://www.youtube.com/?hl=es-419&gl=PE'
);

--courses 
insert into courses (
title,
description,
teacher_id,
video_id,
category_id,
level_id
) values (
'Desarrollo web',
'Curso de desarrollo web con react',
1,
1,
1,
2
);

--Users
insert into users (
first_name ,
last_name,
email,
"password",
phone
)values(
'Erwin',
'Nahue',
'erwin@gmail.com',
'root',
'999999999'
),(
'Jose',
'Perales',
'jose@gmail.com',
'root',
'999999991'
);

--courses List
insert into courses_list (user_id, courses_id)values(1,1)

--Consultas
select * from courses_list;
SELECT * FROM courses C JOIN teachers T ON C.teacher_id  = T.id;

--Actualizar datos de teacher en la tabla teachers
update teachers set first_name = 'Sahid' where id = 3;
--Borrar teacher de la tabla teachers
delete from teachers where id = 4;