USE [nDocs_Preprod]
GO
/****** Objects:  Table [dbo].[Certificado]    Script Date: 2018-08-07 10:52:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Certificado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[NombreCertificado] [varchar](100) NOT NULL,
	[PasswordCertificado] [varchar](100) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_Certificado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Certificado]  WITH CHECK ADD  CONSTRAINT [FK_Certificado_Facturador] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[Certificado] CHECK CONSTRAINT [FK_Certificado_Facturador]
GO
