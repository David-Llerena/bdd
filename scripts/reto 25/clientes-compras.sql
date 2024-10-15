select * from clientes
select * from compras

select cedula,sum(monto) from compras
group by cedula

SELECT DISTINCT fecha_compra, COUNT(*) OVER (PARTITION BY fecha_compra) AS numero_de_compras
FROM compras
WHERE fecha_compra = '2023-07-10'