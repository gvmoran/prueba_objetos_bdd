USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[SubirServicioCliente]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec  [SubirServicioCliente] 5
CREATE procedure [dbo].[SubirServicioCliente]
@emisor int
as 
begin 
	 update  Emisor
	 set ActivoDocServer=1,
	  ActivoWebPortal=1,
	  activo=0
	 where id=@emisor;
	
	 update IP
	 set Activa=1
	 where EmisorId=@emisor;

	 update seg
	  set seg.Activo=1
	 from UsuarioEmisor usu, Seguridad.Usuario seg
	 where usu.UsuarioId=seg.Id
	 and EmisorId=@emisor;

end
GO
