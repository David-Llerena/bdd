--PRODUCTOS
select * from productos
--1
select * from productos
where stock = 10 and precio < '10'
--2
select nombre,stock from productos
where nombre like '%m%' or descripcion like '% %'
--3
select nombre from productos
where descripcion is null or stock = 0

--CUENTAS
select * from cuentas
--1
select numero_cuenta,saldo from cuentas
where saldo > '100' and saldo < '1000'
--2
select * from cuentas
where fecha_creacion > '20/09/2023' and fecha_creacion <= '20/09/2024'
--3
select * from cuentas
where saldo = '0' or cedula_propietario like '%2'

--ESTUDIANTES
select * from estudiantes
--1
select nombre,apellido from estudiantes
where nombre like 'M%' or apellido like '%z'
--2
select nombre from estudiantes
where cedula like '%32' and cedula like '18%'
--3
select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'

--REGISTROS_ENTRADAS
select * from registros_entrada
--1
select * from registros_entrada
where (fecha between '01/09/2024' and '30/09/2024') or (cedula_empleado like '17%')
--2
select * from registros_entrada
where (hora between '08:00:00' and '12:00:00') and (cedula_empleado like '17%')
--3
select * from registros_entrada
where (hora between '08:00:00' and '12:00:00') and (cedula_empleado like '17%')
or ((fecha between '01/09/2024' and '30/09/2024') or (cedula_empleado like '08%')
and (hora between '09:00:00' and '13:00:00'))

--VIDEOJUEGOS
select * from videojuegos
--1
select * from videojuegos
where nombre like '%C%' or valoracion = 7
--2
select * from videojuegos
where codigo between 3 and 7 or valoracion = 7
--3
select * from videojuegos
where descripcion = 'juego de guerra' and valoracion > 7 and nombre like 'C%'
or valoracion > 8 and nombre like 'D%'

--TRANSACCIONES
select * from transacciones
--1
select * from transacciones
where tipo = 'C' and numero_cuenta between '222001' and '22004'
--2
select * from transacciones 
where tipo = 'D' and fecha = '25/05/2024' and numero_cuenta between '22007' and '22010'
--3
select * from transacciones 
where codigo between 1 and 5 and numero_cuenta between '222002' and '22004' and fecha between '26/05/2024' and '29/05/2024'
