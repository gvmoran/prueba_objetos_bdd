USE [nDocs_Preprod]
GO
/****** Object:  Table [Facturacion].[PlanFacturacion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facturacion].[PlanFacturacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](4) NOT NULL,
	[Desde] [int] NOT NULL,
	[Hasta] [int] NOT NULL,
	[ClientePVP] [money] NOT NULL,
	[ClientePVPMensual] [money] NOT NULL,
	[ClientePVPAnual] [money] NOT NULL,
	[AlianzaPVP] [money] NOT NULL,
	[AlianzaPVPMensual] [money] NOT NULL,
	[AlianzaPVPAnual] [money] NOT NULL,
	[Comision] [money] NOT NULL,
	[ComisionPorcentaje] [decimal](18, 4) NOT NULL,
	[Exceso] [money] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Alianza] [bit] NOT NULL,
	[TipoEmpresa] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PlanFacturacion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_PlanFacturacion_Codigo] UNIQUE NONCLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
