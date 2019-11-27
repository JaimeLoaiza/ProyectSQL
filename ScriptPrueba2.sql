USE [master]
GO
/****** Object:  Database [ProyectVisual.Net]    Script Date: 26/11/2019 9:25:23 p. m. ******/
CREATE DATABASE [ProyectVisual.Net]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProyectSQLintensive', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProyectSQLintensive.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProyectSQLintensive_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\ProyectSQLintensive_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProyectVisual.Net] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProyectVisual.Net].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProyectVisual.Net] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProyectVisual.Net] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProyectVisual.Net] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProyectVisual.Net] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProyectVisual.Net] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET RECOVERY FULL 
GO
ALTER DATABASE [ProyectVisual.Net] SET  MULTI_USER 
GO
ALTER DATABASE [ProyectVisual.Net] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProyectVisual.Net] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProyectVisual.Net] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProyectVisual.Net] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProyectVisual.Net] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProyectVisual.Net', N'ON'
GO
ALTER DATABASE [ProyectVisual.Net] SET QUERY_STORE = OFF
GO
USE [ProyectVisual.Net]
GO
/****** Object:  Table [dbo].[Personas]    Script Date: 26/11/2019 9:25:23 p. m. ******/
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
/****** Object:  StoredProcedure [dbo].[sp_personas]    Script Date: 26/11/2019 9:25:23 p. m. ******/
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
USE [master]
GO
ALTER DATABASE [ProyectVisual.Net] SET  READ_WRITE 
GO
