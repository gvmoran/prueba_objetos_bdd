USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[LogDetalleAccion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogDetalleAccion](
	[LogDetalleAccionId] [bigint] IDENTITY(1,1) NOT NULL,
	[LogAccionId] [int] NOT NULL,
	[CodigoReferencia] [char](64) NOT NULL,
	[CodigoReferenciaDependiente] [char](64) NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[Usuario] [varchar](64) NOT NULL,
	[Descripcion] [varchar](1024) NULL,
 CONSTRAINT [PK_LogDetalleAccion] PRIMARY KEY CLUSTERED 
(
	[LogDetalleAccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogDetalleAccion]  WITH CHECK ADD  CONSTRAINT [FK_LogDetalleAccion_LogAccion] FOREIGN KEY([LogAccionId])
REFERENCES [dbo].[LogAccion] ([LogAccionId])
GO
ALTER TABLE [dbo].[LogDetalleAccion] CHECK CONSTRAINT [FK_LogDetalleAccion_LogAccion]
GO
