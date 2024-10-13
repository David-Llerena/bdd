--CUENTAS--
drop table cuentas
select * from cuentas
create table cuentas(
	numero_cuenta char (5) not null,
	cedula_propietario char (5) not null,
	fecha_creacion date not null,
	saldo money not null,
	constraint cuentas_pk primary key (cedula_propietario)
)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25569,17504,'2022-09-15',500);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25570,17500,'2022-08-21',600);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25571,17501,'2023-01-22',700);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25572,17508,'2023-05-15',800);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25573,17509,'2023-03-15',900);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25574,17510,'2023-09-21',1000);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25575,17507,'2023-09-15',950);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25576,17515,'2023-02-10',300);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25577,17512,'2022-11-25',150);
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values (25578,17503,'2022-08-30',850);
--USUARIO
create table usuario(
	cedula char(5),
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_cuentas_pk primary key(cedula)
)
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17504,'Carlos','Gómez','Corriente',1000);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17500,'María','Pérez','Ahorro',1500);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17501,'Juan','Rodríguez','Corriente',2000);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17508,'Ana','Fernández','Ahorro',500);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17509,'Luis','Ramírez','Corriente',3000);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17510,'Pedro','Martínez','Ahorro',2500);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17507,'Sofía','López','Corriente',4000);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17515,'Jorge','García','Ahorro',6000);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17512,'Valeria','Sánchez','Corriente',1200);
insert into usuario(cedula,nombre,apellido,tipo_cuenta,limite_credito)
values (17503,'Felipe','Díaz','Ahorro',1800);
--SCRIPT
alter table cuentas
add constraint cedula_propietario_fk
foreign key (cedula_propietario)
references usuario(cedula)