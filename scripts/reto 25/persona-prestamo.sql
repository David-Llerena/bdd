select * from personas
select * from prestamo

select cedula , sum(monto) from prestamo
group by cedula

select count(*) as total_personas from personas
where numero_hijos > 1