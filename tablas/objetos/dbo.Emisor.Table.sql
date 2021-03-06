USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[Emisor]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emisor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GrupoEmpresarialId] [int] NOT NULL,
	[EstadoEmisorId] [int] NULL,
	[Ruc] [varchar](16) NOT NULL,
	[CodigoNumerico] [varchar](8) NOT NULL,
	[RazonSocial] [varchar](64) NOT NULL,
	[Direccion] [varchar](128) NULL,
	[Telefono] [varchar](16) NULL,
	[Workspace] [varchar](128) NOT NULL,
	[ActivoDocServer] [bit] NOT NULL,
	[ActivoWebPortal] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
	[ConfiguracionEmailId] [int] NOT NULL,
 CONSTRAINT [PK_Facturador] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UNQ_Facturador_Ruc] UNIQUE NONCLUSTERED 
(
	[Ruc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Emisor] ADD  DEFAULT ((1)) FOR [ConfiguracionEmailId]
GO
ALTER TABLE [dbo].[Emisor]  WITH CHECK ADD  CONSTRAINT [FK_ConfiguracionEmailEmisor] FOREIGN KEY([ConfiguracionEmailId])
REFERENCES [dbo].[ConfiguracionEmail] ([Id])
GO
ALTER TABLE [dbo].[Emisor] CHECK CONSTRAINT [FK_ConfiguracionEmailEmisor]
GO
ALTER TABLE [dbo].[Emisor]  WITH CHECK ADD  CONSTRAINT [FK_Emisor_EstadoEmisor] FOREIGN KEY([EstadoEmisorId])
REFERENCES [dbo].[EstadoEmisor] ([EstadoEmisorId])
GO
ALTER TABLE [dbo].[Emisor] CHECK CONSTRAINT [FK_Emisor_EstadoEmisor]
GO
ALTER TABLE [dbo].[Emisor]  WITH CHECK ADD  CONSTRAINT [FK_Emisor_GrupoEmpresarial] FOREIGN KEY([GrupoEmpresarialId])
REFERENCES [dbo].[GrupoEmpresarial] ([Id])
GO
ALTER TABLE [dbo].[Emisor] CHECK CONSTRAINT [FK_Emisor_GrupoEmpresarial]
GO
