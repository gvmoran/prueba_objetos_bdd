USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[Contingencias]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contingencias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[CodigoNumerico] [nvarchar](max) NULL,
	[Utilizado] [bit] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_dbo.Contingencias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contingencias]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Contingencias_dbo.Emisors_EmisorId] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Contingencias] CHECK CONSTRAINT [FK_dbo.Contingencias_dbo.Emisors_EmisorId]
GO
