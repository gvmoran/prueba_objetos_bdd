USE [nDocs_Preprod]
GO
/****** Object:  StoredProcedure [dbo].[ConteoULoja]    Script Date: 2018-08-07 10:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ConteoULoja]
as
begin
select COUNT(*) from Documento where EmisorId=30
end
GO
