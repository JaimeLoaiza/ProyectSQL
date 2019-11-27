USE [ProyectVisual.Net]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 26/11/2019 9:40:26 p. m. ******/
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
INSERT [dbo].[Personas] ([Nombre], [Apellido], [Edad], [Genero]) VALUES (N'Carolina', N'Sepulveda', 23, N'Femenino')
INSERT [dbo].[Personas] ([Nombre], [Apellido], [Edad], [Genero]) VALUES (N'Dulce', N'Romero', 10, N'Femenino')
INSERT [dbo].[Personas] ([Nombre], [Apellido], [Edad], [Genero]) VALUES (N'Isabel', N'Loaiza', 9, N'Femenino')
INSERT [dbo].[Personas] ([Nombre], [Apellido], [Edad], [Genero]) VALUES (N'Jose', N'Jaramillo', 56, N'Masculino')
INSERT [dbo].[Personas] ([Nombre], [Apellido], [Edad], [Genero]) VALUES (N'Mauricio', N'Caro G', 23, N'Masculino')
INSERT [dbo].[Personas] ([Nombre], [Apellido], [Edad], [Genero]) VALUES (N'Salomon', N'Loaiza G', 8, N'Masculino')
INSERT [dbo].[Personas] ([Nombre], [Apellido], [Edad], [Genero]) VALUES (N'Sara', N'Loaiza G', 4, N'Femenino')
/****** Object:  StoredProcedure [dbo].[sp_personas]    Script Date: 26/11/2019 9:40:27 p. m. ******/
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
