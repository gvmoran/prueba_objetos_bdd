USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_entrar_contingencia]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[nd_entrar_contingencia]
as
begin
	update Configuracion
	set valor='2'
	where Clave='ESTADO_SERVICIO'
	
end
GO
