select * from estudiantes
select * from profesores

select  codigo_profesor , count(*) from estudiantes
group by codigo_profesor

SELECT ROUND(AVG(
    EXTRACT(YEAR FROM CURRENT_DATE) - 
    EXTRACT(YEAR FROM fecha_nacimiento)
)) AS edad_promedio
FROM estudiantes