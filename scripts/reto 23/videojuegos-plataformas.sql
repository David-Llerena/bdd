--VIDEOSJUEGOS
drop table videojuegos
create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	constraint videojuegos_pk primary key(codigo)
)
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de guerra', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de guerra y accion', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de estrategia y guerra', 10);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fortnite', 'juego de suspenso', 10);
-- Nombre comienza con C
insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);
-- Nombre comienza con D
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Dragon Ball', 'juego de batalla', 8);
-- Videojuego con nombre "God of War" y corrección en la descripción
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of War', 'juego de guerra mitológica', 7);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deportes extremos', 9);
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball Z', 'juego de combate', 8);
--PLATAFORMA
drop table plataformas
create table plataformas(
	id_plataforma int not null,
	nombre_plataforma varchar(50) not null,
	codigo_videojuegos int not null,
	constraint plataformas_pk primary key(id_plataforma)
)
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (1, 'PlayStation', 07563);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (2, 'Xbox', 85421);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (3, 'PC', 93475);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (4, 'Nintendo Switch', 15983);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (5, 'Mobile', 35784);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (6, 'PC', 54682);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (7, 'PlayStation', 01456);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (8, 'Xbox', 70215);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (9, 'PC', 63240);
insert into plataformas(id_plataforma, nombre_plataforma, codigo_videojuegos) 
values (10, 'Mobile', 63549);
--SCRIPT
alter table plataformas
add constraint plataformas_videojuegos_fk foreign key (codigo_videojuegos)
references videojuegos(codigo)