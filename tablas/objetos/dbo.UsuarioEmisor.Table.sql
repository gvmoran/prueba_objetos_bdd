USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[UsuarioEmisor]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsuarioEmisor](
	[UsuarioId] [int] NOT NULL,
	[EmisorId] [int] NOT NULL,
 CONSTRAINT [PK_UsuarioEmisor] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC,
	[EmisorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UsuarioEmisor]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioEmisor_Emisor] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[UsuarioEmisor] CHECK CONSTRAINT [FK_UsuarioEmisor_Emisor]
GO
