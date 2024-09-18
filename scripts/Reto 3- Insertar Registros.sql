select * from productos

-- Crear y ejecutar 5 insert con todos los campos de la tabla de productos
insert into productos(codigo,nombre,descripcion,precio,stock)
values(12345,'Vainilla','Polvo condimento para tortas',23.50,10)
insert into productos(codigo,nombre,descripcion,precio,stock)
values(13456,'Frambuesa','Fruta para postres',20,15)
insert into productos(codigo,nombre,descripcion,precio,stock)
values(12456,'Panela','Endulzante natural',15,13)
insert into productos(codigo,nombre,descripcion,precio,stock)
values(12356,'Canela','Polvo de sabor para bocados',19,10)
insert into productos(codigo,nombre,descripcion,precio,stock)
values(12467,'Harina','Base de postres',15.9,17)

-- Crear y ejecutar 3 insert con los campos obligatorios de la tabla productos
insert into productos(codigo,nombre,descripcion,precio,stock)
values(23456,'Arroz','Es arroz',25,10)
insert into productos(codigo,nombre,descripcion,precio,stock)
values(34567,'Pasta','Para comer',22,15)
insert into productos(codigo,nombre,descripcion,precio,stock)
values(45678,'Mantequilla','Para poner en el pan',2.30,10)

select * from cuentas

--Crear y ejecutar 10 inserts en la tabla cuentas
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('01234','11111','27/08/2024',200)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('22222','22222','25/08/2024',100)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('33333','33333','26/08/2024',500)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('44444','44444','27/08/2024',900)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('55555','55555','25/08/2024',200)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('66666','66666','27/08/2024',400)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('77777','77777','27/08/2024',100)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('88888','88888','23/08/2024',600)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('99999','99999','27/08/2024',300)
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00000','00000','23/08/2024',190)

select * from estudiantes

--Crear y ejecutar 8 inserts en la tabla estudiantes
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0926324237','David','Llerena','dllerena@outlook.com','27/08/1996')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0912345678','Roberto','Celin','rcelin@outlook.com','24/09/1993')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0923456789','Karla','Cevallos','kcevallos@outlook.com','26/04/1990')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0934567890','Genesis','Orellana','gorellana@outlook.com','17/03/2000')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0945678901','Rodrigo','Zambrano','rzambrano@outlook.com','09/09/1995')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0956789012','Omar','Figueroa','ofigueroa@outlook.com','20/02/1993')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0967890123','Camila','Esteves','cesteves@outlook.com','22/05/1997')
insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0978901234','Sandra','Garcia','sgarcia@outlook.com','21/06/1993')

select * from registro_entrada

--Crear y ejecutar 10 inserts en la tabla registro_entrada
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2890,'1234567890','27/08/2024','10:05')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2990,'2345678901','26/08/2024','10:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2190,'3456789012','27/08/2024','10:10')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2290,'4567890123','28/08/2024','10:05')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2390,'5678901234','26/08/2024','10:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2490,'6789012345','27/08/2024','10:04')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2590,'7890123456','25/08/2024','10:03')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2690,'8901234567','27/08/2024','10:02')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2790,'9012345678','26/08/2024','10:01')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2090,'0123456789','27/08/2024','10:07')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2091,'9123456780','28/08/2024','10:03')

select * from videojuegos

--Crear y ejecutar 5 inserts
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(11111,'Mario Kart','Es de carritos de Mario Bros',5)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(22222,'Mario party','Es de puzzle de Mario Bros',4)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(33333,'Valorant','Es shooter tactico',4)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(44444,'Gravity','Es de movil muy bueno',5)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(55555,'DOOM','Es doom y corre donde sea',5)

--Crear 3 inserts con solo los campos obligatorios de la tabla videojuegos
insert into videojuegos(codigo,nombre,valoracion)
values(66666,'Devil May Cry',5)
insert into videojuegos(codigo,nombre,valoracion)
values(77777,'Black Myth: Wukong',5)
insert into videojuegos(codigo,nombre,valoracion)
values(88888,'Child of Light',5)

select * from transacciones

--Crear y ejecutar 10 inserts con todos los campos de la tabla transacciones y los valores permitidos en tipo son C o D
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(00000,'00000',200,'C','27/09/2023','20:50')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(11111,'11111',201,'D','29/08/2024','10:04')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(22222,'22222',121,'D','22/07/2023','09:03')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(33333,'33333',325,'C','22/05/2024','12:05')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(44444,'44444',456,'D','20/03/2024','11:04')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(55555,'55555',123,'C','10/02/2024','10:09')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(66666,'66666',111,'C','10/02/2023','10:14')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(77777,'77777',555,'D','04/03/2023','09:04')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(88888,'88888',444,'D','14/04/2024','19:04')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(99999,'99999',655,'C','14/05/2024','10:02')