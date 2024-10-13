--ESTUDIANTES
drop table estudiantes
create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	email varchar(50) not null,
	fecha_nacimiento date ,
	codigo_profesor int not null,
	constraint estudiantes_pk primary key(cedula)
)
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1235476801, 'Raul', 'Martínez', 'raumart01@gmail.com', 101);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1735476802, 'Mario', 'Guaman', 'MarioG25@gmail.com', 102);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1235476803, 'Roberto', 'Quishpe', 'RobQuishpe64@gmail.com', 103);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1735476804, 'Paul', 'Noguera', 'PaulNog55@gmail.com', 104);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1235476805, 'Marcelo', 'Anzaldo', 'MarceloR72@gmail.com', 105);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1735476806, 'Anthony', 'Agual', 'KAgual22@gmail.com', 106);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1235476807, 'Paula', 'Celi', 'PauCeli31@gmail.com', 107);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1735476808, 'Mónica', 'Martínez', 'MoniMar15@gmail.com', 108);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1235476809, 'Anabel', 'Perlaza', 'WPerlaza18@gmail.com', 109);
insert into estudiantes (cedula, nombre, apellido, email, codigo_profesor)
values (1735476810, 'Sofía', 'Jimenez', 'SofiJz22@gmail.com', 110);
--PROFESORES
create table profesores(
	codigo int not null,
	nombre varchar(50) not null,
	constraint codigo_pk primary key(codigo)
)
insert into profesores(codigo, nombre)
values (101, 'Francisco');
insert into profesores(codigo, nombre)
values (102, 'Ana');
insert into profesores(codigo, nombre)
values (103, 'Luis');
insert into profesores(codigo, nombre)
values (104, 'María');
insert into profesores(codigo, nombre)
values (105, 'Roberto');
insert into profesores(codigo, nombre)
values (106, 'Sofía');
insert into profesores(codigo, nombre)
values (107, 'Pedro');
insert into profesores(codigo, nombre)
values (108, 'Laura');
insert into profesores(codigo, nombre)
values (109, 'Marta');
insert into profesores(codigo, nombre)
values (110, 'José');
--SCRIPT
alter table estudiantes
add constraint estudiantes_profesores_fk foreign key(codigo_profesor)
references profesores(codigo)