select * from videojuegos
select * from plataformas

select vd.nombre, vd.descripcion, vd.valoracion, pl.nombre_plataforma from
videojuegos vd, plataformas pl
where
vd.codigo= pl.codigo_videojuegos and
vd.descripcion like '%guerra%' and
vd.valoracion > 7 or (vd.nombre like 'C%'and vd.valoracion > 8 and vd.nombre like 'D%')

select pl.* from 
videojuegos vd, plataformas pl
where
vd.codigo= pl.codigo_videojuegos  and 
vd.nombre='God of War'