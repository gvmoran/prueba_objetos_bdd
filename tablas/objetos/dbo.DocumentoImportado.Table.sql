USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[DocumentoImportado]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentoImportado](
	[DocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[ClaveAcceso] [varchar](50) NULL,
	[Xml] [varbinary](max) NOT NULL,
	[XmlAutorizado] [varbinary](max) NULL,
	[NumeroAutorizacion] [varchar](50) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[EstadoActual] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[EmisorPropietarioId] [int] NOT NULL,
	[OrigenImportacion] [int] NOT NULL,
	[Aprobado] [bit] NULL,
	[Asignado] [int] NULL,
 CONSTRAINT [PK_DocumentoImportado] PRIMARY KEY CLUSTERED 
(
	[DocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_DocumentoImportado_ClaveAcceso] UNIQUE NONCLUSTERED 
(
	[ClaveAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentoImportado] ADD  CONSTRAINT [DF__Documento__Fecha__02925FBF]  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[DocumentoImportado]  WITH CHECK ADD FOREIGN KEY([Asignado])
REFERENCES [Seguridad].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[DocumentoImportado]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoImportado_Emisor] FOREIGN KEY([EmisorPropietarioId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[DocumentoImportado] CHECK CONSTRAINT [FK_DocumentoImportado_Emisor]
GO
ALTER TABLE [dbo].[DocumentoImportado]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoImportado_EstadoProceso] FOREIGN KEY([EstadoActual])
REFERENCES [dbo].[EstadoProceso] ([EstadoProcesoId])
GO
ALTER TABLE [dbo].[DocumentoImportado] CHECK CONSTRAINT [FK_DocumentoImportado_EstadoProceso]
GO
