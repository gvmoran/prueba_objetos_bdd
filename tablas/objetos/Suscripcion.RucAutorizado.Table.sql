USE [nDocs_Preprod]
GO
/****** Object:  Table [Suscripcion].[RucAutorizado]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Suscripcion].[RucAutorizado](
	[RucAutorizadoId] [int] IDENTITY(1,1) NOT NULL,
	[SuscripcionId] [int] NOT NULL,
	[Ruc] [nvarchar](16) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Activo] [bit] NOT NULL,
	[RazonSocial] [nvarchar](64) NOT NULL,
 CONSTRAINT [PK_RucAutorizado] PRIMARY KEY CLUSTERED 
(
	[RucAutorizadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Suscripcion].[RucAutorizado]  WITH CHECK ADD  CONSTRAINT [FK_RucAutorizado_Suscripcion] FOREIGN KEY([SuscripcionId])
REFERENCES [Suscripcion].[Suscripcion] ([SuscripcionId])
GO
ALTER TABLE [Suscripcion].[RucAutorizado] CHECK CONSTRAINT [FK_RucAutorizado_Suscripcion]
GO
