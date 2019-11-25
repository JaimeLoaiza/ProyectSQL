USE [ProyectSQLintensive]
GO
/****** Object:  Table [dbo].[Personitas]    Script Date: 25/11/2019 12:07:36 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personitas](
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
/****** Object:  StoredProcedure [dbo].[sp_personas]    Script Date: 25/11/2019 12:07:37 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_personas] @nombre varchar(50), @apellido varchar(50), @edad int, @genero varchar(10)
as
begin

Select * from Personitas where Nombre = @nombre and Apellido = @apellido and Edad = @edad and Genero = @genero;
print 'Consulta Exitosa';

end
GO
