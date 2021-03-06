USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EntEmisors]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntEmisors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GrupoEmpresarialId] [int] NOT NULL,
	[EstadoEmisorId] [int] NULL,
	[Ruc] [nvarchar](max) NULL,
	[CodigoNumerico] [nvarchar](max) NULL,
	[RazonSocial] [nvarchar](max) NULL,
	[Direccion] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Workspace] [nvarchar](max) NULL,
	[ActivoDocServer] [bit] NOT NULL,
	[ActivoWebPortal] [bit] NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EntEmisors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
