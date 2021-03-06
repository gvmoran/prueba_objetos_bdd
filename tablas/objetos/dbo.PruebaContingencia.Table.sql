USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[PruebaContingencia]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PruebaContingencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[CodigoNumerico] [varchar](37) NOT NULL,
	[Utilizado] [bit] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NULL
) ON [PRIMARY]
GO
