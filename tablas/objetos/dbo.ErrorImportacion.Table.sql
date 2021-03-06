USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[ErrorImportacion]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorImportacion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Error] [text] NOT NULL,
	[EmailMonitorLogId] [int] NOT NULL,
 CONSTRAINT [PK__ErrorImp__3214EC07A9FBBF12] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[ErrorImportacion]  WITH CHECK ADD  CONSTRAINT [FK__ErrorImpo__Email__77DFC722] FOREIGN KEY([EmailMonitorLogId])
REFERENCES [dbo].[EmailMonitorLog] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ErrorImportacion] CHECK CONSTRAINT [FK__ErrorImpo__Email__77DFC722]
GO
