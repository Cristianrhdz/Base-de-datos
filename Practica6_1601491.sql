USE [master]
GO
/****** Object:  Database [Practica 1]    Script Date: 28/04/2018 10:39:20 a.m. ******/

select * from Usuario
select * from detallecompra
select * from peliculas
select * from ordencompra 
select * from producto
select * from Productor

create view Productor_Usuario as 
select s.nombre_usuario as NombreUsuario, s.direccion as DireccionUsuario, p.nombre as Productor, p.telefono as CelularUsuario
from Usuario s
join Productor p on s.id_usuario = p.ID_Usuario

create view Inventario_Producto as
select p.*, i.Cantidad_Almacen as Cantidad
from Producto p
join peliculas i on p.ID_Producto = i.ID_Producto

create view Detalle_Producto as
select p.tipo as tipo, SUM(d.precio) as PTotal, SUM(d.cantidad) as CTotal
from DetalleCompra d
join producto p on d.ID_Producto = p.ID_Producto
group by p.tipo

create view Producto_Detalle_Orden as
select p.Nombre as Producto, d.Precio as precio, d.cantidad as cantidad, o.fecha as fecha
from DetalleCompra d 
join producto p on d.ID_Producto = p.ID_Producto
join OrdenCompra o on d.ID_Compra = o.ID_Compra

create view Sucursal_Inventario_Producto as
select s.nombre_usuario as Usuario ,p.nombre as producto, i.cantidad_almacen as cantidad
from peliculas i
join producto p on i.ID_Producto = p.ID_Producto
join Usuario s on i.ID_Usuario = s.id_usuario

select * from
select Tipo, count(*) as CantidadProductos
from producto
group by tipo
)as t
where t.CantidadProducto >1

with MP as (
select producto, MAX(precio) as PrecioMaximo
from Producto_Detalle_Orden
group by producto
)
select *
from MP


select NombreUsuario, Productor
into #UsuarioTipo
from Productor_Usuario

select * from #UsuarioTipo