select * from usuario
select * from cuentas

select avg(cast (saldo as numeric)) from cuentas
where 
cedula_propietario = '17504'

select tipo_cuenta,count(*)from 
usuario
group by tipo_cuenta