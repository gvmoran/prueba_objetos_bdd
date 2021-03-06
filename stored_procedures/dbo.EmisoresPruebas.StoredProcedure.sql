USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[EmisoresPruebas]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec  EmisoresPruebas
CREATE  procedure [dbo].[EmisoresPruebas]
as

declare
@ListaEmisorerPruebas table (
		id int,
		RazonSocial VARCHAR(300),
		fechaCreacionPruebas datetime,
		numeroDocumentos int default 0
	)
begin
		insert into @ListaEmisorerPruebas (id,RazonSocial,fechaCreacionPruebas)
		select id, RazonSocial, FechaCreacion from Emisor 
		where ActivoDocServer=1
		and ActivoWebPortal=1


		
		update @ListaEmisorerPruebas
		set numeroDocumentos=(select  COUNT(doc.EmisorId) from Documento doc where doc.EmisorId=tmp.id)
		from @ListaEmisorerPruebas tmp,
		Documento doc
		where tmp.id=doc.EmisorId
		




  select * from @ListaEmisorerPruebas order by fechaCreacionPruebas desc;
 end
GO
