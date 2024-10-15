select cu.numero_cuenta, us.nombre from
usuario us, cuentas cu
where
us.cedula=cu.cedula_propietario and
saldo between '100'	and '1000'

select cu.numero_cuenta, cu.fecha_creacion,cu.saldo,us.cedula
from usuario us, cuentas cu
where us.cedula = cu.cedula_propietario 
 and cu.fecha_creacion between '2022-09-21' and '2023-09-21'