
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [dbo].[VW_Dim_MeterOperation]
AS
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsGasValveDataDay
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsGasMeterDataDay
UNION
SELECT DISTINCT 1 AS Expr1, OperationStatus
FROM         dbo.DM_TMP_PsLogicMeterDataDay
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsNGLMeterDataDay
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsWaterMeterDataDay
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsOilMeterDataDay
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsWellDisposition
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsAllocationDailyReservoir
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsAllocationDailyComposition
UNION
SELECT DISTINCT DataItem, null
FROM         dbo.DM_TMP_PsAllocationCummReservoir
UNION
SELECT DISTINCT DataItem, OperationStatus
FROM         dbo.DM_TMP_PsAllocationCummComposition

GO

SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO

