USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[Contingencia]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contingencia](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[CodigoNumerico] [varchar](37) NOT NULL,
	[Utilizado] [bit] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_Contingencia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contingencia]  WITH CHECK ADD  CONSTRAINT [FK_Contingencia_Facturador] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[Contingencia] CHECK CONSTRAINT [FK_Contingencia_Facturador]
GO
