CREATE VIEW VW_Fact_AllocationCompositionMonth as
SELECT     DT.DateId, OP.MeterOperationID, WS.WellStructureID, AC.WHCk, AC.MFCk, AC.OperationStatus, AC.NumberHours, 
                      AC.GasProductionHPN + AC.GasProductionLPN AS GasProductionN, AC.GasProductionHPE + AC.GasProductionLPE AS GasProductionE, 
                      AC.GasFuelHPN + AC.GasFuelLPN AS GasFuelN, AC.GasFuelHPE + AC.GasFuelLPE AS GasFuelE, AC.GasFlareHPN + AC.GasFlareLPN AS GasFlareN, 
                      AC.GasFlareHPE + AC.GasFlareLPE AS GasFlareE, AC.GasConvertedHPN + AC.GasConvertedLPN AS GasConvertedN, 
                      AC.GasConvertedHPE + AC.GasConvertedLPE AS GasConvertedE, AC.GasRecycledHPN + AC.GasRecycledLPN AS GasRecycledN, 
                      AC.GasRecycledHPE + AC.GasRecycledLPE AS GasRecycledE, AC.GasSalesHPN + AC.GasSalesLPN AS GasSalesN, 
                      AC.GasSalesHPE + AC.GasSalesLPE AS GasSalesE, AC.CO2HPN + AC.CO2LPN AS CO2HPN, AC.CO2HPE + AC.CO2LPE AS CO2HPE, 
                      AC.NGLProductionHPN + AC.NGLProductionLPN AS NGLProductionN, AC.NGLProductionHPE + AC.NGLProductionLPE AS NGLProductionE, 
                      AC.LPGProductionHPN + AC.LPGProductionLPN AS LPGProductionN, AC.LPGProductionHPE + AC.LPGProductionLPE AS LPGProductionE, 
                      AC.OilProductionN, AC.OilProductionE, AC.OilCorrectAPI, AC.WaterProduction, AC.GasInjection, AC.GasLift, AC.WaterInjection
FROM         dbo.DM_TMP_PsAllocationMonthComposition AS AC INNER JOIN
                      dbo.DM_TMP_MsField AS WF ON AC.FieldCode = WF.FieldCode INNER JOIN
                      dbo.DM_Dim_Date AS DT ON AC.DataYear = Year(DT.DateDate) and AC.DataMonth=month(DT.DateDate) and 1 = day(DT.DateDate) INNER JOIN
                      dbo.DM_Dim_WellStructure AS WS ON WS.BlockCode = WF.BlockCode AND WS.FieldCode = AC.FieldCode AND WS.WellCode = AC.WellCode AND 
                      WS.LineCode = AC.LineCode AND WS.CompletionZoneCode = AC.CompletionZoneCode INNER JOIN
                      dbo.DM_Dim_MeterOperation AS OP ON OP.DataItem = AC.DataItem AND OP.OperationStatus = AC.OperationStatus

GO

select * 
into DM_Fact_AllocationCompositionMonth
from 
VW_Fact_AllocationCompositionMonth

