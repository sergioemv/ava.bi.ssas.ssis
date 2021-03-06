set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go






CREATE PROCEDURE [dbo].[sp_set_Fact_AllocationCompositionCumm] as


DECLARE @Error INT

BEGIN TRAN

DELETE FROM DM_Fact_AllocationCompositionCumm
WHERE EXISTS (SELECT * FROM DM_Fact_AllocationCompositionCumm F
INNER JOIN VW_Fact_AllocationCompositionCumm V ON 
F.DateID = V.dateId and F.WellStructureID = V.WellStructureID and F.MeterOperationID = V.MeterOperationID)

SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer

INSERT INTO [DM_Fact_AllocationCompositionCumm]
           ([DateId]
           ,[MeterOperationID]
           ,[WellStructureID]
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
           ,[CO2N]
           ,[CO2E]
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
           ,[CummGasProductionN]
           ,[CummGasProductionE]
           ,[CummGasFuelN]
           ,[CummGasFuelE]
           ,[CummGasFlareN]
           ,[CummGasFlareE]
           ,[CummGasConvertedN]
           ,[CummGasConvertedE]
           ,[CummGasRecycledN]
           ,[CummGasRecycledE]
           ,[CummGasSalesN]
           ,[CummGasSalesE]
           ,[CummCO2N]
           ,[CummCO2E]
           ,[CummNGLProductionN]
           ,[CummNGLProductionE]
           ,[CummLPGProductionN]
           ,[CummLPGProductionE]
           ,[CummOilProductionN]
           ,[CummOilProductionE]
           ,[CummWaterProduction]
           ,[CummGasInjection]
           ,[CummGasLift]
           ,[CummWaterInjection])

    SELECT [DateId]
      ,[MeterOperationID]
      ,[WellStructureID]
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
      ,[CO2N]
      ,[CO2E]
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
      ,[CummGasProductionN]
      ,[CummGasProductionE]
      ,[CummGasFuelN]
      ,[CummGasFuelE]
      ,[CummGasFlareN]
      ,[CummGasFlareE]
      ,[CummGasConvertedN]
      ,[CummGasConvertedE]
      ,[CummGasRecycledN]
      ,[CummGasRecycledE]
      ,[CummGasSalesN]
      ,[CummGasSalesE]
      ,[CummCO2N]
      ,[CummCO2E]
      ,[CummNGLProductionN]
      ,[CummNGLProductionE]
      ,[CummLPGProductionN]
      ,[CummLPGProductionE]
      ,[CummOilProductionN]
      ,[CummOilProductionE]
      ,[CummWaterProduction]
      ,[CummGasInjection]
      ,[CummGasLift]
      ,[CummWaterInjection]
  FROM [VW_Fact_AllocationCompositionCumm]
SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer
COMMIT TRAN
DESHACER:
If (@Error<>0) 
BEGIN
	PRINT 'Ha ecorrido un error. transacción abortada '+ CONVERT(varchar,getdate(),108)
	ROLLBACK TRAN
END





