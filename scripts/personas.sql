-- TABLA PERSONAS
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
)
insert into personas(cedula,nombre)
values('0926324237', 'david')
insert into personas(cedula,nombre,apellido,numero_hijos,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada)
values('0926324239', 'david','llerena',0,1.70,'27/08/1996','22:50',300.25)

select cedula,nombre,numero_hijos  from personas

select * from personas

