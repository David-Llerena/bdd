--REGISTROS DE ENTRADA
drop table registros_entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	codigo_empleado int not null,
	constraint registro_pk primary key(codigo_registro)
)
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12345, '1754416489', '2023-08-15', '09:00', 2201);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12355, '1758254591', '2023-09-05', '10:30', 2021);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12346, '1715974492', '2023-10-10', '11:15', 2031);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12347, '1735642583', '2023-11-20', '12:00', 2041);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12389, '1707416984', '2023-12-01', '08:45', 2051);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12349, '1778541235', '2023-12-15', '09:30', 2061);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12310, '1742158637', '2023-12-20', '11:00', 2071);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12311, '1756321784', '2023-12-25', '13:00', 2081);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12358, '1712546328', '2023-08-01', '08:30', 2201);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values (12378, '1725785413', '2023-12-31', '12:15', 2101);
--EMPLEADO
drop table empleado
select * from empleado
create table empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key (codigo_empleado)
	
)
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2201, 'Carlos Pérez', '2023-08-15', '09:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2021, 'Ana Gómez', '2023-09-05', '10:30');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2031, 'Luis Fernández', '2023-10-10', '11:15');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2041, 'María Torres', '2023-11-20', '12:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2051, 'Roberto Sánchez', '2023-12-01', '08:45');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2061, 'Sofía Martínez', '2023-12-15', '09:30');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2071, 'Pedro Ramírez', '2023-12-20', '11:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2081, 'Laura López', '2023-12-25', '13:00');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2211, 'Marta Ruiz', '2023-08-01', '08:30');
insert into empleado(codigo_empleado, nombre, fecha, hora)
values (2101, 'José González', '2023-12-31', '12:15');
--SCRIPT
alter table registros_entrada
add constraint empleado_registros_entrada_fk foreign key (codigo_empleado)
references empleado(codigo_empleado)