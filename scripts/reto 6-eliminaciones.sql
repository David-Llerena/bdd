--PRODUCTOS
delete from productos
where descripcion is null

 --CUENTAS
 delete from cuentas
 where cedula_propietario like '10&'

--ESTUDIANTES
delete from estudiantes
where cedula like '%05'

--REGISTRO_ENTRADA
delete from registro_cuentas
where where fecha between '2024-07-01' and '2024-07-31'

--VIDEOJUEGOS
delete from videojuegos
where valoracion < 7

--TRANSACCIONES
delete from transacciones
WHERE fecha >= '2024-08-01' AND fecha <= '2024-08-31' AND hora >= '14:00:00' AND hora < '18:00:00'