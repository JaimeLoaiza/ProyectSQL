use ProyectSQLintensive
go
create table Personitas
(
Nombre varchar(50) not null PRIMARY KEY,
Apellido varchar(50) not null,
Edad int not null,
Genero varchar(10) not null
)

create procedure sp_personas @nombre varchar(50), @apellido varchar(50), @edad int, @genero varchar(10)
as
begin

Select * from Personitas where Nombre = @nombre and Apellido = @apellido and Edad = @edad and Genero = @genero;
print 'Consulta Exitosa';

end

EXEC sp_personas @nombre = 'Mauricio', @apellido = 'CaroG', @edad = 24, @genero = 'Masculino'