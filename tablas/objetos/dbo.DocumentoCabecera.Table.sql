USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[DocumentoCabecera]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentoCabecera](
	[DocumentoId] [int] NOT NULL,
	[Ambiente] [char](1) NOT NULL,
	[TipoEmision] [char](1) NOT NULL,
	[RazonSocial] [varchar](300) NULL,
	[NombreComercial] [varchar](300) NULL,
	[Ruc] [varchar](20) NULL,
	[ClaveAcceso] [varchar](50) NOT NULL,
	[CodigoDocumento] [int] NOT NULL,
	[Establecimiento] [varchar](3) NOT NULL,
	[PuntoEmision] [varchar](3) NOT NULL,
	[Secuencial] [varchar](9) NOT NULL,
	[DireccionMatriz] [varchar](300) NULL,
	[FechaEmision] [date] NOT NULL,
	[Email] [varchar](300) NULL,
	[IdentificacionCliente] [varchar](20) NULL,
	[NombreCliente] [varchar](300) NULL,
 CONSTRAINT [PK_DocumentoCabecera] PRIMARY KEY CLUSTERED 
(
	[DocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentoCabecera] ADD  DEFAULT ('') FOR [NombreCliente]
GO
ALTER TABLE [dbo].[DocumentoCabecera]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoCabecera_Documento] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
GO
ALTER TABLE [dbo].[DocumentoCabecera] CHECK CONSTRAINT [FK_DocumentoCabecera_Documento]
GO
ALTER TABLE [dbo].[DocumentoCabecera]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoCabecera_TipoDocumento] FOREIGN KEY([CodigoDocumento])
REFERENCES [dbo].[TipoDocumento] ([TipoDocumentoId])
GO
ALTER TABLE [dbo].[DocumentoCabecera] CHECK CONSTRAINT [FK_DocumentoCabecera_TipoDocumento]
GO
