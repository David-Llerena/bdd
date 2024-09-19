--PRODUCTOS
select * from productos
--crear un select que traiga todos los productos que empiecen con Q
select * from productos
where nombre like 'q%'
--crear un select que traiga los productos con una descripcion de null
select * from productos
where descripcion is null
--crear un select que traiga todos los productos con un precio entre 2 y 3
select * from productos
where precio between '2' and '3'

--CUENTAS
select * from cuentas
--crear un select que traiga el numero de cuenta y el saldo de todas las cuentas
select numero_cuenta, saldo from cuentas
--crear un select que traiga los registros entre el dia de hoy hasta 2 meses antes
select * from cuentas
WHERE fecha_creacion >= CURRENT_DATE - INTERVAL '2 months'
AND fecha_creacion < CURRENT_DATE
--crear un select que traiga el numero de cuenta y el saldo de las cuentas desde el dia de hoy hasta 2 meses antes
select numero_cuenta, saldo from cuentas
WHERE fecha_creacion >= CURRENT_DATE - INTERVAL '2 months'
AND fecha_creacion < CURRENT_DATE

--ESTUDIANTES
select * from estudiantes
--crear un select que traiga el nombre y cedula del estudiante
select nombre, cedula from estudiantes
--crear un select que traiga los nombres de todos loa alumnos cuya cedula empiece con 17
select nombre from estudiantes
where cedula like '17%'
--crear un select que traiga los nombre completos de todos los estudiantes cuyo nombre empiece con A
select nombre,apellido from estudiantes
where nombre like 'a%'

--REGISTRO_ENTRADA
select * from registro_entrada
--select de todas las cedulas, fecha y hora de los registro de entrada
select cedula_empleado, fecha, hora from registro_entrada
--select de registros de entrada que esten entre las 7 y 14
select * from registro_entrada
where hora between '7:00' and '14:00'	
--select de registro de entrada que tengas horas superiores a 8:00
select * from registro_entrada
where hora > '08:00'

--VIDEOJUEGOS
select * from videojuegos
---select todos los videojuegos con un nombre que comience con C
select * from videojuegos
where nombre like 'C%'
--select videojuegos con una valoracion entre 9 y 10
select * from videojuegos
where valoracion between 9 and 10
--select videojuegos con una descripcion null
select * from videojuegos
where descripcion is null

--TRANSACCIONES
select * from transacciones
--select todas las transacciones con un tipo D
select * from transacciones
where tipo = 'D'
--select las transacciones con montos entre 200 y 2000
select * from transacciones
where monto between '200' and '2000'
--select el codigo, monto, tipo y fecha de las transacciones que tengan una fecha diferente de null
select codigo,monto,tipo,fecha from transacciones
where fecha is not null