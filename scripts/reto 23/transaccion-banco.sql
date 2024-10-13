--TRANSACCIONES
drop table transacciones
select * from transacciones
create table transacciones(
	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1) not null,
	fecha date,
	hora time,
	constraint transacciones_pk primary key (codigo)
)
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(1, '22001', 300.00, 'C', '20/09/2023', '23:30');  -- Código 1, tipo C
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78945, '75369', 200.00, 'C', '20/09/2023', '23:30');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(53147, '32102', 500.65, 'D', '15/06/2022', '17:55');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32548, '22002', 600.00, 'C', '17/05/2021', '16:37');  -- Tipo C, cuenta entre 22001 y 22004
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(32165, '51437', 1050.00, 'D', '25/04/2020', '15:48');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(78542, '22003', 300.00, 'C', '20/03/2019', '22:19');  -- Tipo C, cuenta entre 22001 y 22004
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(23210, '32015', 400.00, 'C', '13/05/2023', '13:55');  -- Tipo C
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(35412, '85214', 600.00, 'D', '07/12/2015', '20:14');
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(54193, '22004', 800.00, 'C', '06/11/2012', '11:00');  -- Tipo C, cuenta entre 22001 y 22004
insert into transacciones(codigo, numero_cuenta, monto, tipo, fecha, hora)
values(95124, '74125', 900.00, 'D', '23/10/2002', '09:00');
--BANCO
drop table banco
select * from banco
create table banco(
	codigo_banco int not null,
	codigo_transaccion int not null,
	detalle varchar(100) not null,
	constraint codigo_banco_pk primary key (codigo_transaccion)
)
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (1, 1, 'Banco Central');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (2, 78945, 'Banco del Estado');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (3, 53147, 'Banco Internacional');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (4, 32548, 'Banco Popular');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (5, 32165, 'Banco de Ahorros');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (6, 78542, 'Banco de Desarrollo');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (7, 23210, 'Banco Empresarial');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (8, 35412, 'Banco Hipotecario');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (9, 54193, 'Banco de Inversión');
insert into banco(codigo_banco, codigo_transaccion, detalle)
values (10, 95124, 'Banco Rural');
--SCRIPT
alter table transacciones
add constraint banco_transacciones_fk foreign key(codigo)
references banco(codigo_transaccion);

select * from 
transacciones t,banco b
where t.codigo=b.codigo_transaccion