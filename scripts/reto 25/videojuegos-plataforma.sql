select * from videojuegos
select * from plataformas

select codigo_videojuegos , count(*) from plataformas
group by codigo_videojuegos

select round(avg(valoracion),2) as valoracion_promedio from videojuegos
