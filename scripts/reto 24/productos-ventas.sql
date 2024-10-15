select * from productos
select * from ventas

select  pr.nombre, pr.stock, vt.cantidad from
productos pr, ventas vt
where
pr.codigo = vt.codigo_producto and
pr.nombre like '%m%' or
pr.descripcion = '0'

select  pr.nombre, pr.stock from
productos pr, ventas vt
where
pr.codigo = vt.codigo_producto and 
vt.cantidad= 5

 