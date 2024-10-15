select * from personas
--OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
--AGREGACION
--COUNT - conteo
select count(cedula) from personas
where estado_civil = 'C'

select count(ec.codigo)
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'
--AVG - promedio
select * from personas
select avg(estatura)from personas
select avg(cast(cantidad_ahorrada) as numeric)from personas

select avg(cast(cantidad_ahorrada)
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

--MAX - MIN -SUM
select max(cast(cantidad_ahorrada) as numeric)from personas
select min(cast(cantidad_ahorrada) as numeric)from personas
select sum(cast(cantidad_ahorrada) as numeric)from personas

--GROUP BY
select estado_civil_codigo,count(*) from personas
group by estado_civil_codigo


