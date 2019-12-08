use [ProyectVisual.Net]
go
create table Persona
(
IdPersona int IDENTITY (1, 1) not null PRIMARY KEY,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Edad int not null,
Genero varchar(10) not null,
IdVehiculo int not null,
IdCasa int not null,
IdNacionalidad int not null
CONSTRAINT FK_IdVehiculo FOREIGN KEY (IdVehiculo) REFERENCES Vehiculo (IdVehiculo),
CONSTRAINT FK_IdCasa FOREIGN KEY (IdCasa) REFERENCES Casa (IdCasa),
CONSTRAINT FK_IdNacionalidad FOREIGN KEY (IdNacionalidad) REFERENCES Nacionalidad (IdNacionalidad)
)

insert into Persona values ('Yulady', 'Gutierrez', 39, 'Femenino', 1, 1, 1);

insert into Persona values ('Isabel', 'Loaiza', 9, 'Femenino', 2, 2, 2);

insert into Persona values ('Salomon', 'Loaiza', 8, 'Masculino', 3, 3, 3)

create table Vehiculo
(
IdVehiculo int IDENTITY (1, 1) not null PRIMARY KEY,
NombreVehiculo varchar(50) not null,
Modelo varchar(50) not null,
Kilometraje float not null,
Color varchar(25) not null
)

insert into Vehiculo values ('Mazda', 2015, 17800, 'Gris');

insert into Vehiculo values ('Mazda', 2015, 15000, 'Azul Celeste');

insert into Vehiculo values ('Renault', 2013, 27500, 'Blanco Puro')

create table Casa
(
IdCasa int IDENTITY (1, 1) not null PRIMARY KEY,
Nombre varchar(50) not null,
Direccion varchar(50) not null,
MetrosCuadrados float not null
)

insert into Casa values ('CasaLoaizaCortés', 'Cl6Sur#14', 145.15);

insert into Casa values ('CasaLoaizaGutierrez', 'Cra55#78', 86.42);

insert into Casa values ('CasaGutierrezTobón', 'Trv39B#5', 121.85);

create table Nacionalidad
(
IdNacionalidad int IDENTITY (1, 1) not null PRIMARY KEY,
NombrePais varchar(30) not null
)

insert into Nacionalidad values ('Colombia');

insert into Nacionalidad values ('Brasil');

insert into Nacionalidad values ('Francia');

create procedure sp_ejercicioDiaTres
as
begin

Select per.Nombre, per.Apellido, per.Edad, per.Genero, veh.NombreVehiculo, veh.Modelo, veh.Kilometraje, veh.Color, cas.Nombre, cas.Direccion, cas.MetrosCuadrados, nac.NombrePais FROM [ProyectVisual.Net].[dbo].Persona as per LEFT JOIN [ProyectVisual.Net].[dbo].Vehiculo as veh ON per.IdPersona = veh.IdVehiculo LEFT JOIN [ProyectVisual.Net].[dbo].Casa as cas ON per.IdPersona = cas.IdCasa LEFT JOIN [ProyectVisual.Net].[dbo].Nacionalidad as nac ON per.IdPersona = nac.IdNacionalidad

Delete From [ProyectVisual.Net].[dbo].Persona WHERE IdPersona = 2

end
go