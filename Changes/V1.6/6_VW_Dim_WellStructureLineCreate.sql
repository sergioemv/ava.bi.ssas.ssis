USE [AVA_PIS_Datamart]
GO
/****** Objeto:  View [dbo].[VW_Dim_WellStructureLine]    Fecha de la secuencia de comandos: 09/04/2008 22:12:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Dim_WellStructureLine]
AS
SELECT      ProductionUnitCode
                      ,BlockCode
					, FieldCode   
					,WellCode
                     ,LineCode
					,max(WellStructureid) as WellStructureid
FROM        DM_Dim_WellStructure
group by    ProductionUnitCode
                  ,BlockCode
				  ,FieldCode   
				  ,WellCode
                  ,LineCode
