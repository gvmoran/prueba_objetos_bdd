USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[ListaNegra]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListaNegra](
	[email] [varchar](300) NOT NULL,
	[EmisorId] [int] NULL,
	[incremento] [int] NULL,
	[Fecha] [datetime] NULL,
	[Estado] [bit] NULL
) ON [PRIMARY]
GO
