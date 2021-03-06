USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[CertificadoCaducidad]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CertificadoCaducidad](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[FechaCaducidad] [datetime] NULL,
	[EmailCliente] [varchar](100) NULL,
	[FechaInicioContrato] [datetime] NULL,
	[FechaFinContrato] [datetime] NULL,
	[TipoPago] [varchar](100) NULL,
	[NumDocumentosInicia] [int] NULL,
	[NumDocumentosAdquiere] [int] NULL,
	[NumDocumentosNotifica] [int] NULL,
	[clintemora] [int] NULL,
	[ValorMora] [decimal](5, 2) NULL,
 CONSTRAINT [PK_CertificadoCaducidad] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CertificadoCaducidad] ADD  DEFAULT ((0.00)) FOR [ValorMora]
GO
