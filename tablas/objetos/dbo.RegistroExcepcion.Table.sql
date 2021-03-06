USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[RegistroExcepcion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistroExcepcion](
	[RegistroExcepcionId] [bigint] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](50) NOT NULL,
	[RucEmisor] [varchar](16) NULL,
	[RucCliente] [varchar](16) NULL,
	[Estado] [varchar](64) NULL,
	[Comentario] [varchar](1024) NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_RegistroExcepcion] PRIMARY KEY CLUSTERED 
(
	[RegistroExcepcionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
