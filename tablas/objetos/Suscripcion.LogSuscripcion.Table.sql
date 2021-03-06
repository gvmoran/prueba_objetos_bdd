USE [nDocs_Preprod]
GO
/****** Object:  Table [Suscripcion].[LogSuscripcion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Suscripcion].[LogSuscripcion](
	[LogSuscripcionId] [int] IDENTITY(1,1) NOT NULL,
	[SuscripcionId] [int] NOT NULL,
	[ErrorSuscripcionId] [int] NOT NULL,
	[FechaRegistro] [datetime] NOT NULL,
	[Detalle] [nvarchar](500) NULL,
 CONSTRAINT [PK_LogSuscripcion] PRIMARY KEY CLUSTERED 
(
	[LogSuscripcionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Suscripcion].[LogSuscripcion]  WITH CHECK ADD  CONSTRAINT [FK_LogSuscripcion_ErrorSuscripcion] FOREIGN KEY([ErrorSuscripcionId])
REFERENCES [Suscripcion].[ErrorSuscripcion] ([ErrorSuscripcionId])
GO
ALTER TABLE [Suscripcion].[LogSuscripcion] CHECK CONSTRAINT [FK_LogSuscripcion_ErrorSuscripcion]
GO
ALTER TABLE [Suscripcion].[LogSuscripcion]  WITH CHECK ADD  CONSTRAINT [FK_LogSuscripcion_Suscripcion] FOREIGN KEY([SuscripcionId])
REFERENCES [Suscripcion].[Suscripcion] ([SuscripcionId])
GO
ALTER TABLE [Suscripcion].[LogSuscripcion] CHECK CONSTRAINT [FK_LogSuscripcion_Suscripcion]
GO
