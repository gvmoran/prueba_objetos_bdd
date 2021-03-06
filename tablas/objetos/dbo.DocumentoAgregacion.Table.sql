USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[DocumentoAgregacion]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentoAgregacion](
	[DocumentoId] [int] NOT NULL,
	[SubTotal] [real] NULL,
 CONSTRAINT [PK__Document__5DDBFC7677536F75] PRIMARY KEY CLUSTERED 
(
	[DocumentoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DocumentoAgregacion]  WITH CHECK ADD  CONSTRAINT [FK__Documento__Docum__4959E263] FOREIGN KEY([DocumentoId])
REFERENCES [dbo].[Documento] ([DocumentoId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocumentoAgregacion] CHECK CONSTRAINT [FK__Documento__Docum__4959E263]
GO
