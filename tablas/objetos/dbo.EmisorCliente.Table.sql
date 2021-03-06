USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EmisorCliente]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmisorCliente](
	[ClienteId] [int] NOT NULL,
	[EmisorId] [int] NOT NULL,
 CONSTRAINT [PK_EmisorCliente] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC,
	[EmisorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmisorCliente]  WITH CHECK ADD  CONSTRAINT [FK_EmisorCliente_Cliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([Id])
GO
ALTER TABLE [dbo].[EmisorCliente] CHECK CONSTRAINT [FK_EmisorCliente_Cliente]
GO
ALTER TABLE [dbo].[EmisorCliente]  WITH CHECK ADD  CONSTRAINT [FK_EmisorCliente_Emisor] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[EmisorCliente] CHECK CONSTRAINT [FK_EmisorCliente_Emisor]
GO
