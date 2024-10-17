--MUCHOS A MUCHOS
---CREACION TABLAS Y TABLA DE ROMPIMIENTO
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key(codigo)
)
create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono char (10) not null,
	constraint proveedores_pk primary key(codigo)
)

create table productos_por_proveedor(
	pp_codigo_producto int not null,
	pp_codigo_proveedor int not null,
	precio money not null,
	constraint producto_fk foreign key (pp_codigo_producto) referencias productos(codigo),
	constraint proveedor_fk foreign key (pp_codigo_proveedor) referencias proveedores(codigo),
	constraint productos_por_proveedor_pk primary key (pp_codigo_producto,pp_codigo_proveedor)
)
--INSERTS
---PRODUCTOS
insert into productos(codigo,nombre,stock)
values(100,'Doritos',100);
insert into productos(codigo,nombre,stock)
values(200,'Kchitos',200);
insert into productos(codigo,nombre,stock)
values(300,'Papas',300);
insert into productos(codigo,nombre,stock)
values(400,'Takis',0);
---PROVEEDORES
insert into proveedores(codigo,nombre,telefono)
values(1,'Snacks SA','0992920306');
insert into proveedores(codigo,nombre,telefono)
values(2,'Distrisnacks','0998723221');
---TABLA DE ROMPIMIENTO
insert into productos_por _proveedores(pp_codigo_producto,pp_codigo_proveedor,precio)
values(300,1,0.48)
insert into productos_por _proveedores(pp_codigo_producto,pp_codigo_proveedor,precio)
values(300,2,0.49)
insert into productos_por _proveedores(pp_codigo_producto,pp_codigo_proveedor,precio)
values(100,1,0.50)
insert into productos_por _proveedores(pp_codigo_producto,pp_codigo_proveedor,precio)
values(200,1,0.51)
insert into productos_por _proveedores(pp_codigo_producto,pp_codigo_proveedor,precio)
values(400,2,0.50)

--SELECTS
select * from productos
select * from proveedores
select * from productos_por_proveedores

select * from productos prod, proveedores prov, productos_por_proveedores pp
where pp.pp_codigo_producto = prod.codigo and pp.pp_codigo_proveedor=prov.codigo
