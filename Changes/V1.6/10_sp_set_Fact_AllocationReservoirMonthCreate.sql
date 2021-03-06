set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go






CREATE PROCEDURE [dbo].[sp_set_Fact_AllocationReservoirMonth] as


DECLARE @Error INT

BEGIN TRAN

DELETE FROM DM_Fact_AllocationReservoirMonth
WHERE EXISTS (SELECT * FROM DM_Fact_AllocationReservoirMonth F
INNER JOIN VW_Fact_AllocationReservoirMonth V ON 
F.DateID = V.dateId and F.WellStructureID = V.WellStructureID and F.MeterOperationID = V.MeterOperationID 
and F.Reservid = V.Reservid)

SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer

INSERT INTO [AVA_PIS_Datamart].[dbo].[DM_Fact_AllocationReservoirMonth]
           ([DateId]
           ,[MeteroperationId]
           ,[WellStructureid]
           ,[ReservId]
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
     
     SELECT [DateId]
      ,[MeteroperationId]
      ,[WellStructureid]
      ,[ReservId]
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
  FROM [AVA_PIS_Datamart].[dbo].[VW_Fact_AllocationReservoirMonth]
SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer
COMMIT TRAN
DESHACER:
If (@Error<>0) 
BEGIN
	PRINT 'Ha ecorrido un error. transacción abortada '+ CONVERT(varchar,getdate(),108)
	ROLLBACK TRAN
END





