USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[contingencia_caducidad]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[contingencia_caducidad] 
as
begin
	declare
		@total int
		
		
		select @total = 999
		

		select emi.RazonSocial ,con.EmisorId, COUNT(con.EmisorId) as Contingencia,cad.EmailCliente    
		from Contingencia con, Emisor emi,CertificadoCaducidad cad
		where  con.Utilizado=0
			   and emi.Id=con.emisorid
			   and cad.emisorId=con.EmisorId	
		group by emi.RazonSocial,con.EmisorId, cad.EmailCliente   
		having COUNT(con.EmisorId)<=@total
		order by con.EmisorId
  

end
--exec [contingencia_caducidad] 

GO
