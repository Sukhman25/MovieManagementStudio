USE [master]
GO
/****** Object:  Database [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19]    Script Date: 04-09-2020 23:09:14 ******/
CREATE DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19', FILENAME = N'C:\Users\Sukhmanpreet Singh\MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19_log', FILENAME = N'C:\Users\Sukhmanpreet Singh\MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET ARITHABORT OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET  MULTI_USER 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET QUERY_STORE = OFF
GO
USE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 04-09-2020 23:09:14 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 04-09-2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[DOB] [date] NOT NULL,
	[Bio] [nvarchar](500) NULL,
	[IsSuperstar] [bit] NOT NULL,
	[MovieFk] [int] NOT NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 04-09-2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MovieName] [nvarchar](max) NULL,
	[Plot] [nvarchar](50) NOT NULL,
	[ReleaseYear] [int] NOT NULL,
	[IsBlockBuster] [bit] NOT NULL,
	[CreatedDt] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Movie] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 04-09-2020 23:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Sex] [nvarchar](1) NOT NULL,
	[DOB] [date] NOT NULL,
	[Bio] [nvarchar](max) NULL,
	[MovieFk] [int] NOT NULL,
 CONSTRAINT [PK_Producer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200904013500_MMSCDB', N'3.1.7')
GO
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([Id], [Name], [Gender], [DOB], [Bio], [IsSuperstar], [MovieFk]) VALUES (1, N'Sukhman', N'M', CAST(N'1999-12-25' AS Date), N'He is a good actor', 1, 1)
SET IDENTITY_INSERT [dbo].[Actor] OFF
GO
SET IDENTITY_INSERT [dbo].[Movie] ON 

INSERT [dbo].[Movie] ([Id], [MovieName], [Plot], [ReleaseYear], [IsBlockBuster], [CreatedDt]) VALUES (1, N'Ardaas', N'It is a religious movie.', 2019, 1, CAST(N'2019-10-20T10:12:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Movie] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([Id], [Name], [Sex], [DOB], [Bio], [MovieFk]) VALUES (1, N'Shivam', N'M', CAST(N'1998-11-24' AS Date), N'He is a good producer', 1)
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
/****** Object:  Index [IX_Actor_MovieFk]    Script Date: 04-09-2020 23:09:15 ******/
CREATE NONCLUSTERED INDEX [IX_Actor_MovieFk] ON [dbo].[Actor]
(
	[MovieFk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Producer_MovieFk]    Script Date: 04-09-2020 23:09:15 ******/
CREATE NONCLUSTERED INDEX [IX_Producer_MovieFk] ON [dbo].[Producer]
(
	[MovieFk] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Actor]  WITH CHECK ADD  CONSTRAINT [FK_Actor_Movie_MovieFk] FOREIGN KEY([MovieFk])
REFERENCES [dbo].[Movie] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actor] CHECK CONSTRAINT [FK_Actor_Movie_MovieFk]
GO
ALTER TABLE [dbo].[Producer]  WITH CHECK ADD  CONSTRAINT [FK_Producer_Movie_MovieFk] FOREIGN KEY([MovieFk])
REFERENCES [dbo].[Movie] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Producer] CHECK CONSTRAINT [FK_Producer_Movie_MovieFk]
GO
USE [master]
GO
ALTER DATABASE [MovieManagementStudioContext-e8522470-2129-4976-bace-0d6a66fa7d19] SET  READ_WRITE 
GO
