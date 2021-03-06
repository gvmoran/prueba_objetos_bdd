USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EmisorDescarga]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmisorDescarga](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pass] [varchar](30) NULL,
	[UltimaDescarga] [date] NULL,
	[IdEmisor] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmisorDescarga]  WITH CHECK ADD FOREIGN KEY([IdEmisor])
REFERENCES [dbo].[Emisor] ([Id])
GO
