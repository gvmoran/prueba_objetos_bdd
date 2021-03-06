USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EmailPersonalizado]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailPersonalizado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NULL,
	[TipoDocumentoId] [int] NULL,
	[Html] [varchar](7000) NOT NULL,
	[PathImagen1] [varchar](255) NULL,
	[PathImagen2] [varchar](255) NULL,
 CONSTRAINT [PK_EmailPersonalizado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmailPersonalizado]  WITH CHECK ADD  CONSTRAINT [FK_EmailPersonalizado_EmailPersonalizado] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[EmailPersonalizado] CHECK CONSTRAINT [FK_EmailPersonalizado_EmailPersonalizado]
GO
ALTER TABLE [dbo].[EmailPersonalizado]  WITH CHECK ADD  CONSTRAINT [FK_EmailPersonalizado_TipoDocumento] FOREIGN KEY([TipoDocumentoId])
REFERENCES [dbo].[TipoDocumento] ([TipoDocumentoId])
GO
ALTER TABLE [dbo].[EmailPersonalizado] CHECK CONSTRAINT [FK_EmailPersonalizado_TipoDocumento]
GO
