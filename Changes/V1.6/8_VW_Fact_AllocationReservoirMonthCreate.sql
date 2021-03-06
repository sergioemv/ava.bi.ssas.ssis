USE [AVA_PIS_Datamart]
GO
/****** Objeto:  View [dbo].[VW_Fact_AllocationReservoirMonth]    Fecha de la secuencia de comandos: 09/04/2008 23:10:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Fact_AllocationReservoirMonth]
AS
SELECT     DT.DateId, 
					 (select top 1 MeteroperationId from DM_dim_meteroperation where ac.dataitem = dataitem) as MeterOperationId
					, WS.WellStructureid, dbo.DM_Dim_Reservoir.ReservId, AC.NumberHours, 
                      AC.GasProductionHPN + AC.GasProductionLPN AS GasProductionN, AC.GasProductionHPE + AC.GasProductionLPE AS GasProductionE, 
                      AC.GasFuelHPN + AC.GasFuelLPN AS GasFuelN, AC.GasFuelHPE + AC.GasFuelLPE AS GasFuelE, AC.GasFlareHPN + AC.GasFlareLPN AS GasFlareN, 
                      AC.GasFlareHPE + AC.GasFlareLPE AS GasFlareE, AC.GasConvertedHPN + AC.GasConvertedLPN AS GasConvertedN, 
                      AC.GasConvertedHPE + AC.GasConvertedLPE AS GasConvertedE, AC.GasRecycledHPN + AC.GasRecycledLPN AS GasRecycledN, 
                      AC.GasRecycledHPE + AC.GasRecycledLPE AS GasRecycledE, AC.GasSalesHPN + AC.GasSalesLPN AS GasSalesN, 
                      AC.GasSalesHPE + AC.GasSalesLPE AS GasSalesE, AC.CO2HPN + AC.CO2LPN AS CO2HPN, AC.CO2HPE + AC.CO2LPE AS CO2HPE, 
                      AC.NGLProductionHPN + AC.NGLProductionLPN AS NGLProductionN, AC.NGLProductionHPE + AC.NGLProductionLPE AS NGLProductionE, 
                      AC.LPGProductionHPN + AC.LPGProductionLPN AS LPGProductionN, AC.LPGProductionHPE + AC.LPGProductionLPE AS LPGProductionE, 
                      AC.OilProductionN, AC.OilProductionE, AC.OilCorrectAPI, AC.WaterProduction, AC.GasInjection, AC.GasLift, AC.WaterInjection
FROM         dbo.DM_TMP_PsAllocationMonthReservoir AS AC INNER JOIN
                      dbo.DM_Dim_Date AS DT ON AC.DataYear = YEAR(DT.DateDate) AND AC.DataMonth = MONTH(DT.DateDate) AND 1 = DAY(DT.DateDate) INNER JOIN
                      dbo.DM_TMP_MsField AS WF ON AC.FieldCode = WF.FieldCode INNER JOIN
                      dbo.VW_Dim_WellStructureLine AS WS ON WS.BlockCode = WF.BlockCode AND WS.FieldCode = AC.FieldCode AND WS.WellCode = AC.WellCode AND 
                      WS.LineCode = AC.LineCode  INNER JOIN
                      dbo.DM_Dim_Reservoir ON AC.ReservoirCode = dbo.DM_Dim_Reservoir.ReservoirCode

GO


select * 
into DM_Fact_AllocationReservoirMonth
from [VW_Fact_AllocationReservoirMonth]