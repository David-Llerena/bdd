select * from transacciones
select * from banco

select count(*) as total_transacciones_credito from transacciones
where tipo = 'C'

SELECT numero_cuenta, 
       ROUND(AVG(CAST(monto AS decimal)), 2) AS monto_promedio
FROM transacciones
GROUP BY numero_cuenta;