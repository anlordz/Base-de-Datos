CREATE DATABASE [LSTI1727791]
GO

USE [LSTI1727791]
GO
/****** Object:  Table [dbo].[Tienda]    Script Date: 09/10/2017 19:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tienda](
	[Camisa] [int] NULL,
	[Pantalon] [int] NULL,
	[Vestido] [int] NULL,
	[Zapatos] [int] NULL,
	[Calcetas] [int] NULL,
	[Joyeria] [int] NULL,
	[Forma de Pago] [money] NOT NULL,
	[Compra] [timestamp] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pelicula]    Script Date: 09/10/2017 19:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pelicula](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Director] [varchar](30) NOT NULL,
	[FechaDePublicacion] [date] NOT NULL,
	[Genero] [varchar](30) NOT NULL,
	[Productoras] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Escuela]    Script Date: 09/10/2017 19:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Escuela](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido Paterno] [nvarchar](50) NOT NULL,
	[Apellido Materno] [nvarchar](50) NOT NULL,
	[Ingreso del Alumno] [date] NOT NULL,
	[Registro] [money] NOT NULL,
	[Semetre] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consulta Veterinaria]    Script Date: 09/10/2017 19:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consulta Veterinaria](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido Paterno] [nvarchar](50) NOT NULL,
	[Apellido Materno] [nvarchar](50) NOT NULL,
	[Perro] [date] NULL,
	[Gato] [date] NULL,
	[Conejo] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 09/10/2017 19:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido Paterno] [nvarchar](50) NOT NULL,
	[Apellido Materno] [nvarchar](50) NOT NULL,
	[NoTarjeta] [int] NOT NULL,
	[Saldo] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clases]    Script Date: 09/10/2017 19:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clases](
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellidos] [nvarchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Basketball] [nvarchar](50) NULL,
	[Vollyball] [nvarchar](50) NULL,
	[Golf] [nvarchar](50) NULL,
	[Danza] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carros]    Script Date: 09/10/2017 19:16:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carros](
	[Nombre] [nvarchar](50) NOT NULL,
	[Modelo] [int] NOT NULL,
	[Precio] [money] NULL,
	[Puertas] [int] NULL,
	[Placas] [nvarchar](7) NULL
) ON [PRIMARY]
GO
