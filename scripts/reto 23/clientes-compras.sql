--CLIENTES
select * from clientes
drop table clientes
create table clientes(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	constraint clientes_pk primary key (cedula)
)
insert into clientes(cedula, nombre, apellido) 
values ('1072345678', 'Juan', 'Pérez');  -- Cédula con número 7
insert into clientes(cedula, nombre, apellido) 
values ('1017345679', 'María', 'Gómez');  -- Cédula con número 7
insert into clientes(cedula, nombre, apellido)
values ('1012345680', 'Carlos', 'Ramírez');
insert into clientes(cedula, nombre, apellido) 
values ('1012345681', 'Ana', 'Rodríguez');
insert into clientes(cedula, nombre, apellido) 
values ('1072345682', 'Luis', 'Fernández');  -- Cédula con número 7
insert into clientes(cedula, nombre, apellido)
values ('1012345683', 'Sofía', 'Martínez');
insert into clientes(cedula, nombre, apellido) 
values ('1012345684', 'Jorge', 'Díaz');
insert into clientes(cedula, nombre, apellido) 
values ('1012345685', 'Mónica', 'Morales');  -- Cliente con el nombre "Mónica"
insert into clientes(cedula, nombre, apellido) 
values ('1072345686', 'Pedro', 'Vega');  -- Cédula con número 7
insert into clientes(cedula, nombre, apellido) 
values ('1012345687', 'Camila', 'Ríos');
--COMPRAS
drop table compras
create table compras(
	id_compra int not null,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null,
	constraint compras_pk primary key (id_compra)
)
insert into compras(id_compra,cedula,fecha_compra,monto)
values (1, '1072345678', '2023-09-15', 250.75);  -- Cédula con número 7
insert into compras(id_compra,cedula,fecha_compra,monto)
values (2, '1017345679', '2023-08-22', 100.50);  -- Cédula con número 7
insert into compras(id_compra,cedula,fecha_compra,monto)
values (3, '1012345680', '2023-07-10', 300.00);
insert into compras(id_compra,cedula,fecha_compra,monto)
values (4, '1012345681', '2023-06-05', 75.99);
insert into compras(id_compra,cedula,fecha_compra,monto)
values (5, '1072345682', '2023-05-18', 120.45);  -- Cédula con número 7
insert into compras(id_compra,cedula,fecha_compra,monto)
values (6, '1012345683', '2023-04-25', 450.30);
insert into compras(id_compra,cedula,fecha_compra,monto)
values (7, '1012345684', '2023-03-15', 80.00);
insert into compras(id_compra,cedula,fecha_compra,monto)
values (8, '1012345685', '2023-02-10', 670.25);  -- Cliente con el nombre "Mónica"
insert into compras(id_compra,cedula,fecha_compra,monto)
values (9, '1072345686', '2023-01-05', 99.99);  -- Cédula con número 7
insert into compras(id_compra,cedula,fecha_compra,monto)
values (10, '1012345687', '2022-12-20', 230.50);
--SCRIPT
alter table compras
add constraint compras_clientes_fk foreign key (cedula)
references clientes(cedula)