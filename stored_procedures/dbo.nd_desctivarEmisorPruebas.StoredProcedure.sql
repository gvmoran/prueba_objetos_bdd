USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_desctivarEmisorPruebas]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec  [nd_desctivarEmisorPruebas]  4,2018,03,05
CREATE  procedure [dbo].[nd_desctivarEmisorPruebas]
@emisor int,
@anio char(4),
@mes char(2),
@dia char(2)
as

declare
@fechaActual Date,
@fechaCorte Datetime

begin

	select @fechaCorte = @anio + '/' + @mes + '/' +@dia


	set @fechaActual =  GETDATE()

	--select @fechaCorte
	--select @fechaActual

    if (@fechaActual=@fechaCorte)
	begin
	
		exec dbo.DarBajaCliente  @emisor
		select * from emisor where id=@emisor
	end


end
GO
