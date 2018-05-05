USE [master] 
GO
/****** Object:  Database [NetflixCristian]    Script Date: 28/04/2018 11:29:23 a.m. ******/

GO

select *
from Identitys

insert into Identitys (ID_Producto, Nombre, Precio)
values (newid(), 'Avengers', 50.00, 'CienciaFiccion')
insert into Identitys
values (newid(), 'alvin', 85, 'CienciaFiccion')
insert into Identitys
values (newid(), 'NoDoit', 95, 'comedia')
insert into Identitys
values (newid(), 'son como ninos', 100, 'ciencia')
insert into Identitys
values (newid(), 'Tedd', 105, 'Comedia')

select * 
from Usuario
 
insert into Usuario 
values (newid(), 'Facuracion Guadalupe', 'paseo tec #255', 8878888, 'Pablito Gzz')
insert into Usuario 
values (newid(), 'Facuracion Monterrey', 'costitucion  #383', 8222236, 'Mariana noaaka')
insert into Usuario 
values (newid(), 'Facuracion San Nicolás', '5 de mayo #225', 81198887, 'Lazaro Cardenas')


select *
from Peliculas

insert into Peliculas
values (newid(), Ted, '3AFA7930-F132-4181-8AAF-2626C2076886', '9C7A3857-7ADD-4F15-AA80-0286248E7AEF')
insert into Peliculas
values (newid(), ToyStory, '25C99E2F-0E59-5B5C-9A7A-46BC774B3F35', '9C7A3857-7ADD-4F15-AA80-0286248E7AEF')
insert into Peliculas
values (newid(), son como ninos, 'C8758663-E01A-498D-AEE4-93FDA52D2219', '55DA3F1F-94C9-432A-A734-6AE3FFA5B6FC')
insert into Peliculas
values (newid(), no digas su nombre, 'C8758663-E01A-498D-AEE4-93FDA52D2219', '9C7A3857-7ADD-4F15-AA80-0286248E7AEF')
insert into Peliculas
values (newid(), avengers, '25C99E2F-0E59-5B5C-9A7A-46BC774B3F35', '5B8025BC-5CB3-4BF8-A5DD-6D02F27B7292')

select *
from Productor

insert into Productor
values (newid(), 'DisneyCha', 'C8758663-E01A-498D-AEE4-93FDA52D2219', '81156325','San Francisco #414')
insert into Productor
values (newid(), 'FoxProductions', '25C99E2F-0E59-5B5C-9A7A-46BC774B3F35', '81278459','Benito Juarez #192-5')
insert into Productor
values (newid(), 'ToroMovies', '3AFA7930-F132-4181-8AAF-2626C2076886', '812208549','Blvd. Acapulco "#45')

select *
from Detalle_Compra

insert into Detalle_Compra
values (newid(), '1143B350-4D87-4CEB-86F0-34D9DCAC297B', '55DA3F1F-94C9-432A-A734-6AE3FFA5B6FC', 300, 4)
insert into Detalle_Compra
values (newid(), 'A37915AC-0B3A-4958-ACDB-625550BBED09', '5B8025BC-5CB3-4BF8-A5DD-6D02F27B7292', 200, 2)
insert into Detalle_Compra
values (newid(), 'F90AF61B-CF72-4922-928F-68BEA7878F52', '2E3E99AE-8A86-4CA7-9725-94326616C531', 150, 1)

select * from Peliculas 

update Peliculas Set Numero_Peliculas = 2
where ID_Inventario = 'EED9B020-1710-487B-A977-715B05878E5B'
update Peliculas Set Numero_Peliculas = 5
where ID_Inventario = '59402DE0-A461-42E2-8921-D6CA098FA61E'

select * from Usuario

update Usuario Set Facturacion = 'paseo tec #255'
where ID_Usuario = '25C99E2F-0E59-5B5C-9A7A-46BC774B3F35' 
update Usuario Set Responsable = 'Paps Cristian'
where ID_Usuario = '25C99E2F-0E59-5B5C-9A7A-46BC774B3F35' 

select * from Identitys	

update Identitys Set Precio = 90
where Nombre = 'Tedd'

delete from Identitys where Precio = 90

delete from Peliculas where ID_Producto = '55DA3F1F-94C9-432A-A734-6AE3FFA5B6FC'
delete from Peliculas where ID_Producto = '5B8025BC-5CB3-4BF8-A5DD-6D02F27B7292'