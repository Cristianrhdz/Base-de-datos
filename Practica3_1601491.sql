USE [master]
GO
/****** Object:  Database [NetflixCristian]    Script Date: 03/03/2018 11:34:28 a.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'NetflixCristian')
BEGIN
CREATE DATABASE [NetflixCristian]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NetflixCristian', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\NetflixCristian.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'NetflixCristian_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\NetflixCristian_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [NetflixCristian] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NetflixCristian].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NetflixCristian] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NetflixCristian] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NetflixCristian] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NetflixCristian] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NetflixCristian] SET ARITHABORT OFF 
GO
ALTER DATABASE [NetflixCristian] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NetflixCristian] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [NetflixCristian] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NetflixCristian] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NetflixCristian] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NetflixCristian] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NetflixCristian] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NetflixCristian] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NetflixCristian] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NetflixCristian] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NetflixCristian] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NetflixCristian] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NetflixCristian] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NetflixCristian] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NetflixCristian] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NetflixCristian] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NetflixCristian] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NetflixCristian] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NetflixCristian] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NetflixCristian] SET  MULTI_USER 
GO
ALTER DATABASE [NetflixCristian] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NetflixCristian] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NetflixCristian] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NetflixCristian] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [NetflixCristian]
GO
/****** Object:  Table [dbo].[DetailsBuy]    Script Date: 03/03/2018 11:34:28 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetailsBuy]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetailsBuy](
	[ID_DetailsBuy] [uniqueidentifier] NOT NULL,
	[ID_Numero_Compra] [uniqueidentifier] NOT NULL,
	[ID_Cuenta] [uniqueidentifier] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Costo] [money] NOT NULL,
	[Total]  AS ([Costo]*[Cantidad]),
 CONSTRAINT [PK_DetailsBuy] PRIMARY KEY CLUSTERED 
(
	[ID_DetailsBuy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CuentasFull]    Script Date: 03/03/2018 11:34:28 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CuentasFull]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CuentasFull](
	[ID_tv] [uniqueidentifier] NOT NULL,
	[Cantidad_Almacen] [int] NOT NULL,
	[ID_Televisionl] [uniqueidentifier] NOT NULL,
	[ID_Cuenta] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_CuentasFull] PRIMARY KEY CLUSTERED 
(
	[ID_tv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Numero_Compra]    Script Date: 03/03/2018 11:34:28 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Numero_Compra]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Numero_Compra](
	[ID_Numero_Compra] [uniqueidentifier] NOT NULL,
	[ID_ContenidoVisual] [uniqueidentifier] NOT NULL,
	[Fecha] [date] NOT NULL,
 CONSTRAINT [PK_Numero_Compra] PRIMARY KEY CLUSTERED 
(
	[ID_Numero_Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TipoCuenta]    Script Date: 03/03/2018 11:34:28 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoCuenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoCuenta](
	[ID_Cuenta] [uniqueidentifier] NOT NULL,
	[ID_tv] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Costo] [money] NOT NULL,
	[TipoCuenta] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TipoCuenta] PRIMARY KEY CLUSTERED 
(
	[ID_Cuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ContenidoVisual]    Script Date: 03/03/2018 11:34:28 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ContenidoVisual]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ContenidoVisual](
	[ID_ContenidoVisual] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[ID_Televisionl] [uniqueidentifier] NULL,
	[Celular] [int] NULL,
	[Ubicacion] [varchar](max) NULL,
 CONSTRAINT [PK_ContenidoVisual] PRIMARY KEY CLUSTERED 
(
	[ID_ContenidoVisual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Televisionl]    Script Date: 03/03/2018 11:34:28 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Televisionl]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Televisionl](
	[ID_tv] [uniqueidentifier] NOT NULL,
	[ID_User] [uniqueidentifier] NOT NULL,
	[Nombre_Tvl] [varchar](50) NOT NULL,
	[Ubicacion] [varchar](50) NOT NULL,
	[Celular] [int] NOT NULL,
	[Titular] [varchar](50) NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetailsBuy__Numero_Compra]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetailsBuy]'))
ALTER TABLE [dbo].[DetailsBuy]  WITH CHECK ADD  CONSTRAINT [FK_DetailsBuy__Numero_Compra] FOREIGN KEY([ID_Numero_Compra])
REFERENCES [dbo].[Numero_Compra] ([ID_Numero_Compra])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetailsBuy__Numero_Compra]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetailsBuy]'))
ALTER TABLE [dbo].[DetailsBuy] CHECK CONSTRAINT [FK_DetailsBuy__Numero_Compra]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetailsBuy_TipoCuenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetailsBuy]'))
ALTER TABLE [dbo].[DetailsBuy]  WITH CHECK ADD  CONSTRAINT [FK_DetailsBuy_TipoCuenta] FOREIGN KEY([ID_Cuenta])
REFERENCES [dbo].[TipoCuenta] ([ID_Cuenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetailsBuy_TipoCuenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetailsBuy]'))
ALTER TABLE [dbo].[DetailsBuy] CHECK CONSTRAINT [FK_DetailsBuy_TipoCuenta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CuentasFull_TipoCuenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[CuentasFull]'))
ALTER TABLE [dbo].[CuentasFull]  WITH CHECK ADD  CONSTRAINT [FK_CuentasFull_TipoCuenta] FOREIGN KEY([ID_Cuenta])
REFERENCES [dbo].[TipoCuenta] ([ID_Cuenta])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CuentasFull_TipoCuenta]') AND parent_object_id = OBJECT_ID(N'[dbo].[CuentasFull]'))
ALTER TABLE [dbo].[CuentasFull] CHECK CONSTRAINT [FK_CuentasFull_TipoCuenta]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Numero_Compra_ContenidoVisual]') AND parent_object_id = OBJECT_ID(N'[dbo].[Numero_Compra]'))
ALTER TABLE [dbo].[Numero_Compra]  WITH CHECK ADD  CONSTRAINT [FK_Numero_Compra_ContenidoVisual] FOREIGN KEY([ID_ContenidoVisual])
REFERENCES [dbo].[ContenidoVisual] ([ID_ContenidoVisual])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Numero_Compra_ContenidoVisual]') AND parent_object_id = OBJECT_ID(N'[dbo].[Numero_Compra]'))
ALTER TABLE [dbo].[Numero_Compra] CHECK CONSTRAINT [FK_Numero_Compra_ContenidoVisual]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Televisionl_CuentasFull]') AND parent_object_id = OBJECT_ID(N'[dbo].[Televisionl]'))
ALTER TABLE [dbo].[Televisionl]  WITH CHECK ADD  CONSTRAINT [FK_Televisionl_CuentasFull] FOREIGN KEY([ID_tv])
REFERENCES [dbo].[CuentasFull] ([ID_tv])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Televisionl_CuentasFull]') AND parent_object_id = OBJECT_ID(N'[dbo].[Televisionl]'))
ALTER TABLE [dbo].[Televisionl] CHECK CONSTRAINT [FK_Televisionl_CuentasFull]
GO
USE [master]
GO
ALTER DATABASE [NetflixCristian] SET  READ_WRITE 
GO