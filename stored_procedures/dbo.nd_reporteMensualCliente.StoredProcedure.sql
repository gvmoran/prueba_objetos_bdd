USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_reporteMensualCliente]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec  nd_reporteMensualCliente  12

CREATE procedure [dbo].[nd_reporteMensualCliente]

as
begin
declare
	@dia tinyint,
	@fechaInicio Datetime,
	@fechaFin Datetime,
	@fechaActual Datetime,
	@emisor int

select @dia = 1, 
		@fechaActual = getdate()

	select @fechaInicio = convert(char(4),DATEPART(YEAR, dateadd(month,-1,@fechaActual))) + '/' + convert(char(2),DATEPART(MONTH, dateadd(month,-1,@fechaActual))) + '/' + convert(char(2),@dia)
	select @fechaFin = convert(char(4),DATEPART(YEAR, @fechaActual)) + '/' + convert(char(2),DATEPART(MONTH, @fechaActual)) + '/' + convert(char(2),@dia)
	 select @emisor =12


SELECT cab.FechaEmision,
(SELECT Nombre FROM TipoDocumento WHERE TipoDocumentoId=cab.CodigoDocumento)  AS TipoDocumento,
cab.NombreCliente ,(cab.Establecimiento +' - '+cab.PuntoEmision+' - '+cab.Secuencial) as NumDocumento   ,
doc.NumeroAutorizacion,
case cab.CodigoDocumento
	when 1 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/factura/infoFactura/totalConImpuestos/totalImpuesto[codigoPorcentaje=2]/valor)[1]', 'float')
	ELSE '0'  
end  as IVA12,
case cab.CodigoDocumento
	when 1 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/factura/infoFactura/totalConImpuestos/totalImpuesto[codigoPorcentaje=2]/baseImponible)[1]', 'float')
	ELSE '0'  
end  as SUBTOTAL12,
case cab.CodigoDocumento
	when 1 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/factura/infoFactura/totalConImpuestos/totalImpuesto[codigoPorcentaje=3]/valor)[1]', 'float')
	ELSE '0'  
end  as IVA14,
case cab.CodigoDocumento
	when 1 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/factura/infoFactura/totalConImpuestos/totalImpuesto[codigoPorcentaje=3]/baseImponible)[1]', 'float')
	ELSE '0'  
end  as SUBTOTAL14,
case cab.CodigoDocumento
	when 1 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/factura/infoFactura/importeTotal)[1]', 'float')
	when 4 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/notaCredito/infoNotaCredito/valorModificacion)[1]', 'float') --nota credito
	when 5 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/notaDebito/infoNotaDebito/totalSinImpuestos)[1]', 'float') --nota debito
	when 7 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('sum(/comprobanteRetencion/impuestos/impuesto/valorRetenido)', 'float')  --comprobante
	ELSE '0'  
end  as TOTAL,
(select Nombre from EstadoProceso where EstadoProcesoId=doc.EstadoActual) as EstadoActual, 
CASE doc.Notificado  
       WHEN 1 THEN 'Enviado'  
       WHEN 0 THEN 'No Enviado' 
	    
       ELSE ''  
END as NotificacionMail,  
doc.FechaRegistro,
case cab.CodigoDocumento
	when 1 then Convert(Xml, CONVERT(varchar(max), doc.Xml)).value('(/factura/infoAdicional/campoAdicional[@nombre="despachador"])[1]', 'varchar(max)')
	ELSE '0'  
end  as Despachador 
FROM Documento doc, DocumentoCabecera cab
WHERE doc.EmisorId =@emisor
and doc.DocumentoId=cab.DocumentoId
and doc.FechaRegistro between @fechaInicio and @fechaFin 


end

GO
