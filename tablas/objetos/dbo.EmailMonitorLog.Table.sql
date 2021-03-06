USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EmailMonitorLog]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailMonitorLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Remitente] [varchar](255) NOT NULL,
	[Asunto] [varchar](255) NULL,
	[EmisorEmailMonitorId] [int] NOT NULL,
 CONSTRAINT [PK__EmailMon__3214EC07223A1162] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmailMonitorLog]  WITH CHECK ADD  CONSTRAINT [FK__EmailMoni__Emiso__76EBA2E9] FOREIGN KEY([EmisorEmailMonitorId])
REFERENCES [dbo].[EmisorEmailMonitor] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EmailMonitorLog] CHECK CONSTRAINT [FK__EmailMoni__Emiso__76EBA2E9]
GO
