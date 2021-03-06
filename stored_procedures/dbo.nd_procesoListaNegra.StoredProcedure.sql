USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_procesoListaNegra]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec nd_procesoListaNegra
CREATE PROCEDURE [dbo].[nd_procesoListaNegra]
as
begin 

declare
@fechaActual Date
declare
@ListaNegratemp table (
		Email VARCHAR(300),
		EmisorId int NULL,
		Incremento int NULL, 
		Fecha datetime NULL,
		Estado bit NULL,
		RazonSocialTemp VARCHAR(300)
	)

	set @fechaActual =  GETDATE()

	if(select COUNT(*) from ListaNegraBorrar)>=1
	begin
	  insert into @ListaNegratemp (Email,Incremento,Fecha, Estado,RazonSocialTemp)
	  select Email,1,@fechaActual,1,RazonSocialTemp  from ListaNegraBorrar

	  update   @ListaNegratemp 
		set EmisorId=emi.Id
		from @ListaNegratemp temp,
		emisor emi
		where temp.EmisorId is null
		--and REPLACE(emi.RazonSocial,'.','')=REPLACE(temp.RazonSocialTemp,'.','')
		and replace(REPLACE(emi.RazonSocial,'.',' '),' ','')= replace(REPLACE(temp.RazonSocialTemp,'.',' '),' ','')

		--Actualizo el incremento de lista negra
		update ListaNegra
		set incremento=ln.incremento+1
		from ListaNegra ln, @ListaNegratemp tem
		where ln.email=tem.Email
		and ln.EmisorId=tem.EmisorId
		
		--Elimino los existentes
		delete @ListaNegratemp
	  	from ListaNegra ln, @ListaNegratemp tem
		where ln.email=tem.Email
		and ln.EmisorId=tem.EmisorId

		
		insert into ListaNegra(email,EmisorId,incremento,Fecha,Estado)
		select distinct Email,EmisorId,Incremento,Fecha,Estado from @ListaNegratemp

		select * from @ListaNegratemp

	end
	
	
	--delete  from listanegraborrar


end
GO
