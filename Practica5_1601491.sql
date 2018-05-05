USE [master]
GO
/****** Object:  Database [practica2]    Script Date: 03/03/2018 11:02:10 a.m. ******/ 

select Peliculas.Cantidad_Peliculas
from Peliculas
group by Peliculas.Cantidad_Peliculas 
order by Peliculas.Cantidad_Peliculas asc



select count (Identitys.Precio) as 'Cantidad de precios', Max(Identitys.Precio) as 'Precio maximo', Sum (Identitys.Precio) as 'Total de valores', avg (Identitys.Precio) as '.' 
from Identitys
group by Identitys.Precio

select count (Peliculas.Cantidad_Peliculas) as 'Cantidad en almacen', Max(Peliculas.Cantidad_Peliculas) as 'Cantidad Maxima', Sum (Peliculas.Cantidad_Peliculas) as 'Cantidad Total'
from Peliculas
group by Peliculas.Cantidad_Peliculas



select count (Identitys.Precio) as 'Cantidad de precios', Max(Identitys.Precio) as 'Precio maximo', Sum (Identitys.Precio) as 'Total de valores'
from Identitys
where Nombre = 'Next'

select count (Identitys.Precio) as 'Cantidad de precios', Max(Identitys.Precio) as 'Precio maximo', Sum (Identitys.Precio) as 'Total de valores'
from Identitys
where Precio > '50.00'


select count (Peliculas.Cantidad_Peliculas) as 'Cantidad en almacen', Max(Peliculas.Cantidad_Peliculas) as 'Cantidad Maxima', Sum (Peliculas.Cantidad_Peliculas) as 'Cantidad Total'
from Peliculas
group by Peliculas.Cantidad_Peliculas
Having Min (Peliculas.Cantidad_Peliculas) <56

select count (Peliculas.Cantidad_Peliculas) as 'Cantidad en almacen', Max(Peliculas.Cantidad_Peliculas) as 'Cantidad Maxima', Sum (Peliculas.Cantidad_Peliculas) as 'Cantidad Total'
from Peliculas
group by Peliculas.Cantidad_Peliculas
Having  count (Peliculas.Cantidad_Peliculas) <70

SELECT TOP	2 * 
from Usuario
Order by Usuario.Nombre_Usuario desc

SELECT TOP	4 * 
from Peliculas
Order by Peliculas.Cantidad_Peliculas asc