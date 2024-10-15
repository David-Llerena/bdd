select * from estudiantes
select * from profesores

select pr.codigo, es.nombre, es.apellido from
profesores pr, estudiantes es
where
pr.codigo=es.codigo_profesor and
es.apellido like '%n%'

select es.* from
profesores pr, estudiantes es
where
pr.codigo=es.codigo_profesor and
pr.nombre='Francisco'