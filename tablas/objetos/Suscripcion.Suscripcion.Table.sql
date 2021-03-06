USE [nDocs_Preprod]
GO
/****** Object:  Table [Suscripcion].[Suscripcion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Suscripcion].[Suscripcion](
	[SuscripcionId] [int] IDENTITY(1,1) NOT NULL,
	[Ruc] [nvarchar](16) NOT NULL,
	[RazonSocial] [nvarchar](64) NOT NULL,
	[Activo] [bit] NOT NULL,
	[FechaSuscripcion] [datetime] NOT NULL,
	[FechaFinalizacion] [datetime] NULL,
	[NombreContacto] [nvarchar](64) NOT NULL,
	[TelefonoContacto] [nvarchar](64) NOT NULL,
	[MailContacto] [nvarchar](64) NOT NULL,
	[NombreUsuario] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Suscripcion] PRIMARY KEY CLUSTERED 
(
	[SuscripcionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
