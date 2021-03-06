USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_ListaNegraPorCliente]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec [nd_ListaNegraPorCliente] 12
CREATE PROCEDURE [dbo].[nd_ListaNegraPorCliente]
  @EmisorId int 
as
begin 


select distinct IdentificacionCliente,NombreCliente,Email from  DocumentoCabecera cab,
Emisor emi
where cab.Ruc=emi.Ruc
and emi.id=@EmisorId
and Email  in (select email from ListaNegra where EmisorId=@EmisorId and Estado=1 and incremento>2)


end



GO
