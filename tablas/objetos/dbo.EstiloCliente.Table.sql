USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EstiloCliente]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstiloCliente](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClienteId] [varchar](255) NULL,
	[ColorPrincipal] [varchar](32) NULL,
	[ReferenciaBanner] [varchar](255) NULL,
	[ReferenciaLogo] [varchar](255) NULL,
	[EmisorId] [int] NULL,
 CONSTRAINT [PK__EstiloCl__3214EC0741F5664E] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EstiloCliente]  WITH CHECK ADD  CONSTRAINT [FK__EstiloCli__Emiso__7FEAFD3E] FOREIGN KEY([EmisorId])
REFERENCES [dbo].[Emisor] ([Id])
GO
ALTER TABLE [dbo].[EstiloCliente] CHECK CONSTRAINT [FK__EstiloCli__Emiso__7FEAFD3E]
GO
