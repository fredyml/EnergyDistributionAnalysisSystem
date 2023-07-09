USE [EnergyDistributionAnalysisSystem]
GO
/****** Object:  Table [dbo].[Consumo]    Script Date: 07/8/2023 7:21:55 p. m. ******/
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
/****** Object:  Table [dbo].[Costo]    Script Date: 07/8/2023 7:21:55 p. m. ******/
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
/****** Object:  Table [dbo].[Fecha]    Script Date: 07/8/2023 7:21:55 p. m. ******/
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
/****** Object:  Table [dbo].[Linea]    Script Date: 07/8/2023 7:21:55 p. m. ******/
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
/****** Object:  Table [dbo].[Perdida]    Script Date: 07/8/2023 7:21:55 p. m. ******/
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
/****** Object:  Table [dbo].[Sector]    Script Date: 07/8/2023 7:21:55 p. m. ******/
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
