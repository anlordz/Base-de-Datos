USE [Prueba]
GO
/****** Object:  Database [Ferreteria2.0]    Script Date: 15/10/2017 14:40:26 ******/
CREATE DATABASE [Ferreteria2.0]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ferreteria2.0', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ferreteria2.0.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ferreteria2.0_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ferreteria2.0_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ferreteria2.0] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ferreteria2.0].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ferreteria2.0] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Ferreteria2.0] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ferreteria2.0] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ferreteria2.0] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ferreteria2.0] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ferreteria2.0] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ferreteria2.0] SET  MULTI_USER 
GO
ALTER DATABASE [Ferreteria2.0] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ferreteria2.0] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ferreteria2.0] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ferreteria2.0] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Ferreteria2.0]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cliente] [uniqueidentifier] NOT NULL,
	[nombres] [nvarchar](50) NOT NULL,
	[apellido_pat] [nvarchar](50) NOT NULL,
	[apellido_mat] [nvarchar](50) NOT NULL,
	[rfc] [nvarchar](50) NOT NULL,
	[direccion] [nvarchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[edad] [smallint] NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[nickname] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ENTRADA]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTRADA](
	[id_entrada] [uniqueidentifier] NOT NULL,
	[id_producto] [uniqueidentifier] NOT NULL,
	[id_provedor] [uniqueidentifier] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ENTRADA] PRIMARY KEY CLUSTERED 
(
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[id_producto] [uniqueidentifier] NOT NULL,
	[cantidad_disp] [int] NOT NULL,
	[id_provedor] [uniqueidentifier] NOT NULL,
	[precio_venta] [money] NOT NULL,
	[descrip] [nvarchar](50) NULL,
 CONSTRAINT [PK_INVENTARIO] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OFERTAS]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OFERTAS](
	[id_oferta] [uniqueidentifier] NOT NULL,
	[id_producto] [uniqueidentifier] NOT NULL,
	[descuento] [decimal](5, 3) NOT NULL,
 CONSTRAINT [PK_OFERTAS] PRIMARY KEY CLUSTERED 
(
	[id_oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAGOS]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAGOS](
	[id_pago] [uniqueidentifier] NOT NULL,
	[monto] [int] NOT NULL,
	[tipo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PAGOS] PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PROVEDOR]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROVEDOR](
	[id_provedor] [uniqueidentifier] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
	[direccion] [nvarchar](50) NOT NULL,
	[telefono] [int] NULL,
	[celular] [int] NOT NULL,
 CONSTRAINT [PK_PROVEDOR] PRIMARY KEY CLUSTERED 
(
	[id_provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALIDA]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALIDA](
	[id_producto] [uniqueidentifier] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_SALIDA] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 15/10/2017 14:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[id_folio] [uniqueidentifier] NOT NULL,
	[id_cliente] [uniqueidentifier] NOT NULL,
	[fecha] [datetime2](7) NOT NULL,
	[monto] [int] NOT NULL,
 CONSTRAINT [PK_VENTAS] PRIMARY KEY CLUSTERED 
(
	[id_folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ENTRADA]  WITH CHECK ADD  CONSTRAINT [FK_ENTRADA_INVENTARIO] FOREIGN KEY([id_producto])
REFERENCES [dbo].[INVENTARIO] ([id_producto])
GO
ALTER TABLE [dbo].[ENTRADA] CHECK CONSTRAINT [FK_ENTRADA_INVENTARIO]
GO
ALTER TABLE [dbo].[ENTRADA]  WITH CHECK ADD  CONSTRAINT [FK_ENTRADA_PROVEDOR] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[PROVEDOR] ([id_provedor])
GO
ALTER TABLE [dbo].[ENTRADA] CHECK CONSTRAINT [FK_ENTRADA_PROVEDOR]
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD  CONSTRAINT [FK_INVENTARIO_PROVEDOR] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[PROVEDOR] ([id_provedor])
GO
ALTER TABLE [dbo].[INVENTARIO] CHECK CONSTRAINT [FK_INVENTARIO_PROVEDOR]
GO
ALTER TABLE [dbo].[OFERTAS]  WITH CHECK ADD  CONSTRAINT [FK_OFERTAS_INVENTARIO] FOREIGN KEY([id_producto])
REFERENCES [dbo].[INVENTARIO] ([id_producto])
GO
ALTER TABLE [dbo].[OFERTAS] CHECK CONSTRAINT [FK_OFERTAS_INVENTARIO]
GO
ALTER TABLE [dbo].[SALIDA]  WITH CHECK ADD  CONSTRAINT [FK_SALIDA_INVENTARIO] FOREIGN KEY([id_producto])
REFERENCES [dbo].[INVENTARIO] ([id_producto])
GO
ALTER TABLE [dbo].[SALIDA] CHECK CONSTRAINT [FK_SALIDA_INVENTARIO]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_CLIENTES] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_CLIENTES]
GO
USE [master]
GO
ALTER DATABASE [Ferreteria2.0] SET  READ_WRITE 
GO

USE [Ferreteria2.0]

select * from PROVEDOR

/*INSERT 1*/
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'Homedepot','Pablo Livas',83,81) 
INSERT into PROVEDOR(id_provedor,nombre,direccion,telefono,celular) values (NEWID(),'LOWES','Eloy Cavazos',93,71) 

/*INSERT 2*/
INSERT into PROVEDOR values (NEWID(),'Proveedor Magico','Narnia',66,99)
INSERT into CLIENTES values (NEWID(),'Isaac','Alvarado','Bermudez','AAB199','Guadalupe',33,6,'correofake','Thunderzeta','password')


/*INSERT 3*/

INSERT into PROVEDOR select NEWID(),'Proveedor NotanMagico','Narniafake',33,45

/*INSERT 4*/
select * from PROVEDOR 
select * from CLIENTES

INSERT into PROVEDOR select NEWID(),'Proveedor NotanMagico','Narniafake',33,45 from CLIENTES


/*Tabla temporal*/
select * into #PROVEDORTemp from PROVEDOR
select * from #PROVEDORTemp

/*Update*/

update PROVEDOR SET nombre = 'AndreaProveedora'
from PROVEDOR
WHERE direccion LIKE '%zos'  

select * from PROVEDOR

/*Delete*/

delete from PROVEDOR where direccion not like 'Pablo%' 