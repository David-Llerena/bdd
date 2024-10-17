-----QUERY MUCHOS A MUCHOS
--USUARIO-GRUPO
--consulta 1
select us.nombre, gr.nombre from
usuarios us, grupo gr,usuario_grupo us_gr
where 
us.id = us_gr.us_id and gr.id = us_gr.gr_id

select nombre
from usuarios
where id in (
select us_id
from usuario_grupo
where gr_id = 1
);

select grupo.nombre, count(usuario_grupo.us_id) as cantidad_usuarios
from grupo, usuario_grupo 
where grupo.id = usuario_grupo.gr_id
group by grupo.nombre;

--consulta 2
select us.nombre, gr.nombre from
usuarios us, grupo gr,usuario_grupo us_gr
where 
us.id = us_gr.us_id and gr.id = us_gr.gr_id
and gr.nombre like '%intensivo%'


select nombre
from usuarios
where id in (
select us_id
from usuario_grupo
where gr_id = 2
);

select grupo.nombre, max(usuario_grupo.us_id) as max_cantidad_usuarios
from grupo, usuario_grupo
where grupo.id = usuario_grupo.gr_id
group by grupo.nombre;

select grupo.nombre, min(usuario_grupo.us_id) as max_cantidad_usuarios
from grupo, usuario_grupo
where grupo.id = usuario_grupo.gr_id
group by grupo.nombre;

--CONSULTA 3
select us.nombre, gr.nombre from
usuarios us, grupo gr,usuario_grupo us_gr
where 
us.id = us_gr.us_id and gr.id = us_gr.gr_id
and gr.fecha_creacion between '2020-03-08' and '2022-03-08'

select nombre
from usuarios
where id in (
select us_id
from usuario_grupo
where gr_id = 3
);

select grupo.descripcion, count(usuario_grupo.us_id) as cantidad_usuarios
from grupo, usuario_grupo
where grupo.id = usuario_grupo.gr_id 
and grupo.descripcion like '%matutino%'
group by grupo.descripcion;

