USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[ConfiguracionEmail]    Script Date: 2018-08-07 10:52:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConfiguracionEmail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioSmtp] [varchar](64) NOT NULL,
	[PasswordSmtp] [varchar](64) NOT NULL,
	[HostSmtp] [varchar](50) NOT NULL,
	[PuertoSmtp] [int] NOT NULL,
	[SenderEmail] [varchar](64) NOT NULL,
	[DisplayName] [varchar](64) NOT NULL,
	[SslModo] [varchar](5) NOT NULL,
 CONSTRAINT [PK_ConfiguracionEmail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConfiguracionEmail] ADD  CONSTRAINT [DF__Configura__SslMo__5E8A0973]  DEFAULT ('SSL') FOR [SslModo]
GO
ALTER TABLE [dbo].[ConfiguracionEmail]  WITH CHECK ADD  CONSTRAINT [CHK_ConfiguracionEmail_Ssl] CHECK  (([SslModo]='AUTO' OR [SslModo]='TLS' OR [SslModo]='SSL' OR [SslModo]='NONE'))
GO
ALTER TABLE [dbo].[ConfiguracionEmail] CHECK CONSTRAINT [CHK_ConfiguracionEmail_Ssl]
GO
