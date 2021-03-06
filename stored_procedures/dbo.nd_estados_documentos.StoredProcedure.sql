USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_estados_documentos]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[nd_estados_documentos]
as
begin 

declare
@fechaActual Date
declare
@total3 int,
@total4 int,
@total5 int,
@total6 int,
@total30 int
declare
@datosTotales table (
		totalDocumentos int,
		Estado int,
		Nombre 	varchar(50)
	)


	--set @fechaActual =  GETDATE()
	select @fechaActual = '2015/02/10' 
	

	insert into @datosTotales select count(d.EstadoActual) as totalDocumentos, e.EstadoProcesoId as Estado , e.Nombre NomEstado
	from Documento  d inner join EstadoProceso e on d.EstadoActual=e.EstadoProcesoId
	where d.FechaRegistro >= @fechaActual
	group by e.EstadoProcesoId, e.Nombre 

	insert into @datosTotales 
	select count(*), '30','SIN ENVIO MAIL AL CLIENTE' from  Documento 
	where EstadoActual=7 and Notificado is null and FechaRegistro>= @fechaActual

    set @total3= (select sum(totalDocumentos)   from @datosTotales where estado in (3))
	set @total4= (select sum(totalDocumentos)   from @datosTotales where estado in (4))
	set @total5= (select sum(totalDocumentos)   from @datosTotales where estado in (5))
	set @total6= (select sum(totalDocumentos)   from @datosTotales where estado in (6))
    set @total30= (select sum(totalDocumentos)   from @datosTotales where estado in (30))

	if @total3 >=5 or  @total4 >=5 or  @total5 >=5 or  @total6 >=5 or  @total30 >=10
	begin
	    select totalDocumentos, Nombre  from  @datosTotales
	end
	else
	begin
	 		delete from @datosTotales
     end
	
end
GO
