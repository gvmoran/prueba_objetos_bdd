USE [nDocs_Preprod]
GO
/****** Object:  Table [Seguridad].[OpcionMenu]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[OpcionMenu](
	[OpcionId] [int] IDENTITY(1,1) NOT NULL,
	[OpcionNombre] [nvarchar](32) NULL,
	[Descripcion] [nvarchar](128) NULL,
	[PadreId] [int] NULL,
	[Nivel] [int] NOT NULL,
	[URLId] [int] NOT NULL,
	[Tipo] [nvarchar](32) NULL,
	[Orden] [int] NOT NULL,
	[AplicacionMenuID] [int] NULL,
	[AccesoRapido] [bit] NOT NULL,
	[IconoAccesoRapido] [nvarchar](32) NULL,
	[ColorHtmlAccesoRapido] [nvarchar](8) NULL,
 CONSTRAINT [PK_dbo.OpcionMenu] PRIMARY KEY CLUSTERED 
(
	[OpcionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Seguridad].[OpcionMenu]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OpcionMenu_dbo.AplicacionMenu_AplicacionMenuID] FOREIGN KEY([AplicacionMenuID])
REFERENCES [Seguridad].[AplicacionMenu] ([AplicacionMenuID])
GO
ALTER TABLE [Seguridad].[OpcionMenu] CHECK CONSTRAINT [FK_dbo.OpcionMenu_dbo.AplicacionMenu_AplicacionMenuID]
GO
ALTER TABLE [Seguridad].[OpcionMenu]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OpcionMenu_dbo.OpcionMenu_PadreId] FOREIGN KEY([PadreId])
REFERENCES [Seguridad].[OpcionMenu] ([OpcionId])
GO
ALTER TABLE [Seguridad].[OpcionMenu] CHECK CONSTRAINT [FK_dbo.OpcionMenu_dbo.OpcionMenu_PadreId]
GO
ALTER TABLE [Seguridad].[OpcionMenu]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OpcionMenu_dbo.URL_URLId] FOREIGN KEY([URLId])
REFERENCES [Seguridad].[URL] ([URLId])
ON DELETE CASCADE
GO
ALTER TABLE [Seguridad].[OpcionMenu] CHECK CONSTRAINT [FK_dbo.OpcionMenu_dbo.URL_URLId]
GO
