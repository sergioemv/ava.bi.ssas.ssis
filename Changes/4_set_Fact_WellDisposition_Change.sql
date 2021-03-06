set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go






ALTER PROCEDURE [dbo].[sp_set_Fact_WellDisposition] as


DECLARE @Error INT

BEGIN TRAN

DELETE FROM DM_Fact_WellDisposition
WHERE EXISTS (SELECT * FROM DM_Fact_WellDisposition F
INNER JOIN VW_Fact_WellDisposition V ON 
F.DateID = V.dateId and F.WellStructureID = V.WellStructureID and F.MeterOperationID = V.MeterOperationID)

SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer

INSERT INTO [DM_Fact_WellDisposition]
           ([DateId]
           ,[MeterOperationID]
           ,[WellStructureID]
           ,[WHCk]
           ,[MFCk]
           ,[NumberHours]
           ,[WHPressAfterCk]
           ,[WHPressBeforeCk]
           ,[WHTempAfterCk]
           ,[WHTempBeforeCk]
           ,[CasingPress]
           ,[GasNetVolumeProduction]
           ,[OilNetVolumeProduction]
		   ,[WaterNetVolumeProduction]
           ,[OilCorrectAPI]
           ,[NGLNetVolumeProduction]
           ,[LPGNetVoulmeProduction]
           ,[CO2NetVoulmeProduction]
			,[AllocationReferenceDD])
     
SELECT [DateId]
      ,[MeterOperationID]
      ,[WellStructureID]
      ,[WHCk]
      ,[MFCk]
      ,[NumberHours]
      ,[WHPressAfterCk]
      ,[WHPressBeforeCk]
      ,[WHTempAfterCk]
      ,[WHTempBeforeCk]
      ,[CasingPress]
      ,[GasNetVolumeProduction]
      ,[OilNetVolumeProduction]
	  ,[WaterNetVolumeProduction]
      ,[OilCorrectAPI]
      ,[NGLNetVolumeProduction]
      ,[LPGNetVoulmeProduction]
      ,[CO2NetVoulmeProduction]
	  ,[AllocationReference]
  FROM [VW_Fact_WellDisposition]

SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer
COMMIT TRAN
DESHACER:
If (@Error<>0) 
BEGIN
	PRINT 'Ha ecorrido un error. transacción abortada '+ CONVERT(varchar,getdate(),108)
	ROLLBACK TRAN
END





