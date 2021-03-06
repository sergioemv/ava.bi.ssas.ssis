
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[VW_Fact_WellDisposition]
AS
SELECT     dbo.DM_Dim_Date.DateId, dbo.DM_Dim_MeterOperation.MeterOperationID, dbo.DM_Dim_WellStructure.WellStructureID, 
                      dbo.DM_TMP_PsWellDisposition.WHCk, dbo.DM_TMP_PsWellDisposition.MFCk, dbo.DM_TMP_PsWellDisposition.NumberHours, 
                      dbo.DM_TMP_PsWellDisposition.WHPressAfterCk, dbo.DM_TMP_PsWellDisposition.WHPressBeforeCk, 
                      dbo.DM_TMP_PsWellDisposition.WHTempAfterCk, dbo.DM_TMP_PsWellDisposition.WHTempBeforeCk, 
                      dbo.DM_TMP_PsWellDisposition.CasingPress, 
                      dbo.DM_TMP_PsWellDisposition.GasHPNetVolumeProduction + dbo.DM_TMP_PsWellDisposition.GasHPNetVolumeProduction AS GasNetVolumeProduction,
                       dbo.DM_TMP_PsWellDisposition.OilNetVolumeProduction, dbo.DM_TMP_PsWellDisposition.OilCorrectAPI, 
                      dbo.DM_TMP_PsWellDisposition.NGLHPNetVolumeProduction + dbo.DM_TMP_PsWellDisposition.NGLLPNetVolumeProduction AS NGLNetVolumeProduction,
                       dbo.DM_TMP_PsWellDisposition.LPGHPNetVolumeProduction + dbo.DM_TMP_PsWellDisposition.LPGLPNetVolumeProduction AS LPGNetVoulmeProduction,
                       dbo.DM_TMP_PsWellDisposition.CO2HPNetVolumeProduction + dbo.DM_TMP_PsWellDisposition.CO2LPNetVolumeProduction AS CO2NetVoulmeProduction,
					   	dbo.DM_TMP_PsWellDisposition.WaterNetVolumeProduction,
                       dbo.DM_TMP_PsWellDisposition.AllocationReference
FROM         dbo.DM_TMP_PsWellDisposition INNER JOIN
                      dbo.DM_TMP_MsWell ON dbo.DM_TMP_PsWellDisposition.WellCode = dbo.DM_TMP_MsWell.WellCode INNER JOIN
                      dbo.DM_TMP_MsField ON dbo.DM_TMP_MsWell.FieldCode = dbo.DM_TMP_MsField.FieldCode INNER JOIN
                      dbo.DM_Dim_Date ON dbo.DM_TMP_PsWellDisposition.DataDate = dbo.DM_Dim_Date.DateDate INNER JOIN
                      dbo.DM_Dim_MeterOperation ON dbo.DM_TMP_PsWellDisposition.DataItem = dbo.DM_Dim_MeterOperation.DataItem AND 
                      dbo.DM_TMP_PsWellDisposition.OperationStatus = dbo.DM_Dim_MeterOperation.OperationStatus INNER JOIN
                      dbo.DM_Dim_WellStructure ON dbo.DM_TMP_MsField.BlockCode = dbo.DM_Dim_WellStructure.BlockCode AND 
                      dbo.DM_TMP_MsField.FieldCode = dbo.DM_Dim_WellStructure.FieldCode AND 
                      dbo.DM_TMP_MsWell.WellCode = dbo.DM_Dim_WellStructure.WellCode AND 
                      dbo.DM_TMP_PsWellDisposition.LineCode = dbo.DM_Dim_WellStructure.LineCode AND 
                      dbo.DM_TMP_PsWellDisposition.CompletionZoneCode = dbo.DM_Dim_WellStructure.CompletionZoneCode
GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

