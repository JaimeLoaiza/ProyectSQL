use [ProyectVisual.Net]
go
create table Persona
(
IdPersona int IDENTITY (1, 1) not null PRIMARY KEY,
Nombre varchar(30) not null,
Apellido varchar(30) not null,
Edad int not null,
Genero varchar(10) not null,
IdVehiculo int not null
CONSTRAINT FK_IdVehiculo FOREIGN KEY (IdVehiculo) REFERENCES Vehiculo (IdVehiculo)

)

insert into Persona values ('Yulady', 'Gutierrez', 39, 'Femenino', 1);

insert into Persona values ('Isabel', 'Loaiza', 9, 'Femenino', 2);

insert into Persona values ('Salomon', 'Loaiza', 8, 'Masculino', 3)


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

create procedure sp_ejercicioDiaDos
as
begin

Select per.Nombre, per.Apellido, per.Edad, per.Genero, veh.NombreVehiculo, veh.Modelo, veh.Kilometraje, veh.Color FROM [ProyectVisual.Net].[dbo].Persona as per LEFT JOIN [ProyectVisual.Net].dbo.Vehiculo as veh ON per.IdVehiculo = veh.IdVehiculo 
end
go