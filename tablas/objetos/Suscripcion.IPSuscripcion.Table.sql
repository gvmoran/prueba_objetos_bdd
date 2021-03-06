USE [nDocs_Preprod]
GO
/****** Object:  Table [Suscripcion].[IPSuscripcion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Suscripcion].[IPSuscripcion](
	[IpSuscripcionId] [int] IDENTITY(1,1) NOT NULL,
	[SuscripcionId] [int] NOT NULL,
	[DireccionIP] [nvarchar](32) NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Activa] [bit] NOT NULL,
 CONSTRAINT [PK_IPSuscripciom] PRIMARY KEY CLUSTERED 
(
	[IpSuscripcionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Suscripcion].[IPSuscripcion]  WITH CHECK ADD  CONSTRAINT [FK_IPSuscripciom_Suscripcion] FOREIGN KEY([SuscripcionId])
REFERENCES [Suscripcion].[Suscripcion] ([SuscripcionId])
GO
ALTER TABLE [Suscripcion].[IPSuscripcion] CHECK CONSTRAINT [FK_IPSuscripciom_Suscripcion]
GO
