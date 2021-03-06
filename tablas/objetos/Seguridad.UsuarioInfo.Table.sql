USE [nDocs_Preprod]
GO
/****** Object:  Table [Seguridad].[UsuarioInfo]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Seguridad].[UsuarioInfo](
	[UsuarioId] [int] NOT NULL,
	[NombreCompleto] [varchar](128) NOT NULL,
	[Email] [varchar](32) NOT NULL,
	[Telefono] [varchar](16) NULL,
	[Direccion] [varchar](64) NULL,
	[Cargo] [varchar](32) NULL,
 CONSTRAINT [PK_Seguridad.UsuarioInfo] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Seguridad].[UsuarioInfo]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioInfo_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [Seguridad].[Usuario] ([Id])
GO
ALTER TABLE [Seguridad].[UsuarioInfo] CHECK CONSTRAINT [FK_UsuarioInfo_Usuario]
GO
