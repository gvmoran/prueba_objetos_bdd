USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[AgregationMonitoring]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AgregationMonitoring]
AS
BEGIN
  IF NOT EXISTS (
		SELECT  dbo.DocumentoAgregacion.DocumentoId
		FROM DocumentoAgregacion 
		INNER JOIN Documento ON Documento.DocumentoId = DocumentoAgregacion.DocumentoId
		INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
		WHERE DocumentoCabecera.CodigoDocumento = 1 
		AND Documento.EstadoActual = 7

	)
	INSERT INTO DocumentoAgregacion (DocumentoId, SubTotal)
	SELECT dbo.Documento.DocumentoId, Convert(Xml, (REPLACE(CONVERT(varchar(max), Documento.Xml),'Ñ','N'))).value('(/factura/infoFactura/totalSinImpuestos)[1]', 'float')
	FROM Documento
	INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
	WHERE DocumentoCabecera.CodigoDocumento = 1 
	AND Documento.EstadoActual = 7


	IF NOT EXISTS (
		SELECT dbo.DocumentoAgregacion.DocumentoId
		FROM DocumentoAgregacion 
		INNER JOIN Documento ON Documento.DocumentoId = DocumentoAgregacion.DocumentoId
		INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
		WHERE DocumentoCabecera.CodigoDocumento = 6 
		AND Documento.EstadoActual = 7
	)
	INSERT INTO DocumentoAgregacion (DocumentoId, SubTotal)
	SELECT dbo.Documento.DocumentoId, Convert(Xml, (REPLACE(CONVERT(varchar(max), Documento.Xml),'Ñ','N'))).value('sum(/guiaRemision/destinatarios/destinatario/detalles/detalle/cantidad)', 'float')
	FROM Documento
	INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
	WHERE DocumentoCabecera.CodigoDocumento = 6 
	AND Documento.EstadoActual = 7
	
	IF NOT EXISTS (
		SELECT dbo.DocumentoAgregacion.DocumentoId
		FROM DocumentoAgregacion 
		INNER JOIN Documento ON Documento.DocumentoId = DocumentoAgregacion.DocumentoId
		INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
		WHERE DocumentoCabecera.CodigoDocumento = 7 
		AND Documento.EstadoActual = 7
	)
	INSERT INTO DocumentoAgregacion (DocumentoId, SubTotal)
	SELECT dbo.Documento.DocumentoId, Convert(Xml, (REPLACE(CONVERT(varchar(max), Documento.Xml),'Ñ','N'))).value('sum(/comprobanteRetencion/impuestos/impuesto/valorRetenido)', 'float')
	FROM Documento
	INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
	WHERE DocumentoCabecera.CodigoDocumento = 7 
	AND Documento.EstadoActual = 7

	IF NOT EXISTS (
		SELECT dbo.DocumentoAgregacion.DocumentoId
		FROM DocumentoAgregacion 
		INNER JOIN Documento ON Documento.DocumentoId = DocumentoAgregacion.DocumentoId
		INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
		WHERE DocumentoCabecera.CodigoDocumento = 5 
		AND Documento.EstadoActual = 7
	)
	INSERT INTO DocumentoAgregacion (DocumentoId, SubTotal)
	SELECT dbo.Documento.DocumentoId, Convert(Xml, (REPLACE(CONVERT(varchar(max), Documento.Xml),'Ñ','N'))).value('(/notaDebito/infoNotaDebito/totalSinImpuestos)[1]', 'float')
	FROM Documento
	INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
	WHERE DocumentoCabecera.CodigoDocumento = 5 
	AND Documento.EstadoActual = 7


	IF NOT EXISTS (
		SELECT dbo.DocumentoAgregacion.DocumentoId
		FROM DocumentoAgregacion 
		INNER JOIN Documento ON Documento.DocumentoId = DocumentoAgregacion.DocumentoId
		INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
		WHERE DocumentoCabecera.CodigoDocumento = 4 
		AND Documento.EstadoActual = 7
	)
	INSERT INTO DocumentoAgregacion (DocumentoId, SubTotal)
	SELECT dbo.Documento.DocumentoId, Convert(Xml, (REPLACE(CONVERT(varchar(max), Documento.Xml),'Ñ','N'))).value('(/notaCredito/infoNotaCredito/totalSinImpuestos)[1]', 'float')
	FROM Documento
	INNER JOIN DocumentoCabecera ON Documento.DocumentoId = DocumentoCabecera.DocumentoId
	WHERE DocumentoCabecera.CodigoDocumento = 4 
	AND Documento.EstadoActual = 7
END
GO
