USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EstadoEmisor]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoEmisor](
	[EstadoEmisorId] [int] IDENTITY(1,1) NOT NULL,
	[Mensaje] [nvarchar](1024) NULL,
 CONSTRAINT [PK_EstadoEmisor] PRIMARY KEY CLUSTERED 
(
	[EstadoEmisorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
