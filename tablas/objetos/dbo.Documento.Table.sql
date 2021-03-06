USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[Documento]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Documento](
	[DocumentoId] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[ClaveAcceso] [varchar](50) NULL,
	[ClaveContingencia] [varchar](50) NULL,
	[Xml] [varbinary](max) NOT NULL,
	[XmlFirmado] [varbinary](max) NULL,
	[XmlRecibido] [varbinary](max) NULL,
	[XmlAutorizado] [varbinary](max) NULL,
	[NumeroAutorizacion] [varchar](50) NULL,
	[FechaAutorizacion] [datetime] NULL,
	[EstadoActual] [int] NOT NULL,
	[Contingencia] [bit] NOT NULL,
	[Notificado] [bit] NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Recibido] [bit] NULL,
	[Aprobado] [bit] NULL,
	[Asignado] [int] NULL,
 CONSTRAINT [PK_Documento] PRIMARY KEY CLUSTERED 
(
	[DocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Documento_ClaveAcceso] UNIQUE NONCLUSTERED 
(
	[ClaveAcceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Documento] ADD  DEFAULT (getdate()) FOR [FechaRegistro]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD FOREIGN KEY([Asignado])
REFERENCES [Seguridad].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_EstadoProceso] FOREIGN KEY([EstadoActual])
REFERENCES [dbo].[EstadoProceso] ([EstadoProcesoId])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_EstadoProceso]
GO
ALTER TABLE [dbo].[Documento]  WITH CHECK ADD  CONSTRAINT [FK_Documento_Facturador] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[Documento] CHECK CONSTRAINT [FK_Documento_Facturador]
GO
