set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go





CREATE PROCEDURE [dbo].[sp_set_Fact_AllocationCompositionMonth] as


DECLARE @Error INT

BEGIN TRAN

DELETE FROM DM_Fact_AllocationCompositionMonth
WHERE EXISTS (SELECT * FROM DM_Fact_AllocationCompositionmonth F
INNER JOIN VW_Fact_AllocationCompositionmonth V ON 
F.DateID = V.dateId and F.WellStructureID = V.WellStructureID and F.MeterOperationID = V.MeterOperationID)

SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer

INSERT INTO [DM_Fact_AllocationCompositionmonth]
           ([DateId]
           ,[MeterOperationId]
           ,[WellStructureId]
           ,[WHCk]
           ,[MFCk]
           ,[NumberHours]
           ,[GasProductionN]
           ,[GasProductionE]
           ,[GasFuelN]
           ,[GasFuelE]
           ,[GasFlareN]
           ,[GasFlareE]
           ,[GasConvertedN]
           ,[GasConvertedE]
           ,[GasRecycledN]
           ,[GasRecycledE]
           ,[GasSalesN]
           ,[GasSalesE]
           ,[CO2HPN]
           ,[CO2HPE]
           ,[NGLProductionN]
           ,[NGLProductionE]
           ,[LPGProductionN]
           ,[LPGProductionE]
           ,[OilProductionN]
           ,[OilProductionE]
           ,[OilCorrectAPI]
           ,[WaterProduction]
           ,[GasInjection]
           ,[GasLift]
           ,[WaterInjection])
     SELECT 
		[DateId]
      ,[MeterOperationID]
      ,[WellStructureID]
      ,[WHCk]
      ,[MFCk]
      ,[NumberHours]
      ,[GasProductionN]
      ,[GasProductionE]
      ,[GasFuelN]
      ,[GasFuelE]
      ,[GasFlareN]
      ,[GasFlareE]
      ,[GasConvertedN]
      ,[GasConvertedE]
      ,[GasRecycledN]
      ,[GasRecycledE]
      ,[GasSalesN]
      ,[GasSalesE]
      ,[CO2HPN]
      ,[CO2HPE]
      ,[NGLProductionN]
      ,[NGLProductionE]
      ,[LPGProductionN]
      ,[LPGProductionE]
      ,[OilProductionN]
      ,[OilProductionE]
      ,[OilCorrectAPI]
      ,[WaterProduction]
      ,[GasInjection]
      ,[GasLift]
      ,[WaterInjection]
  FROM [VW_Fact_AllocationCompositionmonth]
SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer
COMMIT TRAN
DESHACER:
If (@Error<>0) 
BEGIN
	PRINT 'Ha ecorrido un error. transacción abortada '+ CONVERT(varchar,getdate(),108)
	ROLLBACK TRAN
END




