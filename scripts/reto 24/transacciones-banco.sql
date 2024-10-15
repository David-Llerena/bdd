select * from transacciones
select * from banco

select tr.* from
transacciones tr, banco bc
where
tr.codigo = bc.codigo_transaccion and
tipo = 'C' and numero_cuenta between '22001' and '22004'

select tr.* from
transacciones tr, banco bc
where
tr.codigo = bc.codigo_transaccion and
bc.codigo_transaccion='1'