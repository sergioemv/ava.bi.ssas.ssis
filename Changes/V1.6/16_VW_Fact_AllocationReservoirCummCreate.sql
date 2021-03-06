
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VW_Fact_AllocationReservoirCumm]
AS
SELECT     DT.DateId, 
					 (select top 1 MeteroperationId from DM_dim_meteroperation where ac.dataitem = dataitem) as MeterOperationId
					, WS.WellStructureid, dbo.DM_Dim_Reservoir.ReservId, AC.NumberHours, 
                      AC.GasProductionN, AC.GasProductionE, 
                      AC.GasFuelN, AC.GasFuelE, AC.GasFlareN, 
                      AC.GasFlareE, AC.GasConvertedN, 
                      AC.GasConvertedE, AC.GasRecycledN, 
                      AC.GasRecycledE, AC.GasSalesN, 
                      AC.GasSalesE, AC.CO2N, AC.CO2E, 
                      AC.NGLProductionN, AC.NGLProductionE, 
                      AC.LPGProductionN, AC.LPGProductionE, 
                      AC.OilProductionN, AC.OilProductionE, 
					AC.OilCorrectAPI, AC.WaterProduction, AC.GasInjection, AC.GasLift, AC.WaterInjection,
					AC.CummGasProductionN, AC.CummGasProductionE, 
                      AC.CummGasFuelN, AC.CummGasFuelE, AC.CummGasFlareN, 
                      AC.CummGasFlareE, AC.CummGasConvertedN, 
                      AC.CummGasConvertedE, AC.CummGasRecycledN, 
                      AC.CummGasRecycledE, AC.CummGasSalesN, 
                      AC.CummGasSalesE, AC.CummCO2N, AC.CummCO2E, 
                      AC.CummNGLProductionN, AC.CummNGLProductionE, 
                      AC.CummLPGProductionN, AC.CummLPGProductionE, 
                      AC.CummOilProductionN, AC.CummOilProductionE, 
					 AC.CummWaterProduction, AC.CummGasInjection, AC.CummGasLift, AC.CummWaterInjection
FROM         dbo.DM_TMP_PsAllocationCummReservoir AS AC INNER JOIN
                      dbo.DM_Dim_Date AS DT ON AC.DataYear = YEAR(DT.DateDate) AND AC.DataMonth = MONTH(DT.DateDate) AND 1 = DAY(DT.DateDate) INNER JOIN
                      dbo.DM_TMP_MsField AS WF ON AC.FieldCode = WF.FieldCode INNER JOIN
                      dbo.VW_Dim_WellStructureLine AS WS ON WS.BlockCode = WF.BlockCode AND WS.FieldCode = AC.FieldCode AND WS.WellCode = AC.WellCode AND 
                      WS.LineCode = AC.LineCode  INNER JOIN
                      dbo.DM_Dim_Reservoir ON AC.ReservoirCode = dbo.DM_Dim_Reservoir.ReservoirCode
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

