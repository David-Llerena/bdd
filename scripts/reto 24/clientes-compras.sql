select * from clientes
select * from compras

select cl.nombre, cl.apellido from
clientes cl, compras cp
where
cl.cedula=cp.cedula and
cp.cedula like '%7%'

select cl.cedula, cl.nombre, cl.apellido from
clientes cl, compras cp
where
cl.cedula=cp.cedula and
cl.nombre = 'Mónica'
