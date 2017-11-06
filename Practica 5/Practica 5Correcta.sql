CREATE DATABASE [Ferreteria2.11]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ferreteria2.11', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ferreteria2.11.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Ferreteria2.11_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Ferreteria2.11_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Ferreteria2.11] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ferreteria2.11].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ferreteria2.11] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Ferreteria2.11] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ferreteria2.11] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ferreteria2.11] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ferreteria2.11] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ferreteria2.11] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Ferreteria2.11] SET  MULTI_USER 
GO
ALTER DATABASE [Ferreteria2.11] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ferreteria2.11] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ferreteria2.11] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ferreteria2.11] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Ferreteria2.11]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 28/08/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cliente] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoP] [varchar](50) NOT NULL,
	[apellidoM] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[celular] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[RFC] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CLIENTES] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_VENTA]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_VENTA](
	[id_producto] [tinyint] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [money] NOT NULL,
	[total] [money] NOT NULL,
	[cambio] [money] NOT NULL,
	[id_folio] [tinyint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[id_empleado] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellidoP] [varchar](50) NOT NULL,
	[apellidoM] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[celular] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EMPLEADO] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ENTRADAS]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ENTRADAS](
	[id_entrada] [tinyint] NOT NULL,
	[id_producto] [tinyint] NOT NULL,
	[id_provedor] [tinyint] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_ENTRADAS] PRIMARY KEY CLUSTERED 
(
	[id_entrada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[id_factura] [tinyint] NOT NULL,
	[folio] [int] NOT NULL,
	[fecha_factura] [date] NOT NULL,
	[id_cliente] [tinyint] NOT NULL,
 CONSTRAINT [PK_FACTURAS] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PAGO]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PAGO](
	[id_pago] [tinyint] NOT NULL,
	[folio] [int] NOT NULL,
	[monto_pago] [money] NOT NULL,
	[fecha_hora] [datetime] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PAGO] PRIMARY KEY CLUSTERED 
(
	[id_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[id_producto] [tinyint] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio] [money] NOT NULL,
	[id_provedor] [tinyint] NOT NULL,
	[cant_disp] [int] NOT NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROVEEDOR]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROVEEDOR](
	[id_provedor] [tinyint] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](100) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[celular] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PROVEEDOR] PRIMARY KEY CLUSTERED 
(
	[id_provedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SALIDAS]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SALIDAS](
	[id_producto] [tinyint] NOT NULL,
	[cantidad] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VENTAS]    Script Date: 09/10/2017 23:30:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTAS](
	[id_folio] [tinyint] NOT NULL,
	[monto] [money] NOT NULL,
	[Fecha_Hora] [datetime] NOT NULL,
	[id_empleado] [tinyint] NOT NULL,
	[id_pago] [tinyint] NOT NULL,
	[id_factura] [tinyint] NOT NULL,
 CONSTRAINT [PK_VENTAS] PRIMARY KEY CLUSTERED 
(
	[id_folio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (1, N'Melanie', N'Solis', N'Reyna', N'Cerradas deAnahuac', N'84010941', N'8112695351', N'nomelose@hotmail.com', N'tampocomelosexd')
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (2, N'Andrea', N'Lozada', N'Rodriguez', N'Juan de Ayolas', N'84010942', N'8112695352', N'nomelose@hotmail.com', N'tampocomelose')
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (3, N'Gilberto Alejandro', N'Contreras', N'Silva', N'Cerro de las Cumbres', N'8401040', N'8112695350', N'azblexx@hotmail.com', N'nomelose3')
INSERT [dbo].[CLIENTES] ([id_cliente], [nombre], [apellidoP], [apellidoM], [direccion], [telefono], [celular], [email], [RFC]) VALUES (4, N'Melanie', N'Solis', N'Reyna', N'Cerradas deAnahuac', N'84010941', N'8112695351', N'nomelose@hotmail.com', N'tampocomelosexd')
INSERT [dbo].[DETALLE_VENTA] ([id_producto], [cantidad], [precio], [total], [cambio], [id_folio]) VALUES (1, 5, 400.0000, 2000.0000, 50.0000, 1)
INSERT [dbo].[DETALLE_VENTA] ([id_producto], [cantidad], [precio], [total], [cambio], [id_folio]) VALUES (1, 2, 400.0000, 800.0000, 50.0000, 2)
INSERT [dbo].[DETALLE_VENTA] ([id_producto], [cantidad], [precio], [total], [cambio], [id_folio]) VALUES (1, 1, 400.0000, 400.0000, 50.0000, 3)
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (1, N'Juan', N'Gonzales', N'Cantu', N'83391207', N'8117945510')
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (2, N'Diego', N'Narvaez', N'Serralvo', N'81256480', N'8113647251')
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (3, N'Monica', N'Torres', N'Rodriguez', N'81568941', N'8112569470')
INSERT [dbo].[EMPLEADO] ([id_empleado], [nombre], [apellidoP], [apellidoM], [telefono], [celular]) VALUES (4, N'Maria', N'Gonzales', N'Rodriguez', N'81562300', N'8114758230')
INSERT [dbo].[ENTRADAS] ([id_entrada], [id_producto], [id_provedor], [cantidad]) VALUES (1, 1, 1, 20)
INSERT [dbo].[ENTRADAS] ([id_entrada], [id_producto], [id_provedor], [cantidad]) VALUES (2, 1, 1, 20)
INSERT [dbo].[ENTRADAS] ([id_entrada], [id_producto], [id_provedor], [cantidad]) VALUES (3, 2, 1, 30)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (1, 1, CAST(0xA23D0B00 AS Date), 1)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (2, 2, CAST(0xCD3C0B00 AS Date), 2)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (3, 3, CAST(0x0C3D0B00 AS Date), 1)
INSERT [dbo].[FACTURAS] ([id_factura], [folio], [fecha_factura], [id_cliente]) VALUES (4, 3, CAST(0xEF3C0B00 AS Date), 3)
INSERT [dbo].[PAGO] ([id_pago], [folio], [monto_pago], [fecha_hora], [tipo]) VALUES (1, 2, 500.0000, CAST(0x0000A79000000000 AS DateTime), N'Efectivo')
INSERT [dbo].[PAGO] ([id_pago], [folio], [monto_pago], [fecha_hora], [tipo]) VALUES (2, 5, 230.0000, CAST(0x0000A74000000000 AS DateTime), N'Cheque')
INSERT [dbo].[PAGO] ([id_pago], [folio], [monto_pago], [fecha_hora], [tipo]) VALUES (3, 2, 2000.0000, CAST(0x0000A79100000000 AS DateTime), N'Efectivo')
INSERT [dbo].[PRODUCTOS] ([id_producto], [descripcion], [nombre], [precio], [id_provedor], [cant_disp]) VALUES (1, N'Mazo', N'Mazo', 400.0000, 1, 50)
INSERT [dbo].[PRODUCTOS] ([id_producto], [descripcion], [nombre], [precio], [id_provedor], [cant_disp]) VALUES (2, N'Martillo', N'Martillo', 150.0000, 2, 10)
INSERT [dbo].[PRODUCTOS] ([id_producto], [descripcion], [nombre], [precio], [id_provedor], [cant_disp]) VALUES (3, N'Tornillos', N'Tornillos', 10.0000, 3, 200)
INSERT [dbo].[PROVEEDOR] ([id_provedor], [nombre], [direccion], [telefono], [celular]) VALUES (1, N'HomeDepot', N'Pedro de Alba', N'81458978', N'8115689784')
INSERT [dbo].[PROVEEDOR] ([id_provedor], [nombre], [direccion], [telefono], [celular]) VALUES (2, N'Barrilito', N'Maria del Orco', N'81562300', N'8112695450')
INSERT [dbo].[PROVEEDOR] ([id_provedor], [nombre], [direccion], [telefono], [celular]) VALUES (3, N'GreenLee', N'Jose del Orco', N'81568844', N'8119589452')
INSERT [dbo].[SALIDAS] ([id_producto], [cantidad]) VALUES (1, 20)
INSERT [dbo].[SALIDAS] ([id_producto], [cantidad]) VALUES (2, 20)
INSERT [dbo].[SALIDAS] ([id_producto], [cantidad]) VALUES (3, 20)
INSERT [dbo].[VENTAS] ([id_folio], [monto], [Fecha_Hora], [id_empleado], [id_pago], [id_factura]) VALUES (1, 500.0000, CAST(0x0000A43400000000 AS DateTime), 1, 1, 1)
INSERT [dbo].[VENTAS] ([id_folio], [monto], [Fecha_Hora], [id_empleado], [id_pago], [id_factura]) VALUES (2, 253.0000, CAST(0x0000A30F00000000 AS DateTime), 2, 3, 1)
INSERT [dbo].[VENTAS] ([id_folio], [monto], [Fecha_Hora], [id_empleado], [id_pago], [id_factura]) VALUES (3, 24.0000, CAST(0x00008C5900000000 AS DateTime), 3, 3, 3)
GO

ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_PRODUCTOS] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_PRODUCTOS]
GO
ALTER TABLE [dbo].[DETALLE_VENTA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_VENTA_VENTAS] FOREIGN KEY([id_folio])
REFERENCES [dbo].[VENTAS] ([id_folio])
GO
ALTER TABLE [dbo].[DETALLE_VENTA] CHECK CONSTRAINT [FK_DETALLE_VENTA_VENTAS]
GO
ALTER TABLE [dbo].[ENTRADAS]  WITH CHECK ADD  CONSTRAINT [FK_ENTRADAS_PRODUCTOS] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[ENTRADAS] CHECK CONSTRAINT [FK_ENTRADAS_PRODUCTOS]
GO
ALTER TABLE [dbo].[ENTRADAS]  WITH CHECK ADD  CONSTRAINT [FK_ENTRADAS_PROVEEDOR] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[PROVEEDOR] ([id_provedor])
GO
ALTER TABLE [dbo].[ENTRADAS] CHECK CONSTRAINT [FK_ENTRADAS_PROVEEDOR]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [FK_FACTURAS_CLIENTES] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [FK_FACTURAS_CLIENTES]
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTOS_PROVEEDOR] FOREIGN KEY([id_provedor])
REFERENCES [dbo].[PROVEEDOR] ([id_provedor])
GO
ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [FK_PRODUCTOS_PROVEEDOR]
GO
ALTER TABLE [dbo].[SALIDAS]  WITH CHECK ADD  CONSTRAINT [FK_SALIDAS_PRODUCTOS] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[SALIDAS] CHECK CONSTRAINT [FK_SALIDAS_PRODUCTOS]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_EMPLEADO] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[EMPLEADO] ([id_empleado])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_EMPLEADO]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_FACTURAS] FOREIGN KEY([id_factura])
REFERENCES [dbo].[FACTURAS] ([id_factura])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_FACTURAS]
GO
ALTER TABLE [dbo].[VENTAS]  WITH CHECK ADD  CONSTRAINT [FK_VENTAS_PAGO] FOREIGN KEY([id_pago])
REFERENCES [dbo].[PAGO] ([id_pago])
GO
ALTER TABLE [dbo].[VENTAS] CHECK CONSTRAINT [FK_VENTAS_PAGO]
GO
USE [master]
GO
ALTER DATABASE [Ferreteria2.11] SET  READ_WRITE 
GO

SELECT * FROM PRODUCTOS


SELECT * INTO #EMPLEADOTemp FROM EMPLEADO
SELECT * FROM #EMPLEADOTemp

UPDATE PRODUCTOS SET nombre = 'Bascula'
FROM PRODUCTOS
WHERE cant_disp = 20

DELETE FROM PROVEEDOR WHERE id_provedor = 1
USE [Ferreteria2.11]
SELECT * FROM CLIENTES
SELECT * FROM PRODUCTOS

SELECT nombre, precio FROM PRODUCTOS
GROUP BY precio, nombre


SELECT MAX(cant_disp) as 'Valor mayor', Min(cant_disp) as 'Valor minimo', COUNT(id_producto) as 'Registros existententes' FROM PRODUCTOS

SELECT * FROM PRODUCTOS
WHERE cant_disp = 10

SELECT * FROM PRODUCTOS
WHERE cant_disp BETWEEN 20 AND 300


SELECT apellidoM, COUNT(nombre) as 'Nombres repetidos'
FROM CLIENTES
GROUP BY apellidoM
Having COUNT(nombre) > 1

SELECT        SUM(dbo.VENTAS.monto) AS Ganancia, dbo.PAGO.id_pago
FROM            dbo.PAGO INNER JOIN
                         dbo.VENTAS ON dbo.PAGO.id_pago = dbo.VENTAS.id_pago
GROUP BY dbo.PAGO.id_pago
HAVING sum(dbo.VENTAS.monto) > 100

SELECT TOP 10 nombre FROM CLIENTES

