USE [Ventas]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 18/09/2017 09:47:15 p.m. ******/
DROP TABLE [dbo].[Ventas]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 18/09/2017 09:47:15 p.m. ******/
DROP TABLE [dbo].[Productos]
GO
/****** Object:  Table [dbo].[InventarioAlmacenProductos]    Script Date: 18/09/2017 09:47:15 p.m. ******/
DROP TABLE [dbo].[InventarioAlmacenProductos]
GO
/****** Object:  Table [dbo].[EstatusVenta]    Script Date: 18/09/2017 09:47:15 p.m. ******/
DROP TABLE [dbo].[EstatusVenta]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 18/09/2017 09:47:15 p.m. ******/
DROP TABLE [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[DetalleVentaIAP]    Script Date: 18/09/2017 09:47:15 p.m. ******/
DROP TABLE [dbo].[DetalleVentaIAP]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 18/09/2017 09:47:15 p.m. ******/
DROP TABLE [dbo].[Almacenes]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 18/09/2017 09:47:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacenes](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetalleVentaIAP]    Script Date: 18/09/2017 09:47:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DetalleVentaIAP](
	[Id] [uniqueidentifier] NOT NULL,
	[IdVenta] [uniqueidentifier] NOT NULL,
	[IdIAP] [uniqueidentifier] NOT NULL,
	[Cantidad] [numeric](18, 0) NOT NULL,
	[PrecioUnitario] [money] NOT NULL,
	[Subtotal] [money] NOT NULL,
	[IVA] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 18/09/2017 09:47:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleados](
	[Id] [uniqueidentifier] NOT NULL,
	[NumeroEmpleado] [numeric](18, 0) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ApellidoPaterno] [varchar](50) NOT NULL,
	[ApellidoMaterno] [varchar](50) NOT NULL,
	[FechaNacimiento] [varchar](50) NOT NULL,
	[Edad] [varchar](50) NOT NULL,
	[FechaIngreso] [varchar](50) NOT NULL,
	[DiasAntiguedad] [date] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstatusVenta]    Script Date: 18/09/2017 09:47:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EstatusVenta](
	[Id] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InventarioAlmacenProductos]    Script Date: 18/09/2017 09:47:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InventarioAlmacenProductos](
	[Id] [uniqueidentifier] NOT NULL,
	[IdAlmacen] [uniqueidentifier] NOT NULL,
	[IdProductos] [uniqueidentifier] NOT NULL,
	[Cantidad] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 18/09/2017 09:47:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[Id] [uniqueidentifier] NOT NULL,
	[CodigoBarras] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[PrecioBase] [money] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 18/09/2017 09:47:15 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ventas](
	[Id] [uniqueidentifier] NOT NULL,
	[IdEmpleadoVenta] [uniqueidentifier] NOT NULL,
	[IdEstatus] [uniqueidentifier] NOT NULL,
	[Folio] [numeric](18, 0) NOT NULL,
	[Subtotal] [money] NOT NULL,
	[IVA] [varchar](50) NOT NULL,
	[Total] [money] NOT NULL,
	[FechaHora] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
