USE [master]
GO
/****** Object:  Database [NetflixCristian]    Script Date: 28/04/2018 11:42:11 a.m. ******/



create procedure Sp1
(@valor money)
as
begin
select * from dbo.Detalle_Producto
where PTotal < @valor
end
exec Sp1 50


create procedure Sp2
(@valor int)
as
begin
select * from dbo.Peliculas_Identitys
where cantidad = @valor 
end
exec Sp2 300


create procedure Sp3
(@valor varchar(20))
as
begin
select * from dbo.Producto_Detalle_Orden
where Producto = @valor 
end
exec Sp3 'Tabcin'


create procedure Sp4
(@valor varchar(20))
as
begin
update dbo.Productor_usuario
set Nombre_usuario = @valor
where  Nombre_usuario = 'Facturacion San Nicolás' 
end
exec Sp4 'Facturacion Monterrey'

create procedure Sp5
(@valor money)
as
begin
update dbo.Producto_Detalle_Orden
set precio = @valor
where precio = 80 
end
exec Sp5 100 




create function funcion1(@valor1 int, @valor2 int)
returns int
as 
begin
return @valor1 + @valor2
end
select dbo.funcion1(50, 40)


create trigger trig
on producto
after update  
as begin
select *
from INSERTED
select *
from DELETED
end 

select * from producto
update producto
set precio = 100
where precio = 200

create trigger trig
on producto
instead  of update  
as 
begin
update producto
set precio = 55.00
where precio= 50.00
end 