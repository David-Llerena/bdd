 --PRODUCTO
 select * from productos
--actualizar el stock a 0 en todos los productos donde la descripcion sea null
 update productos set stock=0
 where descripcion is null 

 --CUENTAS
 select * from cuentas
 --actualizar el saldo a 10 de las cuentas cuyas cedula_propietario empiece por 17
 update cuentas set saldo=10
 where cedula_propietario like '17&'

 --ESTUDIANTES
 select * from estudiantes
 --acualizar el apellido por hernandez a todos los estudiantes que tendan una decual que empiece por 1
 update estudiantes set apellido='Hernandez'
 where cedula like '17&'

--REGISTRO_ENTRADA
select * from registro_entrada
--actualiza todas las cedulas de registro_entrada por "082345679" para todos los registros del mes de agosto
update registro_entrada set cedula_empleado='082345679'
where fecha between '2024-08-01' and '2024-08-31'

--VIDEOJUEGOS
select * from videojuegos
--actualiza todas las descripciones de los videojuegos cuya valoracion sera mayor que 9 por mejor puntuado
update videojuegos set descripcion='Mejor puntuado'
where valoracion > 9

--TRANSACCIONES
select * from transacciones
-- actualiza tipo de datos de registro que tengan una transaccion mayor a 100 y menor que 500 que se hayan llevado a cabo el mes de septiembre con horas de 14:00 y 20:00 por T
UPDATE Transacciones SET Tipo = 'T'
WHERE monto > '100' AND monto < '500' AND fecha >= '2024-09-01' AND fecha < '2024-10-01' AND hora >= '14:00:00' AND hora < '20:00:00'
