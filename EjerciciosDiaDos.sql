USE [ProyectVisual.Net]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 28/11/2019 11:24:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personas](
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Genero] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 28/11/2019 11:24:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[Nombre_Vehiculo] [varchar](50) NOT NULL,
	[Modelo] [varchar](50) NOT NULL,
	[Kilometraje] [float] NOT NULL,
	[Color] [varchar](25) NOT NULL,
	[NombrePersonas] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Nombre_Vehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_NombrePersonas] FOREIGN KEY([NombrePersonas])
REFERENCES [dbo].[Personas] ([Nombre])
GO
ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_NombrePersonas]
GO
/****** Object:  StoredProcedure [dbo].[sp_personas]    Script Date: 28/11/2019 11:24:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_personas] @nombre varchar(50), @apellido varchar(50), @edad int, @genero varchar(10)
as
begin

Select * from Personas;
print 'Consulta Exitosa';

end
GO
/****** Object:  StoredProcedure [dbo].[sp_vehiculo]    Script Date: 28/11/2019 11:24:22 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_vehiculo] @nombre varchar (50), @modelo varchar (50), @kilometraje float, @color varchar (25)
as
begin

Select * from Vehiculo;
print 'Consulta Exitosa';

end
GO
