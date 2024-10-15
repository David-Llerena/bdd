select * from registro_entrada
select * from empleado

select re.cedula_empleado, re.fecha, em.nombre from
registro_entrada re, empleado em
where
re.codigo_registro= em.codigo_empleado and
re.fecha between '2023-08-01' and '2023-08-31' or 
re.cedula_empleado like '17%' and
re.hora between '08:00' and '12:00' or
re.fecha between '2023-10-06' and '2023-10-20' or
re.cedula_empleado like '08%' and
re.hora between '09:00' and '13:00'

select em.* from
registro_entrada re, empleado em
where
re.codigo_registro= em.codigo_empleado and
re.codigo_registro = '2201'