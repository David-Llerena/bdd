select * from registro_entrada
select * from empleado

select cedula_empleado , count(*) as total_registros_entrada from registro_entrada
group by cedula_empleado

SELECT MIN(fecha) AS fecha_minima,
       MAX(fecha) AS fecha_maxima
FROM registro_entrada;