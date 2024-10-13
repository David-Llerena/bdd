--PERSONAS
drop table personas
create table personas(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint cedula_pk primary key(cedula)
)
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101250','Fabiola','Pérez','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101251','Sean','García','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101252','Beatriz','López','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101253','Nicolas','Martínez','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101254','Johana','Ramírez','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101255','Alfonso','Torres','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101256','José','Morales','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101257','Karla','Cruz','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101258','Miriam','Vega','27/10/2024');
insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('2250101259','Andrés','Salazar','27/10/2024');
--PRESTAMO
drop table prestamo
create table prestamo(
	cedula char(10) not null,
	monto money not null,
	fecha_prestamo date not null,
	hora_prestamo time not null,
	garante varchar(40) not null	
)
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101250', 5000.00, '2024-10-01', '10:00', 'Fabiola Pérez');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101251', 300.00, '2024-10-02', '11:30', 'Sean García');  -- Monto entre 100 y 1000
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101252', 4500.00, '2024-10-03', '12:15', 'Beatriz López');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101253', 750.00, '2024-10-04', '14:45', 'Nicolas Martínez');  -- Monto entre 100 y 1000
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101254', 6000.00, '2024-10-05', '09:00', 'Johana Ramírez');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101255', 900.00, '2024-10-06', '16:30', 'Alfonso Torres');  -- Monto entre 100 y 1000
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101256', 1500.00, '2024-10-07', '08:15', 'José Morales');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101257', 200.00, '2024-10-08', '10:45', 'Karla Cruz');  -- Monto entre 100 y 1000
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101258', 3500.00, '2024-10-09', '13:00', 'Miriam Vega');
insert into prestamo(cedula, monto, fecha_prestamo, hora_prestamo, garante)
values('2250101259', 4000.00, '2024-10-10', '15:30', 'Andrés Salazar');
--SCRIPT
alter table prestamo
add constraint personas_prestamo_fk foreign key(cedula)
references personas(cedula)

