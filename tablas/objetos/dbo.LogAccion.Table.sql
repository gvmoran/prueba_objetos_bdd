USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[LogAccion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogAccion](
	[LogAccionId] [int] IDENTITY(1,1) NOT NULL,
	[LogProcesoId] [int] NOT NULL,
	[Descripcion] [varchar](512) NOT NULL,
 CONSTRAINT [PK_LogAccion] PRIMARY KEY CLUSTERED 
(
	[LogAccionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LogAccion]  WITH CHECK ADD  CONSTRAINT [FK_LogAccion_LogProceso] FOREIGN KEY([LogProcesoId])
REFERENCES [dbo].[LogProceso] ([LogProcesoId])
GO
ALTER TABLE [dbo].[LogAccion] CHECK CONSTRAINT [FK_LogAccion_LogProceso]
GO
