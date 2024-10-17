-----QUERY MUCHOS A MUCHOS
--MUNICIPIO-PROYECTOS
--consulta 1
select mu.nombre, py.proyecto from
municipio mu, proyecto py, proyecto_municipio pm
where 
mu.id = pm.municipio_id and py.id=pm.proyecto_id

select proyecto
from proyecto
where id in (
select proyecto_id
from proyecto_municipio
where municipio_id = 1
);

select mu.nombre, count(pm.proyecto_id) as cantidad_proyectos
from municipio mu, proyecto py, proyecto_municipio pm
where mu.id = pm.municipio_id and py.id=pm.proyecto_id
group by mu.nombre;

--consulta 2
select mu.nombre, py.proyecto from
municipio mu, proyecto py, proyecto_municipio pm
where 
mu.id = pm.municipio_id and py.id=pm.proyecto_id
and mu.nombre like '%GAD%'

select mu.nombre, min(pm.proyecto_id) as cantidad_proyectos
from municipio mu, proyecto py, proyecto_municipio pm
where mu.id = pm.municipio_id and py.id=pm.proyecto_id
group by mu.nombre;

--consulta 3
select mu.nombre, mu.ciudad_id from
municipio mu, proyecto py, proyecto_municipio pm
where 
mu.id = pm.municipio_id and py.id=pm.proyecto_id

select proyecto
from proyecto
where id in (
select proyecto_id
from proyecto_municipio
where municipio_id = 3
);

select mu.nombre, max(pm.proyecto_id) as cantidad_proyectos
from municipio mu, proyecto py, proyecto_municipio pm
where mu.id = pm.municipio_id and py.id=pm.proyecto_id
group by mu.nombre;