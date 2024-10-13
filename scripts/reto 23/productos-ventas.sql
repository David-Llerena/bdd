--PRODUCTOS
drop table productos

create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Jabón','Lava todo',3.50,10);
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (2, 'Shampoo', 'Savital', 2.50, 20);
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (3, 'Deja', 'Deja', 1.50, 30);
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (4, 'Pasta dental', 'Fortident', 3.0, 40);
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (5, 'Cera', 'Cera de piso', 2.50, 50);
-- Producto con "m" en el nombre y descripcion NULL
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (6, 'Pan', NULL, 1.50, 50);
-- Producto con "m" en el nombre
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (7, 'Queso', 'Queso fresco', 5.50, 60);
-- Producto con "m" en el nombre
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (8, 'Leche', 'Leche entera', 2.50, 70);
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (9, 'Jamón', 'Jamón cocido', 1.00, 120);
insert into productos(codigo, nombre, descripcion, precio, stock) 
values (10, 'Coca Cola', 'Bebida gaseosa', 3.50, 300);
--VENTAS
drop table ventas
create table ventas(
	id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int ,
	constraint ventas_pk primary key(id_venta)
)
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (1, 2, '2024-10-01', 5);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (2, 3, '2024-10-02', 10);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (3, 4, '2024-10-03', 3);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (4, 5, '2024-10-04', 4);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (5, 6, '2024-10-05', 2);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (6, 7, '2024-10-06', 6);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (7, 8, '2024-10-07', 1);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (8, 9, '2024-10-08', 8);
insert into ventas(id_venta, codigo_producto, fecha_venta, cantidad) 
values (9, 10, '2024-10-09', 12);
--SCRIPT
alter table ventas
add constraint ventas_productos_fk 
foreign key (codigo_producto)
references productos(codigo)