USE [nDocs_Preprod]
GO
/****** Objects:  StoredProcedure [dbo].[Agrega_Emisor_Cliente]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Agrega_Emisor_Cliente]
AS
BEGIN


  insert into EmisorCliente (ClienteId, EmisorId)
	SELECT  distinct   cli.id as clienteID, d.EmisorId
	FROM DocumentoCabecera c,
	Documento d, 
	Cliente cli
	where c.DocumentoId=d.DocumentoId
	and c.IdentificacionCliente=cli.Identificacion
	and d.EstadoActual=7
	and cli.Id  not in 
		  (select  ClienteId  from EmisorCliente 
		   where ClienteId=cli.Id 
		   and EmisorId=d.EmisorId )
	


	

END

--EXEC [dbo].[Agrega_Emisor_Cliente]

--SELECT * FROM EmisorCliente WHERE ClienteId=6693 AND EmisorId=23

--SELECT * FROM  Documento WHERE DocumentoId =33464
GO
