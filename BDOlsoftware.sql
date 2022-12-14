USE [master]
GO
/****** Object:  Database [OLSoftwareSAS]    Script Date: 5/08/2022 2:45:08 p. m. ******/
CREATE DATABASE [OLSoftwareSAS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OLSoftwareSAS', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OLSoftwareSAS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OLSoftwareSAS_log', FILENAME = N'F:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\OLSoftwareSAS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OLSoftwareSAS] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OLSoftwareSAS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OLSoftwareSAS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET ARITHABORT OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OLSoftwareSAS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OLSoftwareSAS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OLSoftwareSAS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OLSoftwareSAS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET RECOVERY FULL 
GO
ALTER DATABASE [OLSoftwareSAS] SET  MULTI_USER 
GO
ALTER DATABASE [OLSoftwareSAS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OLSoftwareSAS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OLSoftwareSAS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OLSoftwareSAS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OLSoftwareSAS] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OLSoftwareSAS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'OLSoftwareSAS', N'ON'
GO
ALTER DATABASE [OLSoftwareSAS] SET QUERY_STORE = OFF
GO
USE [OLSoftwareSAS]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/08/2022 2:45:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 5/08/2022 2:45:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[Adm_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Adm_Email] [bigint] NOT NULL,
	[Adm_Nombres] [varchar](250) NOT NULL,
	[Adm_Apellidos] [varchar](250) NOT NULL,
	[Adm_Password] [text] NOT NULL,
 CONSTRAINT [PK_Administrador] PRIMARY KEY CLUSTERED 
(
	[Adm_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 5/08/2022 2:45:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Cli_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Cli_Nombres] [varchar](250) NOT NULL,
	[Cli_Apellidos] [varchar](250) NOT NULL,
	[Cli_Documento] [varchar](250) NOT NULL,
	[Cli_Email] [varchar](280) NOT NULL,
	[Cli_Telefono] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[Cli_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 5/08/2022 2:45:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[Pro_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Pro_Nombre] [varchar](350) NOT NULL,
	[Pro_FecIni] [date] NOT NULL,
	[Pro_FecFin] [date] NOT NULL,
	[Pro_Precio] [decimal](19, 4) NOT NULL,
	[Pro_Estado] [varchar](250) NOT NULL,
	[Pro_Lenguajes] [text] NOT NULL,
	[Pro_Horas] [int] NOT NULL,
	[Pro_Nivel] [varchar](100) NOT NULL,
	[Cli_ID] [bigint] NOT NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[Pro_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (1, N'Brian Steven', N'Cañon Rojas', N'123456', N'canonbrian123@gmail.com', N'3137951031')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (2, N'Angie', N'Rojas', N'45689', N'angie123@gmail.com', N'3012567810')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (3, N'Jose ', N'Perez', N'1256', N'jose123@gmail.com', N'456899')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (4, N'Lorena', N'Perez', N'45658', N'lorena123@gmail.com', N'24545')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (5, N'Luz', N'Rodriguez', N'12454', N'luz123@gmail.com', N'54578')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (6, N'Juancho', N'Rois', N'545454', N'juancho123@gmail.com', N'54547')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (7, N'Lucia', N'Sanchez', N'48896', N'luci123@gmail.com', N'1234566')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (8, N'Diego', N'Maradona', N'569885', N'diego123@gmail.com', N'1234899')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (9, N'Lionel', N'Mesa', N'97784', N'lionel123@gmail.com', N'656565')
INSERT [dbo].[Clientes] ([Cli_ID], [Cli_Nombres], [Cli_Apellidos], [Cli_Documento], [Cli_Email], [Cli_Telefono]) VALUES (10, N'Cristiano', N'Rodriguez', N'545458', N'cristiano123@gmail.com', N'145484')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Proyectos] ON 

INSERT [dbo].[Proyectos] ([Pro_ID], [Pro_Nombre], [Pro_FecIni], [Pro_FecFin], [Pro_Precio], [Pro_Estado], [Pro_Lenguajes], [Pro_Horas], [Pro_Nivel], [Cli_ID]) VALUES (2, N'WEB MVC', CAST(N'2001-07-21' AS Date), CAST(N'2022-08-21' AS Date), CAST(25.0000 AS Decimal(19, 4)), N'EN GESTION', N'C++', 50, N'ALTO', 1)
SET IDENTITY_INSERT [dbo].[Proyectos] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Clientes_Doc]    Script Date: 5/08/2022 2:45:09 p. m. ******/
ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [UK_Clientes_Doc] UNIQUE NONCLUSTERED 
(
	[Cli_Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_Clientes_Email]    Script Date: 5/08/2022 2:45:09 p. m. ******/
ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [UK_Clientes_Email] UNIQUE NONCLUSTERED 
(
	[Cli_Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [FK_Proyectos_CliID]    Script Date: 5/08/2022 2:45:09 p. m. ******/
CREATE UNIQUE NONCLUSTERED INDEX [FK_Proyectos_CliID] ON [dbo].[Proyectos]
(
	[Cli_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proyectos] ADD  CONSTRAINT [DF_Proyectos_Pro_Estado]  DEFAULT ('En Negociación') FOR [Pro_Estado]
GO
ALTER TABLE [dbo].[Proyectos]  WITH CHECK ADD  CONSTRAINT [fk_Cliente] FOREIGN KEY([Cli_ID])
REFERENCES [dbo].[Clientes] ([Cli_ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Proyectos] CHECK CONSTRAINT [fk_Cliente]
GO
/****** Object:  StoredProcedure [dbo].[Extraer]    Script Date: 5/08/2022 2:45:09 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Extraer]  

AS   
    SET NOCOUNT ON;  
    SELECT P.Pro_ID, C.Cli_ID ,CONCAT(Cli_Nombres,+' '+C.Cli_Apellidos) as "Nombres",C.Cli_Telefono,
	P.Pro_Nombre,P.Pro_FecIni,P.Pro_FecFin,
	P.Pro_Horas,P.Pro_Precio,P.Pro_Estado,P.Pro_Lenguajes,P.Pro_Nivel 
	FROM Clientes as C
	INNER JOIN Proyectos as P
	ON C.Cli_ID=P.Cli_ID
GO
USE [master]
GO
ALTER DATABASE [OLSoftwareSAS] SET  READ_WRITE 
GO
