USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EmisorEmailMonitor]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmisorEmailMonitor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hostname] [varchar](255) NOT NULL,
	[Port] [int] NOT NULL,
	[RequireSSL] [bit] NOT NULL,
	[Protocol] [varchar](4) NOT NULL,
	[Username] [varchar](32) NOT NULL,
	[Password] [varchar](255) NOT NULL,
	[EmisorId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[NotificationEmail] [varchar](255) NOT NULL,
 CONSTRAINT [PK__EmisorEm__3214EC07EB53F925] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmisorEmailMonitor]  WITH CHECK ADD  CONSTRAINT [FK__EmisorEma__Emiso__24E777C3] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[EmisorEmailMonitor] CHECK CONSTRAINT [FK__EmisorEma__Emiso__24E777C3]
GO
