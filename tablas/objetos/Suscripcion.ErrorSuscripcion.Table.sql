USE [nDocs_Preprod]
GO
/****** Object:  Table [Suscripcion].[ErrorSuscripcion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Suscripcion].[ErrorSuscripcion](
	[ErrorSuscripcionId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](128) NOT NULL,
	[Descripcion] [nvarchar](512) NOT NULL,
 CONSTRAINT [PK_ErrorSuscripcion] PRIMARY KEY CLUSTERED 
(
	[ErrorSuscripcionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
