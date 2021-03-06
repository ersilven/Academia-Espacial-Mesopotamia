USE [master]
GO
/****** Object:  Database [AcademiaMesopotamia]    Script Date: 27/4/2022 11:11:29 p. m. ******/
CREATE DATABASE [AcademiaMesopotamia]
 GO
ALTER DATABASE [AcademiaMesopotamia] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AcademiaMesopotamia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AcademiaMesopotamia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET ARITHABORT OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AcademiaMesopotamia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AcademiaMesopotamia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AcademiaMesopotamia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AcademiaMesopotamia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET RECOVERY FULL 
GO
ALTER DATABASE [AcademiaMesopotamia] SET  MULTI_USER 
GO
ALTER DATABASE [AcademiaMesopotamia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AcademiaMesopotamia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AcademiaMesopotamia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AcademiaMesopotamia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AcademiaMesopotamia] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AcademiaMesopotamia] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AcademiaMesopotamia', N'ON'
GO
ALTER DATABASE [AcademiaMesopotamia] SET QUERY_STORE = OFF
GO
USE [AcademiaMesopotamia]
GO
/****** Object:  Table [dbo].[AcademiaArea]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcademiaArea](
	[IDAcademiaArea] [uniqueidentifier] NOT NULL,
	[IDAcademia] [uniqueidentifier] NOT NULL,
	[IDArea] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AcademiaArea] PRIMARY KEY CLUSTERED 
(
	[IDAcademiaArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Academias]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Academias](
	[IDAcademia] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Correo] [nvarchar](50) NULL,
	[NumeroTlfono] [nvarchar](50) NULL,
	[CodigoAcademia] [nvarchar](50) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Academias] PRIMARY KEY CLUSTERED 
(
	[IDAcademia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AlumnoArea]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlumnoArea](
	[IDAlumnoArea] [uniqueidentifier] NOT NULL,
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[IDArea] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_AlumnoArea] PRIMARY KEY CLUSTERED 
(
	[IDAlumnoArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AreaClase]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AreaClase](
	[IDArea] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Turno] [nvarchar](50) NULL,
	[CodigoClase] [nvarchar](50) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_AreaClase] PRIMARY KEY CLUSTERED 
(
	[IDArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estatus]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estatus](
	[IDEstatus] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Codigo] [bigint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaestroAcademia]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaestroAcademia](
	[IDMaestroAcademia] [uniqueidentifier] NOT NULL,
	[IDAcademia] [uniqueidentifier] NOT NULL,
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_MaestroAcademia] PRIMARY KEY CLUSTERED 
(
	[IDMaestroAcademia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaestroArea]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaestroArea](
	[IDMaestroArea] [uniqueidentifier] NOT NULL,
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[IDArea] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_MaestroArea] PRIMARY KEY CLUSTERED 
(
	[IDMaestroArea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[IDRol] [uniqueidentifier] NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[Correo] [nvarchar](50) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Edad] [nvarchar](50) NOT NULL,
	[NumeroTelefono] [nvarchar](50) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
	[ModifiedOn] [datetime2](7) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioEstatus]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioEstatus](
	[IDUsuarioEstatus] [uniqueidentifier] NOT NULL,
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[IDEstatus] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUsuarioEstatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioPass]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioPass](
	[IDUsuarioPass] [uniqueidentifier] NOT NULL,
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[Pass] [nvarchar](max) NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
 CONSTRAINT [PK_UsuarioPass] PRIMARY KEY CLUSTERED 
(
	[IDUsuarioPass] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsuarioRoles]    Script Date: 27/4/2022 11:11:29 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioRoles](
	[IDUsuarioRol] [uniqueidentifier] NOT NULL,
	[IDUsuario] [uniqueidentifier] NOT NULL,
	[IDRol] [uniqueidentifier] NOT NULL,
	[CreatedOn] [datetime2](7) NOT NULL,
	[CreatedBy] [uniqueidentifier] NOT NULL,
	[ModifiedOn] [datetime2](7) NULL,
	[ModifiedBy] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUsuarioRol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'cbdd0efe-3889-4e88-9503-005f4a372511', N'addca8c9-f290-446c-b1cc-c7d621f89c92', N'fc5e0fd0-a07d-453f-b06a-b0f53162f706', CAST(N'2022-04-27T15:29:10.9531404' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:29:10.9531424' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'47f8f816-6e75-41e5-be44-193a526234f7', N'8e1339c0-a979-445e-a799-7cd92680abc2', N'493a5d64-87dc-4a7b-b86c-6c03242c3719', CAST(N'2022-04-27T15:28:22.4178954' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:28:22.4182200' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'8f678424-d321-4bab-bcb3-2943f143bf2a', N'810c6c26-d491-44e0-9afa-d60f2765cad6', N'fc5e0fd0-a07d-453f-b06a-b0f53162f706', CAST(N'2022-04-27T15:37:41.0320779' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:37:41.0324360' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'1b3a536b-b388-465e-b7e6-4dd1c1597395', N'655b4b11-d89b-4799-b8ad-e750d3fff8e5', N'493a5d64-87dc-4a7b-b86c-6c03242c3719', CAST(N'2022-04-27T16:14:10.0789578' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T16:14:10.0789600' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'df53d83f-2b42-4245-8f5f-5f62e48ce2a0', N'addca8c9-f290-446c-b1cc-c7d621f89c92', N'a4dad86d-27c4-436f-a96f-8b0a87205791', CAST(N'2022-04-27T15:29:11.0694951' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:29:11.0694969' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'6e689d03-4404-4da0-926e-61956bf48619', N'8e1339c0-a979-445e-a799-7cd92680abc2', N'fc5e0fd0-a07d-453f-b06a-b0f53162f706', CAST(N'2022-04-27T15:28:23.1851100' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:28:23.1851125' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'0c8b68dd-8ba7-4f15-83c6-ac371dcb255c', N'addca8c9-f290-446c-b1cc-c7d621f89c92', N'1f22cdcb-829c-4652-bb4f-e7b736a0aa32', CAST(N'2022-04-27T15:29:11.1439011' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:29:11.1439031' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'89706e79-e09c-44a2-bbbd-c0b37dce9ad0', N'655b4b11-d89b-4799-b8ad-e750d3fff8e5', N'9f675f53-6adb-497e-88b9-19a65357efdb', CAST(N'2022-04-27T16:14:09.9336546' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T16:14:09.9340552' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[AcademiaArea] ([IDAcademiaArea], [IDAcademia], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'b7a93b67-fe7f-41a8-848c-d18bb4bd14e9', N'addca8c9-f290-446c-b1cc-c7d621f89c92', N'493a5d64-87dc-4a7b-b86c-6c03242c3719', CAST(N'2022-04-27T15:29:11.2373471' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:29:11.2373494' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
GO
INSERT [dbo].[Academias] ([IDAcademia], [Nombre], [Correo], [NumeroTlfono], [CodigoAcademia], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'8e1339c0-a979-445e-a799-7cd92680abc2', N'Arquitectura', N'arquitectura@correo.com', N'041213-314214', N'ARQ', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:24:12.6833333' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:28:22.0853795' AS DateTime2))
INSERT [dbo].[Academias] ([IDAcademia], [Nombre], [Correo], [NumeroTlfono], [CodigoAcademia], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'addca8c9-f290-446c-b1cc-c7d621f89c92', N'Ingeniería', N'ingenieria@correo.com', N'03123-22221', N'ING', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:22:40.4233333' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:29:10.9422901' AS DateTime2))
INSERT [dbo].[Academias] ([IDAcademia], [Nombre], [Correo], [NumeroTlfono], [CodigoAcademia], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'810c6c26-d491-44e0-9afa-d60f2765cad6', N'Administración', N'administracion@correo.com', N'0123-5341', N'ADM', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:23:50.0600000' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:37:40.7959865' AS DateTime2))
INSERT [dbo].[Academias] ([IDAcademia], [Nombre], [Correo], [NumeroTlfono], [CodigoAcademia], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'655b4b11-d89b-4799-b8ad-e750d3fff8e5', N'Comunicacion Social', N'comunicacion@correo.com', N'0412-21311', N'COM', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:23:19.8366667' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T16:14:09.7006741' AS DateTime2))
GO
INSERT [dbo].[AlumnoArea] ([IDAlumnoArea], [IDUsuario], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'0ba7f647-af26-4cd7-9af3-4365185b2fef', N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'1f22cdcb-829c-4652-bb4f-e7b736a0aa32', CAST(N'2022-04-27T21:43:04.6017755' AS DateTime2), N'7609bb0d-701c-4333-b304-14bdc0b3e73c', CAST(N'2022-04-27T21:43:04.6017773' AS DateTime2), N'7609bb0d-701c-4333-b304-14bdc0b3e73c')
INSERT [dbo].[AlumnoArea] ([IDAlumnoArea], [IDUsuario], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'7f1f9d22-0a76-4c56-bc80-656d98eb2587', N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'fc5e0fd0-a07d-453f-b06a-b0f53162f706', CAST(N'2022-04-27T21:43:04.6096577' AS DateTime2), N'7609bb0d-701c-4333-b304-14bdc0b3e73c', CAST(N'2022-04-27T21:43:04.6096595' AS DateTime2), N'7609bb0d-701c-4333-b304-14bdc0b3e73c')
INSERT [dbo].[AlumnoArea] ([IDAlumnoArea], [IDUsuario], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'b51bdb6b-5ec9-4c70-a68f-9c02629d30f4', N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'a4dad86d-27c4-436f-a96f-8b0a87205791', CAST(N'2022-04-27T21:43:04.5377917' AS DateTime2), N'7609bb0d-701c-4333-b304-14bdc0b3e73c', CAST(N'2022-04-27T21:43:04.5380063' AS DateTime2), N'7609bb0d-701c-4333-b304-14bdc0b3e73c')
GO
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'9f675f53-6adb-497e-88b9-19a65357efdb', N'Comunicacion', N'Noche', N'COM-55211', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:21:24.7233333' AS DateTime2), NULL, NULL)
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'abb6af09-f8cd-477c-a22c-2989178d8f48', N'Educacion Fisica', N'Tarde', N'EFI-52311', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:21:09.6466667' AS DateTime2), NULL, NULL)
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'493a5d64-87dc-4a7b-b86c-6c03242c3719', N'Deontología', N'Mañana', N'DEO-01331', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:20:00.7300000' AS DateTime2), NULL, NULL)
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'a4dad86d-27c4-436f-a96f-8b0a87205791', N'Quimica', N'Noche', N'QUI-52341', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:20:47.8833333' AS DateTime2), NULL, NULL)
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'fc5e0fd0-a07d-453f-b06a-b0f53162f706', N'Matematica IV', N'Mañana', N'MA-24321', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:18:23.8133333' AS DateTime2), NULL, NULL)
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'84aafd65-0e76-42ac-858f-b9f7adc7191d', N'Geografía', N'Tarde', N'GEO-43122', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:18:44.6166667' AS DateTime2), NULL, NULL)
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'1e2b5d20-50cc-4b95-86a7-e389888fd5a4', N'Historia', N'Noche', N'HIS-42341', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:19:34.8266667' AS DateTime2), NULL, NULL)
INSERT [dbo].[AreaClase] ([IDArea], [Nombre], [Turno], [CodigoClase], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'1f22cdcb-829c-4652-bb4f-e7b736a0aa32', N'Electronica', N'Mañana', N'ELE-341222', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:20:24.7000000' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[Estatus] ([IDEstatus], [Nombre], [Codigo], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'92a31296-c1a5-44ec-ac4e-136bef8a2206', N'Activo', 1000, 1, CAST(N'2022-04-22T09:53:26.7566667' AS DateTime2), N'504a8096-4a33-4a03-a51b-838d1d5086e5', NULL, NULL)
INSERT [dbo].[Estatus] ([IDEstatus], [Nombre], [Codigo], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'4a7af43c-3699-497d-9d5a-6d599542d0e9', N'Desactivado', 2000, 1, CAST(N'2022-04-22T09:53:26.7566667' AS DateTime2), N'504a8096-4a33-4a03-a51b-838d1d5086e6', NULL, NULL)
GO
INSERT [dbo].[MaestroAcademia] ([IDMaestroAcademia], [IDAcademia], [IDUsuario], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'15b0e462-72a4-451d-8767-35644ad77db7', N'addca8c9-f290-446c-b1cc-c7d621f89c92', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', CAST(N'2022-04-27T22:53:11.5357690' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.5359760' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[MaestroAcademia] ([IDMaestroAcademia], [IDAcademia], [IDUsuario], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'69b75c52-8d59-455f-9b49-52e3cbd8c1a9', N'addca8c9-f290-446c-b1cc-c7d621f89c92', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', CAST(N'2022-04-27T22:04:44.6707128' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:04:44.6708719' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[MaestroAcademia] ([IDMaestroAcademia], [IDAcademia], [IDUsuario], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'5effbf2f-22ca-44c6-b1c7-c5a416deb4b9', N'810c6c26-d491-44e0-9afa-d60f2765cad6', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', CAST(N'2022-04-27T22:53:11.5478386' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.5478399' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
GO
INSERT [dbo].[MaestroArea] ([IDMaestroArea], [IDUsuario], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'697f239e-3bfe-41ec-a185-17d8aee8f691', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'a4dad86d-27c4-436f-a96f-8b0a87205791', CAST(N'2022-04-27T22:53:11.5278154' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.5278185' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[MaestroArea] ([IDMaestroArea], [IDUsuario], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'27f725f6-ac17-4643-9bdf-785a0e3ec05e', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'1f22cdcb-829c-4652-bb4f-e7b736a0aa32', CAST(N'2022-04-27T22:53:11.4275032' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.4277919' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[MaestroArea] ([IDMaestroArea], [IDUsuario], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'436aff16-57c1-41a6-9219-7bbeffcad25c', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'fc5e0fd0-a07d-453f-b06a-b0f53162f706', CAST(N'2022-04-27T22:53:11.4998982' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.4999008' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[MaestroArea] ([IDMaestroArea], [IDUsuario], [IDArea], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'79cb5584-c013-4762-962b-aa083434fad4', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'493a5d64-87dc-4a7b-b86c-6c03242c3719', CAST(N'2022-04-27T22:53:11.5176221' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.5176242' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
GO
INSERT [dbo].[Roles] ([IDRol], [Nombre], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'fc9e5a87-8652-43a6-baa4-23260f1496a8', N'Usuario', 1, CAST(N'2022-04-22T09:53:26.6100000' AS DateTime2), N'504a8096-4a33-4a03-a51b-838d1d5086e2', NULL, NULL)
INSERT [dbo].[Roles] ([IDRol], [Nombre], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'3365835e-03a4-4e61-a7e7-3fadc06f5a07', N'Alumno', 1, CAST(N'2022-04-27T10:55:26.9533333' AS DateTime2), N'504a8096-4a33-4a03-a51b-838d1d5086e2', NULL, NULL)
INSERT [dbo].[Roles] ([IDRol], [Nombre], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'313698b6-3e93-4b60-8416-e6d784852151', N'Profesor', 1, CAST(N'2022-04-22T09:53:26.6100000' AS DateTime2), N'504a8096-4a33-4a03-a51b-838d1d5086e4', NULL, NULL)
INSERT [dbo].[Roles] ([IDRol], [Nombre], [IsActive], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'68e83b00-814b-47b3-985c-f298109b45f8', N'Administrador', 1, CAST(N'2022-04-22T09:53:26.6100000' AS DateTime2), N'504a8096-4a33-4a03-a51b-838d1d5086e5', NULL, NULL)
GO
INSERT [dbo].[Usuario] ([IDUsuario], [Correo], [Username], [Nombre], [Apellido], [Edad], [NumeroTelefono], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'esilvera@correo.com', N'esilvera', N'Ernesto', N'Silvera', N'25', N'0414-52343212', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:47:54.4833333' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T23:07:37.9118765' AS DateTime2))
INSERT [dbo].[Usuario] ([IDUsuario], [Correo], [Username], [Nombre], [Apellido], [Edad], [NumeroTelefono], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'george@bloomcker.com', N'george', N'George', N'Bloomcker', N'28', N'0414-234213', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T21:08:50.4991940' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.2132597' AS DateTime2))
INSERT [dbo].[Usuario] ([IDUsuario], [Correo], [Username], [Nombre], [Apellido], [Edad], [NumeroTelefono], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', N'demo@demo.com', N'rootMaster', N'rootMaster', N'rootMaster', N'99', N'0411-324122', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T15:48:38.5666667' AS DateTime2), NULL, NULL)
GO
INSERT [dbo].[UsuarioEstatus] ([IDUsuarioEstatus], [IDUsuario], [IDEstatus], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'eeeb633d-6f8c-44a3-a6a0-34a8d90205e0', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'92a31296-c1a5-44ec-ac4e-136bef8a2206', CAST(N'2022-04-27T21:08:50.5200121' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', NULL, NULL)
INSERT [dbo].[UsuarioEstatus] ([IDUsuarioEstatus], [IDUsuario], [IDEstatus], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'2cdab0d1-8d25-44c1-8f29-a109e87b0fc3', N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'92a31296-c1a5-44ec-ac4e-136bef8a2206', CAST(N'2022-04-27T11:42:29.0600000' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T11:50:10.4962137' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[UsuarioEstatus] ([IDUsuarioEstatus], [IDUsuario], [IDEstatus], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'bb1425ea-becb-4ae1-bca1-b5310464b6b7', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', N'92a31296-c1a5-44ec-ac4e-136bef8a2206', CAST(N'2022-04-27T11:43:33.2433333' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', NULL, NULL)
GO
INSERT [dbo].[UsuarioPass] ([IDUsuarioPass], [IDUsuario], [Pass], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'084d0cc4-e125-4375-be81-2d41d03e5571', N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'ADWXX5z8Obnl+BHTha+SqQT3C0mS1g64DKz5oLt2ow9MdXxX5a265c7NitvGLb8C1w==', CAST(N'2022-04-26T18:08:32.3233333' AS DateTime2), N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', CAST(N'2022-04-27T23:07:37.9200888' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[UsuarioPass] ([IDUsuarioPass], [IDUsuario], [Pass], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'21d28692-ee57-4fc6-a238-530685fd3a64', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'AJzidQpfYUfLsx0eGWw94GARgocgfbyek4QmYAZDIJnUcgmjcuHMwhWCCC8Y/ZA07w==', CAST(N'2022-04-27T21:08:50.7911251' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T22:53:11.2228224' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[UsuarioPass] ([IDUsuarioPass], [IDUsuario], [Pass], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'959a7dcd-6647-465c-ba79-a2ac11be3a5f', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', N'AHGrklbE37tMqtpuANP1/1+uNqrEi1bB9Z8o9u+guckWHQ47gJyAlWEz45aN4n949w==', CAST(N'2022-04-26T18:11:13.7833333' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', NULL, NULL)
GO
INSERT [dbo].[UsuarioRoles] ([IDUsuarioRol], [IDUsuario], [IDRol], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'a3f67035-5d9e-4e6a-bc5b-41ca787ba3e1', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', N'68e83b00-814b-47b3-985c-f298109b45f8', CAST(N'2022-04-26T17:46:28.3333333' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', NULL, NULL)
INSERT [dbo].[UsuarioRoles] ([IDUsuarioRol], [IDUsuario], [IDRol], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'9ebf1a2b-2ae2-4596-86f0-4645d116ec72', N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'3365835e-03a4-4e61-a7e7-3fadc06f5a07', CAST(N'2022-04-27T23:07:38.0838116' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T23:07:38.0840023' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[UsuarioRoles] ([IDUsuarioRol], [IDUsuario], [IDRol], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'e097c95d-b004-4b89-a39e-ccee7f490ff3', N'b2dc6f14-6f45-45cc-9792-0d2a715a593c', N'fc9e5a87-8652-43a6-baa4-23260f1496a8', CAST(N'2022-04-27T23:07:38.1427572' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', CAST(N'2022-04-27T23:07:38.1427588' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c')
INSERT [dbo].[UsuarioRoles] ([IDUsuarioRol], [IDUsuario], [IDRol], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'e65c8039-8a29-44d2-9634-e1bfd7799772', N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', N'fc9e5a87-8652-43a6-baa4-23260f1496a8', CAST(N'2022-04-26T17:46:11.6266667' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', NULL, NULL)
INSERT [dbo].[UsuarioRoles] ([IDUsuarioRol], [IDUsuario], [IDRol], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'5fc6230e-f5f4-4800-ac4e-e98c9a9a088b', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'68e83b00-814b-47b3-985c-f298109b45f8', CAST(N'2022-04-27T21:08:50.7646252' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', NULL, NULL)
INSERT [dbo].[UsuarioRoles] ([IDUsuarioRol], [IDUsuario], [IDRol], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'94a9010b-aa53-4f72-a674-fea46cf3a25d', N'7609bb0d-701c-4333-b304-14bdc0b3e73c', N'313698b6-3e93-4b60-8416-e6d784852151', CAST(N'2022-04-27T21:08:50.7793194' AS DateTime2), N'409ce001-cf5e-4ef3-aa91-a0bac1c57a7c', NULL, NULL)
GO
ALTER TABLE [dbo].[AcademiaArea] ADD  CONSTRAINT [DF_Table_3_IDMaestroArea]  DEFAULT (newid()) FOR [IDAcademiaArea]
GO
ALTER TABLE [dbo].[AcademiaArea] ADD  CONSTRAINT [DF_AcademiaArea_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Academias] ADD  CONSTRAINT [DF_Academias_IDArea]  DEFAULT (newid()) FOR [IDAcademia]
GO
ALTER TABLE [dbo].[Academias] ADD  CONSTRAINT [DF_Academias_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AlumnoArea] ADD  CONSTRAINT [DF_AlumnoArea_IDAlumnoUsuario]  DEFAULT (newid()) FOR [IDAlumnoArea]
GO
ALTER TABLE [dbo].[AlumnoArea] ADD  CONSTRAINT [DF_AlumnoArea_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AreaClase] ADD  CONSTRAINT [DF_AreaClase_IDAlumno]  DEFAULT (newid()) FOR [IDArea]
GO
ALTER TABLE [dbo].[AreaClase] ADD  CONSTRAINT [DF_AreaClase_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Estatus] ADD  DEFAULT (newid()) FOR [IDEstatus]
GO
ALTER TABLE [dbo].[Estatus] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MaestroAcademia] ADD  CONSTRAINT [DF_MaestroAcademia_IDAcademiaArea]  DEFAULT (newid()) FOR [IDMaestroAcademia]
GO
ALTER TABLE [dbo].[MaestroAcademia] ADD  CONSTRAINT [DF_MaestroAcademia_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MaestroArea] ADD  CONSTRAINT [DF_Table_2_IDAlumnoArea]  DEFAULT (newid()) FOR [IDMaestroArea]
GO
ALTER TABLE [dbo].[MaestroArea] ADD  CONSTRAINT [DF_MaestroArea_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (newid()) FOR [IDRol]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_IDUsuario]  DEFAULT (newid()) FOR [IDUsuario]
GO
ALTER TABLE [dbo].[Usuario] ADD  CONSTRAINT [DF_Usuario_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UsuarioEstatus] ADD  DEFAULT (newid()) FOR [IDUsuarioEstatus]
GO
ALTER TABLE [dbo].[UsuarioEstatus] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UsuarioPass] ADD  CONSTRAINT [DF_UsuarioPass_IDUsuarioPass]  DEFAULT (newid()) FOR [IDUsuarioPass]
GO
ALTER TABLE [dbo].[UsuarioPass] ADD  CONSTRAINT [DF_UsuarioPass_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UsuarioRoles] ADD  DEFAULT (newid()) FOR [IDUsuarioRol]
GO
ALTER TABLE [dbo].[UsuarioRoles] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[AcademiaArea]  WITH CHECK ADD  CONSTRAINT [FK_AcademiaArea_Academias] FOREIGN KEY([IDAcademia])
REFERENCES [dbo].[Academias] ([IDAcademia])
GO
ALTER TABLE [dbo].[AcademiaArea] CHECK CONSTRAINT [FK_AcademiaArea_Academias]
GO
ALTER TABLE [dbo].[AcademiaArea]  WITH CHECK ADD  CONSTRAINT [FK_AcademiaArea_AreaClase] FOREIGN KEY([IDArea])
REFERENCES [dbo].[AreaClase] ([IDArea])
GO
ALTER TABLE [dbo].[AcademiaArea] CHECK CONSTRAINT [FK_AcademiaArea_AreaClase]
GO
ALTER TABLE [dbo].[AlumnoArea]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoArea_AreaClase] FOREIGN KEY([IDArea])
REFERENCES [dbo].[AreaClase] ([IDArea])
GO
ALTER TABLE [dbo].[AlumnoArea] CHECK CONSTRAINT [FK_AlumnoArea_AreaClase]
GO
ALTER TABLE [dbo].[AlumnoArea]  WITH CHECK ADD  CONSTRAINT [FK_AlumnoArea_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[AlumnoArea] CHECK CONSTRAINT [FK_AlumnoArea_Usuario]
GO
ALTER TABLE [dbo].[MaestroAcademia]  WITH CHECK ADD  CONSTRAINT [FK_MaestroAcademia_Academias] FOREIGN KEY([IDAcademia])
REFERENCES [dbo].[Academias] ([IDAcademia])
GO
ALTER TABLE [dbo].[MaestroAcademia] CHECK CONSTRAINT [FK_MaestroAcademia_Academias]
GO
ALTER TABLE [dbo].[MaestroAcademia]  WITH CHECK ADD  CONSTRAINT [FK_MaestroAcademia_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[MaestroAcademia] CHECK CONSTRAINT [FK_MaestroAcademia_Usuario]
GO
ALTER TABLE [dbo].[MaestroArea]  WITH CHECK ADD  CONSTRAINT [FK_MaestroArea_AreaClase] FOREIGN KEY([IDArea])
REFERENCES [dbo].[AreaClase] ([IDArea])
GO
ALTER TABLE [dbo].[MaestroArea] CHECK CONSTRAINT [FK_MaestroArea_AreaClase]
GO
ALTER TABLE [dbo].[MaestroArea]  WITH CHECK ADD  CONSTRAINT [FK_MaestroArea_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[MaestroArea] CHECK CONSTRAINT [FK_MaestroArea_Usuario]
GO
ALTER TABLE [dbo].[UsuarioEstatus]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioEstatus_Estatus] FOREIGN KEY([IDEstatus])
REFERENCES [dbo].[Estatus] ([IDEstatus])
GO
ALTER TABLE [dbo].[UsuarioEstatus] CHECK CONSTRAINT [FK_UsuarioEstatus_Estatus]
GO
ALTER TABLE [dbo].[UsuarioEstatus]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioEstatus_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[UsuarioEstatus] CHECK CONSTRAINT [FK_UsuarioEstatus_Usuario]
GO
ALTER TABLE [dbo].[UsuarioPass]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioPass_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[UsuarioPass] CHECK CONSTRAINT [FK_UsuarioPass_Usuario]
GO
ALTER TABLE [dbo].[UsuarioRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioRoles_Roles] FOREIGN KEY([IDRol])
REFERENCES [dbo].[Roles] ([IDRol])
GO
ALTER TABLE [dbo].[UsuarioRoles] CHECK CONSTRAINT [FK_UsuarioRoles_Roles]
GO
ALTER TABLE [dbo].[UsuarioRoles]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioRoles_Usuario] FOREIGN KEY([IDUsuario])
REFERENCES [dbo].[Usuario] ([IDUsuario])
GO
ALTER TABLE [dbo].[UsuarioRoles] CHECK CONSTRAINT [FK_UsuarioRoles_Usuario]
GO
USE [master]
GO
ALTER DATABASE [AcademiaMesopotamia] SET  READ_WRITE 
GO
