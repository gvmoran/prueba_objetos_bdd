USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_EmailClientesNdocs]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec nd_EmailClientesNdocs
CREATE procedure [dbo].[nd_EmailClientesNdocs] 
as
begin
select emi.Id, EMI.RazonSocial,cad.EmailCliente from CertificadoCaducidad cad, Emisor emi
where cad.EmisorId=emI.ID
AND EMI.ActivoDocServer=1
end
GO
