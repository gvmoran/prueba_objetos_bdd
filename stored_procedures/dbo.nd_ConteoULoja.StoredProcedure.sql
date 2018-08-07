USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[nd_ConteoULoja]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec dbo.nd_ConteoULoja 30
CREATE  procedure [dbo].[nd_ConteoULoja]
@emisor int
as
begin
declare
@total int,
@contratados int




 select @total=(select COUNT(*) from Documento where EmisorId=@emisor),
 @contratados=21053

 select @contratados - @total
end 
GO
