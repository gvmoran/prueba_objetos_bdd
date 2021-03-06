USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[DocumentoLog]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentoLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DocumentoId] [int] NOT NULL,
	[EstadoProcesoId] [int] NOT NULL,
	[Mensaje] [varchar](1000) NULL,
	[Detalle] [varchar](7000) NULL,
	[FechaCreacion] [datetime] NOT NULL,
 CONSTRAINT [PK_DocumentoLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentoLog]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoDetalle_Documento] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
GO
ALTER TABLE [dbo].[DocumentoLog] CHECK CONSTRAINT [FK_DocumentoDetalle_Documento]
GO
ALTER TABLE [dbo].[DocumentoLog]  WITH CHECK ADD  CONSTRAINT [FK_DocumentoDetalle_EstadoProceso] FOREIGN KEY([EstadoProcesoId])
REFERENCES [dbo].[EstadoProceso] ([EstadoProcesoId])
GO
ALTER TABLE [dbo].[DocumentoLog] CHECK CONSTRAINT [FK_DocumentoDetalle_EstadoProceso]
GO
