USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_facturacion_mensual]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--drop procedure nd_facturacion_mensual
create procedure [dbo].[nd_facturacion_mensual]
as
begin
declare
	@dia tinyint,
	@fechaInicio Datetime,
	@fechaFin Datetime,
	@fechaActual Datetime

declare
	@resultados table (Emisor varchar(max), NumDocs integer null)

	select @dia = 1, 
		@fechaActual = getdate()

	select @fechaInicio = convert(char(4),DATEPART(YEAR, dateadd(month,-1,@fechaActual))) + '/' + convert(char(2),DATEPART(MONTH, dateadd(month,-1,@fechaActual))) + '/' + convert(char(2),@dia)
	select @fechaFin = convert(char(4),DATEPART(YEAR, @fechaActual)) + '/' + convert(char(2),DATEPART(MONTH, @fechaActual)) + '/' + convert(char(2),@dia)

	select 'Numero de documentos en el periodo desde ' + convert(varchar(10),@fechaInicio,111) + ' hasta ' + convert(varchar(10),@fechaFin,111)
	insert into @resultados 
	select e.RazonSocial,count(*)
	from Documento d
	inner join Emisor e on (e.Id = d.EmisorId)
	where 1=1
	and FechaRegistro >= @fechaInicio
	and FechaRegistro < @fechaFin
	group by e.RazonSocial


	select * from @resultados

end



GO
