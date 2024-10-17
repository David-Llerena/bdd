-----QUERY MUCHOS A MUCHOS
--HABITACIONES-HUESPEDES
--consulta 1
select hb.habitacion_numero, hp.nombres , hp.apellidos from
habitaciones hb, huespedes hp, reservas rv
where 
hb.habitacion_numero=rv.habitacion_id and hp.id=rv.huesped_id

select nombres, apellidos
from huespedes
where id in (
select huesped_id
from reservas
where habitacion_id = 2
);

select hb.habitacion_numero, count(rv.huesped_id) as cantidad_huespedes
from habitaciones hb, huespedes hp, reservas rv
where hb.habitacion_numero=rv.habitacion_id and hp.id=rv.huesped_id
group by hb.habitacion_numero;

--consulta 2
select hb.habitacion_numero,hb.piso,hp.nombres , hp.apellidos from
habitaciones hb, huespedes hp, reservas rv
where 
hb.habitacion_numero=rv.habitacion_id and hp.id=rv.huesped_id
and hb.piso = 4 

select nombres, apellidos
from huespedes
where id in (
select huesped_id
from reservas
where habitacion_id = 3
);

select hb.habitacion_numero, avg(rv.huesped_id) as cantidad_huespedes
from habitaciones hb, huespedes hp, reservas rv
where hb.habitacion_numero=rv.habitacion_id and hp.id=rv.huesped_id
group by hb.habitacion_numero;

--consulta 3
select hb.habitacion_numero,hp.nombres , hp.apellidos from
habitaciones hb, huespedes hp, reservas rv
where 
hb.habitacion_numero=rv.habitacion_id and hp.id=rv.huesped_id

select nombres, apellidos
from huespedes
where id in (
select huesped_id
from reservas
where habitacion_id = 4
);

select hb.habitacion_numero, sum(rv.huesped_id) as cantidad_huespedes
from habitaciones hb, huespedes hp, reservas rv
where hb.habitacion_numero=rv.habitacion_id and hp.id=rv.huesped_id
group by hb.habitacion_numero;