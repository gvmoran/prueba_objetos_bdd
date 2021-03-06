USE [nDocs_Preprod]
GO
/****** Object:  Table [dbo].[EstadoProceso]    Script Date: 2018-08-07 10:52:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstadoProceso](
	[EstadoProcesoId] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Monitorear] [bit] NOT NULL,
 CONSTRAINT [PK_EstadoProceso] PRIMARY KEY CLUSTERED 
(
	[EstadoProcesoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
