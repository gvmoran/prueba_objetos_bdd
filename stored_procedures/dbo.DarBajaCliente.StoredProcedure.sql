USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[DarBajaCliente]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec [DarBajaCliente] 55
CREATE procedure [dbo].[DarBajaCliente]
@emisor int
as 
begin 
	 update  Emisor
	 set ActivoDocServer=0,
	  ActivoWebPortal=0,
	  activo=0
	 where id=@emisor;
	
	 update IP
	 set Activa=0
	 where EmisorId=@emisor;

	 update seg
	  set seg.Activo=0
	 from UsuarioEmisor usu, Seguridad.Usuario seg
	 where usu.UsuarioId=seg.Id
	 and EmisorId=@emisor;

end
GO
