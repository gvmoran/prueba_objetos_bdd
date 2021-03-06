USE [nDocs_Preprod]
GO
/****** Object:  Table [Facturacion].[EmisorConsumo]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facturacion].[EmisorConsumo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Anio] [int] NOT NULL,
	[ConsumoEsperado] [int] NOT NULL,
	[ConsumoReal] [int] NULL,
	[ConsumoExceso] [int] NULL,
	[Facturado] [bit] NOT NULL,
	[FechaFacturacion] [date] NULL,
 CONSTRAINT [PK_EmisorConsumo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
