USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[certificado_caducidad]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[certificado_caducidad] 
as
begin
	declare
		@dia tinyint,
		@fechafinal Date,
		@fechaActual Date
		
		set @fechaActual =  GETDATE()
		--select @fechaActual = '2015/09/10' 
		set @fechafinal = (SELECT DATEADD(day,+60,@fechaActual))
	    	
		--select @fechafinal
		--select @fechaActual

	select em.RazonSocial,
		   cer.NombreCertificado,cad.FechaCaducidad,cad.EmailCliente  
	from    CertificadoCaducidad cad, 
			Certificado cer, 
			Emisor em
	where cad.EmisorId=cer.EmisorId
			and cad.EmisorId=em.Id
			and cer.EmisorId=em.Id
			and cad.FechaCaducidad between @fechaActual  and @fechafinal   
  

end

--exec [dbo].[certificado_caducidad] 

--select * from CertificadoCaducidad
GO
