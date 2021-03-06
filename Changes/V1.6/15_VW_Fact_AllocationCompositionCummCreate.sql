
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Fact_AllocationCompositionCumm] as
SELECT     DT.DateId, OP.MeterOperationID, WS.WellStructureID, AC.NumberHours, 
                      AC.GasProductionN, AC.GasProductionE, 
                      AC.GasFuelN, AC.GasFuelE, AC.GasFlareN, 
                      AC.GasFlareE, AC.GasConvertedN, 
                      AC.GasConvertedE, AC.GasRecycledN, 
                      AC.GasRecycledE, AC.GasSalesN, 
                      AC.GasSalesE, AC.CO2N, AC.CO2E, 
                      AC.NGLProductionN, AC.NGLProductionE, 
                      AC.LPGProductionN, AC.LPGProductionE, 
                      AC.OilProductionN, AC.OilProductionE, AC.OilCorrectAPI, AC.WaterProduction, AC.GasInjection, AC.GasLift, AC.WaterInjection,
					  AC.CummGasProductionN, AC.CummGasProductionE, 
                      AC.CummGasFuelN, AC.CummGasFuelE, AC.CummGasFlareN, 
                      AC.CummGasFlareE, AC.CummGasConvertedN, 
                      AC.CummGasConvertedE, AC.CummGasRecycledN, 
                      AC.CummGasRecycledE, AC.CummGasSalesN, 
                      AC.CummGasSalesE, AC.CummCO2N, AC.CummCO2E, 
                      AC.CummNGLProductionN, AC.CummNGLProductionE, 
                      AC.CummLPGProductionN, AC.CummLPGProductionE, 
                      AC.CummOilProductionN, AC.CummOilProductionE,  AC.CummWaterProduction, AC.CummGasInjection, AC.CummGasLift, AC.CummWaterInjection
FROM         dbo.DM_TMP_PsAllocationCummComposition AS AC INNER JOIN
                      dbo.DM_TMP_MsField AS WF ON AC.FieldCode = WF.FieldCode INNER JOIN
                      dbo.DM_Dim_Date AS DT ON AC.DataYear = Year(DT.DateDate) and AC.DataMonth=month(DT.DateDate) and 1 = day(DT.DateDate) INNER JOIN
                      dbo.DM_Dim_WellStructure AS WS ON WS.BlockCode = WF.BlockCode AND WS.FieldCode = AC.FieldCode AND WS.WellCode = AC.WellCode AND 
                      WS.LineCode = AC.LineCode AND WS.CompletionZoneCode = AC.CompletionZoneCode INNER JOIN
                      dbo.DM_Dim_MeterOperation AS OP ON OP.DataItem = AC.DataItem AND OP.OperationStatus = AC.OperationStatus
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

