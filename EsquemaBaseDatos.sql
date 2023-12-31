USE [master]
GO
/****** Object:  Database [EnergyDistributionAnalysisSystem]    Script Date: 07/8/2023 9:29:40 p. m. ******/
CREATE DATABASE [EnergyDistributionAnalysisSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'EnergyDistributionAnalysisSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EnergyDistributionAnalysisSystem.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'EnergyDistributionAnalysisSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\EnergyDistributionAnalysisSystem_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EnergyDistributionAnalysisSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET  MULTI_USER 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET QUERY_STORE = OFF
GO
USE [EnergyDistributionAnalysisSystem]
GO
/****** Object:  Table [dbo].[Consumo]    Script Date: 07/8/2023 9:29:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consumo](
	[linea_id] [int] NOT NULL,
	[fecha_id] [int] NOT NULL,
	[sector_id] [int] NOT NULL,
	[valor] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[linea_id] ASC,
	[fecha_id] ASC,
	[sector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Costo]    Script Date: 07/8/2023 9:29:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Costo](
	[linea_id] [int] NOT NULL,
	[fecha_id] [int] NOT NULL,
	[sector_id] [int] NOT NULL,
	[valor] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[linea_id] ASC,
	[fecha_id] ASC,
	[sector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fecha]    Script Date: 07/8/2023 9:29:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fecha](
	[fecha_id] [int] NOT NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[fecha_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Linea]    Script Date: 07/8/2023 9:29:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Linea](
	[linea_id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[linea_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perdida]    Script Date: 07/8/2023 9:29:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perdida](
	[linea_id] [int] NOT NULL,
	[fecha_id] [int] NOT NULL,
	[sector_id] [int] NOT NULL,
	[valor] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[linea_id] ASC,
	[fecha_id] ASC,
	[sector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 07/8/2023 9:29:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[sector_id] [int] NOT NULL,
	[nombre] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[sector_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Consumo]  WITH CHECK ADD FOREIGN KEY([fecha_id])
REFERENCES [dbo].[Fecha] ([fecha_id])
GO
ALTER TABLE [dbo].[Consumo]  WITH CHECK ADD FOREIGN KEY([linea_id])
REFERENCES [dbo].[Linea] ([linea_id])
GO
ALTER TABLE [dbo].[Consumo]  WITH CHECK ADD FOREIGN KEY([sector_id])
REFERENCES [dbo].[Sector] ([sector_id])
GO
ALTER TABLE [dbo].[Costo]  WITH CHECK ADD FOREIGN KEY([fecha_id])
REFERENCES [dbo].[Fecha] ([fecha_id])
GO
ALTER TABLE [dbo].[Costo]  WITH CHECK ADD FOREIGN KEY([linea_id])
REFERENCES [dbo].[Linea] ([linea_id])
GO
ALTER TABLE [dbo].[Costo]  WITH CHECK ADD FOREIGN KEY([sector_id])
REFERENCES [dbo].[Sector] ([sector_id])
GO
ALTER TABLE [dbo].[Perdida]  WITH CHECK ADD FOREIGN KEY([fecha_id])
REFERENCES [dbo].[Fecha] ([fecha_id])
GO
ALTER TABLE [dbo].[Perdida]  WITH CHECK ADD FOREIGN KEY([linea_id])
REFERENCES [dbo].[Linea] ([linea_id])
GO
ALTER TABLE [dbo].[Perdida]  WITH CHECK ADD FOREIGN KEY([sector_id])
REFERENCES [dbo].[Sector] ([sector_id])
GO
USE [master]
GO
ALTER DATABASE [EnergyDistributionAnalysisSystem] SET  READ_WRITE 
GO
