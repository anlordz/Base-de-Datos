Create Database [ticketmaster]
GO

USE [ticketmaster]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 28/08/2017 09:44:57 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
DROP TABLE [dbo].[Table_1]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 28/08/2017 09:44:57 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_1](
	[tik] [nchar](10) NULL
) ON [PRIMARY]
END
GO
