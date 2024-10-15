select * from personas
select * from prestamo

select pe.cantidad_ahorrada, pr.monto, pr.garante from
personas pe, prestamo pr
where
pe.cedula=pr.cedula and
monto between '100' and '1000'

select pe.* from
personas pe, prestamo pr
where
pe.cedula=pr.cedula and
pe.nombre = 'Sean'