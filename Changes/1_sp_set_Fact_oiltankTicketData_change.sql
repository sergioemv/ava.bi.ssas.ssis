set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
go



ALTER PROCEDURE [dbo].[sp_set_Fact_OilTankTicketData] as
DELETE FROM [dbo].[DM_Fact_OilTankTicketData]
WHERE EXISTS (SELECT * FROM DM_Fact_OilTankTicketData
INNER JOIN VW_Fact_OilTankTicketData ON 
VW_Fact_OilTankTicketData.OilTicket = DM_Fact_OilTankTicketData.OilTicket
AND VW_Fact_OilTankTicketData.DateId = DM_Fact_OilTankTicketData.DateId)

INSERT INTO [DM_Fact_OilTankTicketData]
           ([OilTicket]
           ,[DateId]
           ,[TicketAbstractID]
           ,[OilTankStructureID]
           ,[TargetID]
           ,[SourceID]
           ,[LinePressure]
           ,[LineTemperature]
           ,[InitialOilHeight]
           ,[FinalOilHeight]
           ,[InitialOilGrossVolume]
           ,[FinalOilGrossVolume]
           ,[InitialSampleTemperature]
           ,[FinalSampleTemperature]
           ,[InitialSampleAPI]
           ,[FinalSampleAPI]
           ,[InitialCorrectAPI]
           ,[FinalCorrectAPI]
           ,[InitialAverageTemperature]
           ,[FinalAverageTemperature]
           ,[InitialVolumeFactor]
           ,[FinalVolumeFactor]
           ,[InitialRVPFactor]
           ,[FinalRVPFactor]
           ,[InitialBSWFactor]
           ,[FinalBSWFActor]
           ,[InitialOilNetVolume]
           ,[FinalOilNetVolume]
           ,[OilNetVolumeMove]
           ,[FinalDensityAPI]
           ,[InitialDensityAPI]
           ,[InitialOilMass]
           ,[FinalOilMass]
           ,[OilMassMove]
           ,[InitialWaterHeight]
           ,[FinalWaterHeight]
           ,[InitialWaterVolume]
           ,[FinalWaterVolume]
           ,[WaterVolumeMove])
    SELECT * FROM VW_Fact_OilTankTicketData
	

