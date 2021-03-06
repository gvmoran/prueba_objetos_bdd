USE [nDocs_Preprod]
GO
/****** Object:  Table [Facturacion].[EmisorPlan]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Facturacion].[EmisorPlan](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[PlanFacturacionId] [int] NOT NULL,
	[FechaInicioContrato] [datetime] NOT NULL,
	[FechaFinContrato] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_EmisorPlan] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Facturacion].[EmisorPlan]  WITH CHECK ADD  CONSTRAINT [FK_EmisorPlan_PlanFacturacion] FOREIGN KEY([PlanFacturacionId])
REFERENCES [Facturacion].[PlanFacturacion] ([Id])
GO
ALTER TABLE [Facturacion].[EmisorPlan] CHECK CONSTRAINT [FK_EmisorPlan_PlanFacturacion]
GO
