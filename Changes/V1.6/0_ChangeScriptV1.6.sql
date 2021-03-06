USE AVA_PIS_Datamart


BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_TMP_PsAllocationMonthComposition
	(
	ProcessPlantCode varchar(6) NULL,
	DataYear int NULL,
	DataMonth int NULL,
	DataItem int NULL,
	FieldCode varchar(6) NULL,
	WellCode varchar(6) NULL,
	LineCode varchar(6) NULL,
	CompletionZoneCode varchar(6) NULL,
	CompletionZoneReservoir varchar(100) NULL,
	WHCk decimal(24, 6) NULL,
	MFCk decimal(24, 6) NULL,
	OperationStatus varchar(2) NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionHPN decimal(24, 6) NULL,
	GasProductionHPE decimal(24, 6) NULL,
	GasProductionLPN decimal(24, 6) NULL,
	GasProductionLPE decimal(24, 6) NULL,
	GasFuelHPN decimal(24, 6) NULL,
	GasFuelHPE decimal(24, 6) NULL,
	GasFuelLPN decimal(24, 6) NULL,
	GasFuelLPE decimal(24, 6) NULL,
	GasFlareHPN decimal(24, 6) NULL,
	GasFlareHPE decimal(24, 6) NULL,
	GasFlareLPN decimal(24, 6) NULL,
	GasFlareLPE decimal(24, 6) NULL,
	GasConvertedHPN decimal(24, 6) NULL,
	GasConvertedHPE decimal(24, 6) NULL,
	GasConvertedLPN decimal(24, 6) NULL,
	GasConvertedLPE decimal(24, 6) NULL,
	GasRecycledHPN decimal(24, 6) NULL,
	GasRecycledHPE decimal(24, 6) NULL,
	GasRecycledLPN decimal(24, 6) NULL,
	GasRecycledLPE decimal(24, 6) NULL,
	GasSalesHPN decimal(24, 6) NULL,
	GasSalesHPE decimal(24, 6) NULL,
	GasSalesLPN decimal(24, 6) NULL,
	GasSalesLPE decimal(24, 6) NULL,
	GasSalesPetrobras decimal(24, 6) NULL,
	GasSalesTransredes decimal(24, 6) NULL,
	GasSalesTransierra decimal(24, 6) NULL,
	CO2HPN decimal(24, 6) NULL,
	CO2HPE decimal(24, 6) NULL,
	CO2LPN decimal(24, 6) NULL,
	CO2LPE decimal(24, 6) NULL,
	NGLProductionHPN decimal(24, 6) NULL,
	NGLProductionHPE decimal(24, 6) NULL,
	NGLProductionLPN decimal(24, 6) NULL,
	NGLProductionLPE decimal(24, 6) NULL,
	LPGProductionHPN decimal(24, 6) NULL,
	LPGProductionHPE decimal(24, 6) NULL,
	LPGProductionLPN decimal(24, 6) NULL,
	LPGProductionLPE decimal(24, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL,
	LogUser varchar(6) NULL,
	LogDate datetime NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_TMP_PsAllocationMonthComposition)
	 EXEC('INSERT INTO dbo.Tmp_DM_TMP_PsAllocationMonthComposition (ProcessPlantCode, DataYear, DataMonth, DataItem, FieldCode, WellCode, LineCode, CompletionZoneCode, CompletionZoneReservoir, WHCk, MFCk, OperationStatus, NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionHPE, LPGProductionLPN, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, LogUser, LogDate)
		SELECT CONVERT(varchar(6), ProcessPlantCode), DataYear, DataMonth, DataItem, CONVERT(varchar(6), FieldCode), CONVERT(varchar(6), WellCode), CONVERT(varchar(6), LineCode), CONVERT(varchar(6), CompletionZoneCode), CONVERT(varchar(100), CompletionZoneReservoir), WHCk, MFCk, CONVERT(varchar(2), OperationStatus), NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionHPE, LPGProductionLPN, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CONVERT(varchar(6), LogUser), LogDate FROM dbo.DM_TMP_PsAllocationMonthComposition WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_TMP_PsAllocationMonthComposition
GO
EXECUTE sp_rename N'dbo.Tmp_DM_TMP_PsAllocationMonthComposition', N'DM_TMP_PsAllocationMonthComposition', 'OBJECT' 
GO
COMMIT
PRINT ' 1 - Change DM_TMP_PsAllocationMonthComposition Ended'

GO

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

PRINT '2 -  Change VW_Fact_AllocationCompositionMonth Ended'

GO 

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionMonth ADD CONSTRAINT
	PK_DM_Fact_AllocationCompositionMonth PRIMARY KEY CLUSTERED 
	(
	DateId,
	MeterOperationID,
	WellStructureID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionMonth ADD CONSTRAINT
	FK_DM_Fact_AllocationCompositionMonth_DM_Dim_Date FOREIGN KEY
	(
	DateId
	) REFERENCES dbo.DM_Dim_Date
	(
	DateId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionMonth ADD CONSTRAINT
	FK_DM_Fact_AllocationCompositionMonth_DM_Dim_WellStructure FOREIGN KEY
	(
	WellStructureID
	) REFERENCES dbo.DM_Dim_WellStructure
	(
	WellStructureID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionMonth ADD CONSTRAINT
	FK_DM_Fact_AllocationCompositionMonth_DM_Dim_MeterOperation FOREIGN KEY
	(
	MeterOperationID
	) REFERENCES dbo.DM_Dim_MeterOperation
	(
	MeterOperationID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

PRINT '3 -  Change DM_Fact_AllocationCompositionMonth Ended'

GO

CREATE PROCEDURE [dbo].[sp_set_Fact_AllocationCompositionMonth] as


DECLARE @Error INT

BEGIN TRAN

DELETE FROM DM_Fact_AllocationCompositionMonth
WHERE EXISTS (SELECT * FROM DM_Fact_AllocationCompositionmonth F
INNER JOIN VW_Fact_AllocationCompositionmonth V ON 
F.DateID = V.dateId and F.WellStructureID = V.WellStructureID and F.MeterOperationID = V.MeterOperationID)

SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer

INSERT INTO [DM_Fact_AllocationCompositionmonth]
           ([DateId]
           ,[MeterOperationId]
           ,[WellStructureId]
           ,[WHCk]
           ,[MFCk]
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
     SELECT 
		[DateId]
      ,[MeterOperationID]
      ,[WellStructureID]
      ,[WHCk]
      ,[MFCk]
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
  FROM [VW_Fact_AllocationCompositionmonth]
SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer
COMMIT TRAN
DESHACER:
If (@Error<>0) 
BEGIN
	PRINT 'Ha ecorrido un error. transacción abortada '+ CONVERT(varchar,getdate(),108)
	ROLLBACK TRAN
END

PRINT '4 - Change DM_Fact_AllocationCompositionMonth Ended'

GO

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_TMP_PsAllocationMonthReservoir
	(
	ProcessPlantCode varchar(6) NULL,
	DataYear int NULL,
	DataMonth int NULL,
	DataItem int NULL,
	FieldCode varchar(6) NULL,
	WellCode varchar(6) NULL,
	LineCode varchar(6) NULL,
	ReservoirCode varchar(6) NULL,
	Reservoir varchar(100) NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionHPN decimal(24, 6) NULL,
	GasProductionHPE decimal(24, 6) NULL,
	GasProductionLPN decimal(24, 6) NULL,
	GasProductionLPE decimal(24, 6) NULL,
	GasFuelHPN decimal(24, 6) NULL,
	GasFuelHPE decimal(24, 6) NULL,
	GasFuelLPN decimal(24, 6) NULL,
	GasFuelLPE decimal(24, 6) NULL,
	GasFlareHPN decimal(24, 6) NULL,
	GasFlareHPE decimal(24, 6) NULL,
	GasFlareLPN decimal(24, 6) NULL,
	GasFlareLPE decimal(24, 6) NULL,
	GasConvertedHPN decimal(24, 6) NULL,
	GasConvertedHPE decimal(24, 6) NULL,
	GasConvertedLPN decimal(24, 6) NULL,
	GasConvertedLPE decimal(24, 6) NULL,
	GasRecycledHPN decimal(24, 6) NULL,
	GasRecycledHPE decimal(24, 6) NULL,
	GasRecycledLPN decimal(24, 6) NULL,
	GasRecycledLPE decimal(24, 6) NULL,
	GasSalesHPN decimal(24, 6) NULL,
	GasSalesHPE decimal(24, 6) NULL,
	GasSalesLPN decimal(24, 6) NULL,
	GasSalesLPE decimal(24, 6) NULL,
	GasSalesPetrobras decimal(24, 6) NULL,
	GasSalesTransredes decimal(24, 6) NULL,
	GasSalesTransierra decimal(24, 6) NULL,
	CO2HPN decimal(24, 6) NULL,
	CO2HPE decimal(24, 6) NULL,
	CO2LPN decimal(24, 6) NULL,
	CO2LPE decimal(24, 6) NULL,
	NGLProductionHPN decimal(24, 6) NULL,
	NGLProductionHPE decimal(24, 6) NULL,
	NGLProductionLPN decimal(24, 6) NULL,
	NGLProductionLPE decimal(24, 6) NULL,
	LPGProductionHPN decimal(24, 6) NULL,
	LPGProductionHPE decimal(24, 6) NULL,
	LPGProductionLPN decimal(24, 6) NULL,
	LPGProductionLPE decimal(24, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL,
	LogUser varchar(6) NULL,
	LogDate datetime NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_TMP_PsAllocationMonthReservoir)
	 EXEC('INSERT INTO dbo.Tmp_DM_TMP_PsAllocationMonthReservoir (ProcessPlantCode, DataYear, DataMonth, DataItem, FieldCode, WellCode, LineCode, ReservoirCode, Reservoir, NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionHPE, LPGProductionLPN, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, LogUser, LogDate)
		SELECT CONVERT(varchar(6), ProcessPlantCode), DataYear, DataMonth, DataItem, CONVERT(varchar(6), FieldCode), CONVERT(varchar(6), WellCode), CONVERT(varchar(6), LineCode), CONVERT(varchar(6), ReservoirCode), CONVERT(varchar(100), Reservoir), NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionHPE, LPGProductionLPN, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CONVERT(varchar(6), LogUser), LogDate FROM dbo.DM_TMP_PsAllocationMonthReservoir WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_TMP_PsAllocationMonthReservoir
GO
EXECUTE sp_rename N'dbo.Tmp_DM_TMP_PsAllocationMonthReservoir', N'DM_TMP_PsAllocationMonthReservoir', 'OBJECT' 
GO
COMMIT

PRINT '5 - Change DM_TMP_PsAllocationMonthReservoir Ended'

GO


CREATE VIEW [dbo].[VW_Dim_WellStructureLine]
AS
SELECT      ProductionUnitCode
                      ,BlockCode
					, FieldCode   
					,WellCode
                     ,LineCode
					,max(WellStructureid) as WellStructureid
FROM        DM_Dim_WellStructure
group by    ProductionUnitCode
                  ,BlockCode
				  ,FieldCode   
				  ,WellCode
                  ,LineCode

GO


PRINT '6 - Change [VW_Dim_WellStructureLine] Ended'

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


PRINT '7 - Change [VW_Dim_MeterOperation] Ended'

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


PRINT '8 - Change [VW_Fact_AllocationReservoirMonth] Ended'

GO
CREATE TABLE dbo.Tmp_DM_Fact_AllocationReservoirMonth
	(
	DateId int NOT NULL,
	MeteroperationId int NOT NULL,
	WellStructureid int NOT NULL,
	ReservId int NOT NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionN decimal(25, 6) NULL,
	GasProductionE decimal(25, 6) NULL,
	GasFuelN decimal(25, 6) NULL,
	GasFuelE decimal(25, 6) NULL,
	GasFlareN decimal(25, 6) NULL,
	GasFlareE decimal(25, 6) NULL,
	GasConvertedN decimal(25, 6) NULL,
	GasConvertedE decimal(25, 6) NULL,
	GasRecycledN decimal(25, 6) NULL,
	GasRecycledE decimal(25, 6) NULL,
	GasSalesN decimal(25, 6) NULL,
	GasSalesE decimal(25, 6) NULL,
	CO2HPN decimal(25, 6) NULL,
	CO2HPE decimal(25, 6) NULL,
	NGLProductionN decimal(25, 6) NULL,
	NGLProductionE decimal(25, 6) NULL,
	LPGProductionN decimal(25, 6) NULL,
	LPGProductionE decimal(25, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_Fact_AllocationReservoirMonth)
	 EXEC('INSERT INTO dbo.Tmp_DM_Fact_AllocationReservoirMonth (DateId, MeteroperationId, WellStructureid, ReservId, NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, CO2HPN, CO2HPE, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection)
		SELECT DateId, MeteroperationId, WellStructureid, ReservId, NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, CO2HPN, CO2HPE, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection FROM dbo.DM_Fact_AllocationReservoirMonth WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_Fact_AllocationReservoirMonth
GO
EXECUTE sp_rename N'dbo.Tmp_DM_Fact_AllocationReservoirMonth', N'DM_Fact_AllocationReservoirMonth', 'OBJECT' 
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirMonth ADD CONSTRAINT
	PK_DM_Fact_AllocationReservoirMonth PRIMARY KEY CLUSTERED 
	(
	DateId,
	MeteroperationId,
	WellStructureid,
	ReservId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirMonth ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirMonth_DM_Dim_Date FOREIGN KEY
	(
	DateId
	) REFERENCES dbo.DM_Dim_Date
	(
	DateId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirMonth ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirMonth_DM_Dim_MeterOperation FOREIGN KEY
	(
	MeteroperationId
	) REFERENCES dbo.DM_Dim_MeterOperation
	(
	MeterOperationID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirMonth ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirMonth_DM_Dim_WellStructure FOREIGN KEY
	(
	WellStructureid
	) REFERENCES dbo.DM_Dim_WellStructure
	(
	WellStructureID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirMonth ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirMonth_DM_Dim_Reservoir FOREIGN KEY
	(
	ReservId
	) REFERENCES dbo.DM_Dim_Reservoir
	(
	ReservId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	


GO


PRINT '9  - Change DM_Fact_AllocationReservoirMonth Ended'

GO






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

GO


PRINT '10 - Change [sp_set_Fact_AllocationReservoirMonth] Ended'

GO


BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_TMP_PsAllocationCummComposition
	(
	ProcessPlantCode varchar(6) NULL,
	DataYear int NULL,
	DataMonth int NULL,
	DataItem int NULL,
	FieldCode varchar(6) NULL,
	WellCode varchar(6) NULL,
	LineCode varchar(6) NULL,
	CompletionZoneCode varchar(6) NULL,
	CompletionZoneReservoir varchar(100) NULL,
	OperationStatus varchar(2) NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionN decimal(24, 6) NULL,
	GasProductionE decimal(24, 6) NULL,
	GasFuelN decimal(24, 6) NULL,
	GasFuelE decimal(24, 6) NULL,
	GasFlareN decimal(24, 6) NULL,
	GasFlareE decimal(24, 6) NULL,
	GasConvertedN decimal(24, 6) NULL,
	GasConvertedE decimal(24, 6) NULL,
	GasRecycledN decimal(24, 6) NULL,
	GasRecycledE decimal(24, 6) NULL,
	GasSalesN decimal(24, 6) NULL,
	GasSalesE decimal(24, 6) NULL,
	GasSalesPetrobras decimal(18, 0) NULL,
	GasSalesTransredes decimal(18, 0) NULL,
	GasSalesTransierra decimal(18, 0) NULL,
	CO2N decimal(24, 6) NULL,
	CO2E decimal(24, 6) NULL,
	NGLProductionN decimal(24, 6) NULL,
	NGLProductionE decimal(24, 6) NULL,
	LPGProductionN decimal(24, 6) NULL,
	LPGProductionE decimal(24, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL,
	CummGasProductionN decimal(24, 6) NULL,
	CummGasProductionE decimal(24, 6) NULL,
	CummGasFuelN decimal(24, 6) NULL,
	CummGasFuelE decimal(24, 6) NULL,
	CummGasFlareN decimal(24, 6) NULL,
	CummGasFlareE decimal(24, 6) NULL,
	CummGasConvertedN decimal(24, 6) NULL,
	CummGasConvertedE decimal(24, 6) NULL,
	CummGasRecycledN decimal(24, 6) NULL,
	CummGasRecycledE decimal(24, 6) NULL,
	CummGasSalesN decimal(24, 6) NULL,
	CummGasSalesE decimal(24, 6) NULL,
	CummCO2N decimal(24, 6) NULL,
	CummCO2E decimal(24, 6) NULL,
	CummNGLProductionN decimal(24, 6) NULL,
	CummNGLProductionE decimal(24, 6) NULL,
	CummLPGProductionN decimal(24, 6) NULL,
	CummLPGProductionE decimal(24, 6) NULL,
	CummOilProductionN decimal(24, 6) NULL,
	CummOilProductionE decimal(24, 6) NULL,
	CummWaterProduction decimal(24, 6) NULL,
	CummGasInjection decimal(24, 6) NULL,
	CummGasLift decimal(24, 6) NULL,
	CummWaterInjection decimal(24, 6) NULL,
	LogUser varchar(6) NULL,
	LogDate datetime NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_TMP_PsAllocationCummComposition)
	 EXEC('INSERT INTO dbo.Tmp_DM_TMP_PsAllocationCummComposition (ProcessPlantCode, DataYear, DataMonth, DataItem, FieldCode, WellCode, LineCode, CompletionZoneCode, CompletionZoneReservoir, OperationStatus, NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2N, CO2E, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CummGasProductionN, CummGasProductionE, CummGasFuelN, CummGasFuelE, CummGasFlareN, CummGasFlareE, CummGasConvertedN, CummGasConvertedE, CummGasRecycledN, CummGasRecycledE, CummGasSalesN, CummGasSalesE, CummCO2N, CummCO2E, CummNGLProductionN, CummNGLProductionE, CummLPGProductionN, CummLPGProductionE, CummOilProductionN, CummOilProductionE, CummWaterProduction, CummGasInjection, CummGasLift, CummWaterInjection, LogUser, LogDate)
		SELECT CONVERT(varchar(6), ProcessPlantCode), DataYear, DataMonth, DataItem, CONVERT(varchar(6), FieldCode), CONVERT(varchar(6), WellCode), CONVERT(varchar(6), LineCode), CONVERT(varchar(6), CompletionZoneCode), CONVERT(varchar(100), CompletionZoneReservoir), CONVERT(varchar(2), OperationStatus), NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2N, CO2E, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CummGasProductionN, CummGasProductionE, CummGasFuelN, CummGasFuelE, CummGasFlareN, CummGasFlareE, CummGasConvertedN, CummGasConvertedE, CummGasRecycledN, CummGasRecycledE, CummGasSalesN, CummGasSalesE, CummCO2N, CummCO2E, CummNGLProductionN, CummNGLProductionE, CummLPGProductionN, CummLPGProductionE, CummOilProductionN, CummOilProductionE, CummWaterProduction, CummGasInjection, CummGasLift, CummWaterInjection, CONVERT(varchar(6), LogUser), LogDate FROM dbo.DM_TMP_PsAllocationCummComposition WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_TMP_PsAllocationCummComposition
GO
EXECUTE sp_rename N'dbo.Tmp_DM_TMP_PsAllocationCummComposition', N'DM_TMP_PsAllocationCummComposition', 'OBJECT' 
GO
COMMIT

GO


PRINT '11 - Change [sp_set_Fact_AllocationReservoirMonth] Ended'

GO

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_TMP_PsAllocationCummReservoir
	(
	ProcessPlantCode varchar(6) NULL,
	DataYear int NULL,
	DataMonth int NULL,
	DataItem int NULL,
	FieldCode varchar(6) NULL,
	WellCode varchar(6) NULL,
	LineCode varchar(6) NULL,
	ReservoirCode varchar(6) NULL,
	Reservoir varchar(100) NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionN decimal(24, 6) NULL,
	GasProductionE decimal(24, 6) NULL,
	GasFuelN decimal(24, 6) NULL,
	GasFuelE decimal(24, 6) NULL,
	GasFlareN decimal(24, 6) NULL,
	GasFlareE decimal(24, 6) NULL,
	GasConvertedN decimal(24, 6) NULL,
	GasConvertedE decimal(24, 6) NULL,
	GasRecycledN decimal(24, 6) NULL,
	GasRecycledE decimal(24, 6) NULL,
	GasSalesN decimal(24, 6) NULL,
	GasSalesE decimal(24, 6) NULL,
	GasSalesPetrobras decimal(24, 6) NULL,
	GasSalesTransredes decimal(24, 6) NULL,
	GasSalesTransierra decimal(24, 6) NULL,
	CO2N decimal(24, 6) NULL,
	CO2E decimal(24, 6) NULL,
	NGLProductionN decimal(24, 6) NULL,
	NGLProductionE decimal(24, 6) NULL,
	LPGProductionN decimal(24, 6) NULL,
	LPGProductionE decimal(24, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL,
	CummGasProductionN decimal(24, 6) NULL,
	CummGasProductionE decimal(24, 6) NULL,
	CummGasFuelN decimal(24, 6) NULL,
	CummGasFuelE decimal(24, 6) NULL,
	CummGasFlareN decimal(24, 6) NULL,
	CummGasFlareE decimal(24, 6) NULL,
	CummGasConvertedN decimal(24, 6) NULL,
	CummGasConvertedE decimal(24, 6) NULL,
	CummGasRecycledN decimal(24, 6) NULL,
	CummGasRecycledE decimal(24, 6) NULL,
	CummGasSalesN decimal(24, 6) NULL,
	CummGasSalesE decimal(24, 6) NULL,
	CummCO2N decimal(24, 6) NULL,
	CummCO2E decimal(24, 6) NULL,
	CummNGLProductionN decimal(24, 6) NULL,
	CummNGLProductionE decimal(24, 6) NULL,
	CummLPGProductionN decimal(24, 6) NULL,
	CummLPGProductionE decimal(24, 6) NULL,
	CummOilProductionN decimal(24, 6) NULL,
	CummOilProductionE decimal(24, 6) NULL,
	CummWaterProduction decimal(24, 6) NULL,
	CummGasInjection decimal(24, 6) NULL,
	CummGasLift decimal(24, 6) NULL,
	CummWaterInjection decimal(24, 6) NULL,
	LogUser varchar(6) NULL,
	LogDate datetime NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_TMP_PsAllocationCummReservoir)
	 EXEC('INSERT INTO dbo.Tmp_DM_TMP_PsAllocationCummReservoir (ProcessPlantCode, DataYear, DataMonth, DataItem, FieldCode, WellCode, LineCode, ReservoirCode, Reservoir, NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2N, CO2E, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CummGasProductionN, CummGasProductionE, CummGasFuelN, CummGasFuelE, CummGasFlareN, CummGasFlareE, CummGasConvertedN, CummGasConvertedE, CummGasRecycledN, CummGasRecycledE, CummGasSalesN, CummGasSalesE, CummCO2N, CummCO2E, CummNGLProductionN, CummNGLProductionE, CummLPGProductionN, CummLPGProductionE, CummOilProductionN, CummOilProductionE, CummWaterProduction, CummGasInjection, CummGasLift, CummWaterInjection, LogUser, LogDate)
		SELECT CONVERT(varchar(6), ProcessPlantCode), DataYear, DataMonth, DataItem, CONVERT(varchar(6), FieldCode), CONVERT(varchar(6), WellCode), CONVERT(varchar(6), LineCode), CONVERT(varchar(6), ReservoirCode), CONVERT(varchar(100), Reservoir), NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2N, CO2E, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CummGasProductionN, CummGasProductionE, CummGasFuelN, CummGasFuelE, CummGasFlareN, CummGasFlareE, CummGasConvertedN, CummGasConvertedE, CummGasRecycledN, CummGasRecycledE, CummGasSalesN, CummGasSalesE, CummCO2N, CummCO2E, CummNGLProductionN, CummNGLProductionE, CummLPGProductionN, CummLPGProductionE, CummOilProductionN, CummOilProductionE, CummWaterProduction, CummGasInjection, CummGasLift, CummWaterInjection, CONVERT(varchar(6), LogUser), LogDate FROM dbo.DM_TMP_PsAllocationCummReservoir WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_TMP_PsAllocationCummReservoir
GO
EXECUTE sp_rename N'dbo.Tmp_DM_TMP_PsAllocationCummReservoir', N'DM_TMP_PsAllocationCummReservoir', 'OBJECT' 
GO
COMMIT

PRINT '12 - Change DM_TMP_PsAllocationCummReservoir Ended'

GO

BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_TMP_PsAllocationDailyComposition
	(
	ProcessPlantCode varchar(6) NULL,
	DataDate datetime NULL,
	DataItem int NULL,
	WellDispositionID varchar(6) NULL,
	FieldCode varchar(6) NULL,
	WellCode varchar(6) NULL,
	LineCode varchar(6) NULL,
	CompletionZoneCode varchar(6) NULL,
	CompletionZoneReservoir varchar(100) NULL,
	WHCk decimal(24, 6) NULL,
	MFCk decimal(24, 6) NULL,
	OperationStatus varchar(2) NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionHPN decimal(24, 6) NULL,
	GasProductionHPE decimal(24, 6) NULL,
	GasProductionLPN decimal(24, 6) NULL,
	GasProductionLPE decimal(24, 6) NULL,
	GasFuelHPN decimal(24, 6) NULL,
	GasFuelHPE decimal(24, 6) NULL,
	GasFuelLPN decimal(24, 6) NULL,
	GasFuelLPE decimal(24, 6) NULL,
	GasFlareHPN decimal(24, 6) NULL,
	GasFlareHPE decimal(24, 6) NULL,
	GasFlareLPN decimal(24, 6) NULL,
	GasFlareLPE decimal(24, 6) NULL,
	GasConvertedHPN decimal(24, 6) NULL,
	GasConvertedHPE decimal(24, 6) NULL,
	GasConvertedLPN decimal(24, 6) NULL,
	GasConvertedLPE decimal(24, 6) NULL,
	GasRecycledHPN decimal(24, 6) NULL,
	GasRecycledHPE decimal(24, 6) NULL,
	GasRecycledLPN decimal(24, 6) NULL,
	GasRecycledLPE decimal(24, 6) NULL,
	GasSalesHPN decimal(24, 6) NULL,
	GasSalesHPE decimal(24, 6) NULL,
	GasSalesLPN decimal(24, 6) NULL,
	GasSalesLPE decimal(24, 6) NULL,
	GasSalesPetrobras decimal(24, 6) NULL,
	GasSalesTransredes decimal(24, 6) NULL,
	GasSalesTransierra decimal(24, 6) NULL,
	CO2HPN decimal(24, 6) NULL,
	CO2HPE decimal(24, 6) NULL,
	CO2LPN decimal(24, 6) NULL,
	CO2LPE decimal(24, 6) NULL,
	NGLProductionHPN decimal(24, 6) NULL,
	NGLProductionHPE decimal(24, 6) NULL,
	NGLProductionLPN decimal(24, 6) NULL,
	NGLProductionLPE decimal(24, 6) NULL,
	LPGProductionHPN decimal(24, 6) NULL,
	LPGProductionHPE decimal(24, 6) NULL,
	LPGProductionLPN decimal(24, 6) NULL,
	LPGProductionLPE decimal(24, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL,
	LogUser varchar(6) NULL,
	LogDate datetime NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_TMP_PsAllocationDailyComposition)
	 EXEC('INSERT INTO dbo.Tmp_DM_TMP_PsAllocationDailyComposition (ProcessPlantCode, DataDate, DataItem, WellDispositionID, FieldCode, WellCode, LineCode, CompletionZoneCode, CompletionZoneReservoir, WHCk, MFCk, OperationStatus, NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionHPE, LPGProductionLPN, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, LogUser, LogDate)
		SELECT CONVERT(varchar(6), ProcessPlantCode), DataDate, DataItem, CONVERT(varchar(6), WellDispositionID), CONVERT(varchar(6), FieldCode), CONVERT(varchar(6), WellCode), CONVERT(varchar(6), LineCode), CONVERT(varchar(6), CompletionZoneCode), CONVERT(varchar(100), CompletionZoneReservoir), WHCk, MFCk, CONVERT(varchar(2), OperationStatus), NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionHPE, LPGProductionLPN, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CONVERT(varchar(6), LogUser), LogDate FROM dbo.DM_TMP_PsAllocationDailyComposition WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_TMP_PsAllocationDailyComposition
GO
EXECUTE sp_rename N'dbo.Tmp_DM_TMP_PsAllocationDailyComposition', N'DM_TMP_PsAllocationDailyComposition', 'OBJECT' 
GO
COMMIT

GO 
PRINT '13 - Change DM_TMP_PsAllocationDailyComposition Ended'

GO

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_TMP_PsAllocationDailyReservoir
	(
	ProcessPlantCode varchar(6) NULL,
	DataDate datetime NULL,
	DataItem int NULL,
	FieldCode varchar(6) NULL,
	WellCode varchar(6) NULL,
	LineCode varchar(6) NULL,
	CompletionZoneCode varchar(6) NULL,
	ReservoirCode varchar(6) NULL,
	Reservoir varchar(100) NULL,
	WHCk decimal(24, 6) NULL,
	MFCk decimal(24, 6) NULL,
	OperationStatus varchar(2) NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionHPN decimal(24, 6) NULL,
	GasProductionHPE decimal(24, 6) NULL,
	GasProductionLPN decimal(24, 6) NULL,
	GasProductionLPE decimal(24, 6) NULL,
	GasFuelHPN decimal(24, 6) NULL,
	GasFuelHPE decimal(24, 6) NULL,
	GasFuelLPN decimal(24, 6) NULL,
	GasFuelLPE decimal(24, 6) NULL,
	GasFlareHPN decimal(24, 6) NULL,
	GasFlareHPE decimal(24, 6) NULL,
	GasFlareLPN decimal(24, 6) NULL,
	GasFlareLPE decimal(24, 6) NULL,
	GasConvertedHPN decimal(24, 6) NULL,
	GasConvertedHPE decimal(24, 6) NULL,
	GasConvertedLPN decimal(24, 6) NULL,
	GasConvertedLPE decimal(24, 6) NULL,
	GasRecycledHPN decimal(24, 6) NULL,
	GasRecycledHPE decimal(24, 6) NULL,
	GasRecycledLPN decimal(24, 6) NULL,
	GasRecycledLPE decimal(24, 6) NULL,
	GasSalesHPN decimal(24, 6) NULL,
	GasSalesHPE decimal(24, 6) NULL,
	GasSalesLPN decimal(24, 6) NULL,
	GasSalesLPE decimal(24, 6) NULL,
	GasSalesPetrobras decimal(24, 6) NULL,
	GasSalesTransredes decimal(24, 6) NULL,
	GasSalesTransierra decimal(24, 6) NULL,
	CO2HPN decimal(24, 6) NULL,
	CO2HPE decimal(24, 6) NULL,
	CO2LPN decimal(24, 6) NULL,
	CO2LPE decimal(24, 6) NULL,
	NGLProductionHPN decimal(24, 6) NULL,
	NGLProductionHPE decimal(24, 6) NULL,
	NGLProductionLPN decimal(24, 6) NULL,
	NGLProductionLPE decimal(24, 6) NULL,
	LPGProductionHPN decimal(24, 6) NULL,
	LPGProductionLPN decimal(24, 6) NULL,
	LPGProductionHPE decimal(24, 6) NULL,
	LPGProductionLPE decimal(24, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL,
	LogUser varchar(6) NULL,
	LogDate datetime NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_TMP_PsAllocationDailyReservoir)
	 EXEC('INSERT INTO dbo.Tmp_DM_TMP_PsAllocationDailyReservoir (ProcessPlantCode, DataDate, DataItem, FieldCode, WellCode, LineCode, CompletionZoneCode, ReservoirCode, Reservoir, WHCk, MFCk, OperationStatus, NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionLPN, LPGProductionHPE, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, LogUser, LogDate)
		SELECT CONVERT(varchar(6), ProcessPlantCode), DataDate, DataItem, CONVERT(varchar(6), FieldCode), CONVERT(varchar(6), WellCode), CONVERT(varchar(6), LineCode), CONVERT(varchar(6), CompletionZoneCode), CONVERT(varchar(6), ReservoirCode), CONVERT(varchar(100), Reservoir), WHCk, MFCk, CONVERT(varchar(2), OperationStatus), NumberHours, GasProductionHPN, GasProductionHPE, GasProductionLPN, GasProductionLPE, GasFuelHPN, GasFuelHPE, GasFuelLPN, GasFuelLPE, GasFlareHPN, GasFlareHPE, GasFlareLPN, GasFlareLPE, GasConvertedHPN, GasConvertedHPE, GasConvertedLPN, GasConvertedLPE, GasRecycledHPN, GasRecycledHPE, GasRecycledLPN, GasRecycledLPE, GasSalesHPN, GasSalesHPE, GasSalesLPN, GasSalesLPE, GasSalesPetrobras, GasSalesTransredes, GasSalesTransierra, CO2HPN, CO2HPE, CO2LPN, CO2LPE, NGLProductionHPN, NGLProductionHPE, NGLProductionLPN, NGLProductionLPE, LPGProductionHPN, LPGProductionLPN, LPGProductionHPE, LPGProductionLPE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CONVERT(varchar(6), LogUser), LogDate FROM dbo.DM_TMP_PsAllocationDailyReservoir WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_TMP_PsAllocationDailyReservoir
GO
EXECUTE sp_rename N'dbo.Tmp_DM_TMP_PsAllocationDailyReservoir', N'DM_TMP_PsAllocationDailyReservoir', 'OBJECT' 
GO
COMMIT

PRINT '14 - Change DM_TMP_PsAllocationDailyReservoir Ended'

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


PRINT '15 - Change [VW_Fact_AllocationCompositionCumm] Ended'

GO
select * 
into DM_Fact_AllocationCompositionCumm
from VW_Fact_AllocationCompositionCumm
GO
BEGIN TRANSACTION
GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionCumm ADD CONSTRAINT
	PK_DM_Fact_AllocationCompositionCumm PRIMARY KEY CLUSTERED 
	(
	DateId,
	MeterOperationID,
	WellStructureID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionCumm ADD CONSTRAINT
	FK_DM_Fact_AllocationCompositionCumm_DM_Dim_Date FOREIGN KEY
	(
	DateId
	) REFERENCES dbo.DM_Dim_Date
	(
	DateId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionCumm ADD CONSTRAINT
	FK_DM_Fact_AllocationCompositionCumm_DM_Dim_MeterOperation FOREIGN KEY
	(
	MeterOperationID
	) REFERENCES dbo.DM_Dim_MeterOperation
	(
	MeterOperationID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationCompositionCumm ADD CONSTRAINT
	FK_DM_Fact_AllocationCompositionCumm_DM_Dim_WellStructure FOREIGN KEY
	(
	WellStructureID
	) REFERENCES dbo.DM_Dim_WellStructure
	(
	WellStructureID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

GO


PRINT '16 - Change DM_Fact_AllocationCompositionCumm Ended'

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


PRINT '17 - Change [VW_Fact_AllocationReservoirCumm] Ended'

GO
select * 
into DM_Fact_AllocationReservoirCumm
from VW_Fact_AllocationReservoirCumm
GO
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_Fact_AllocationReservoirCumm
	(
	DateId int NOT NULL,
	MeterOperationId int NOT NULL,
	WellStructureid int NOT NULL,
	ReservId int NOT NULL,
	NumberHours decimal(24, 6) NULL,
	GasProductionN decimal(24, 6) NULL,
	GasProductionE decimal(24, 6) NULL,
	GasFuelN decimal(24, 6) NULL,
	GasFuelE decimal(24, 6) NULL,
	GasFlareN decimal(24, 6) NULL,
	GasFlareE decimal(24, 6) NULL,
	GasConvertedN decimal(24, 6) NULL,
	GasConvertedE decimal(24, 6) NULL,
	GasRecycledN decimal(24, 6) NULL,
	GasRecycledE decimal(24, 6) NULL,
	GasSalesN decimal(24, 6) NULL,
	GasSalesE decimal(24, 6) NULL,
	CO2N decimal(24, 6) NULL,
	CO2E decimal(24, 6) NULL,
	NGLProductionN decimal(24, 6) NULL,
	NGLProductionE decimal(24, 6) NULL,
	LPGProductionN decimal(24, 6) NULL,
	LPGProductionE decimal(24, 6) NULL,
	OilProductionN decimal(24, 6) NULL,
	OilProductionE decimal(24, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	WaterProduction decimal(24, 6) NULL,
	GasInjection decimal(24, 6) NULL,
	GasLift decimal(24, 6) NULL,
	WaterInjection decimal(24, 6) NULL,
	CummGasProductionN decimal(24, 6) NULL,
	CummGasProductionE decimal(24, 6) NULL,
	CummGasFuelN decimal(24, 6) NULL,
	CummGasFuelE decimal(24, 6) NULL,
	CummGasFlareN decimal(24, 6) NULL,
	CummGasFlareE decimal(24, 6) NULL,
	CummGasConvertedN decimal(24, 6) NULL,
	CummGasConvertedE decimal(24, 6) NULL,
	CummGasRecycledN decimal(24, 6) NULL,
	CummGasRecycledE decimal(24, 6) NULL,
	CummGasSalesN decimal(24, 6) NULL,
	CummGasSalesE decimal(24, 6) NULL,
	CummCO2N decimal(24, 6) NULL,
	CummCO2E decimal(24, 6) NULL,
	CummNGLProductionN decimal(24, 6) NULL,
	CummNGLProductionE decimal(24, 6) NULL,
	CummLPGProductionN decimal(24, 6) NULL,
	CummLPGProductionE decimal(24, 6) NULL,
	CummOilProductionN decimal(24, 6) NULL,
	CummOilProductionE decimal(24, 6) NULL,
	CummWaterProduction decimal(24, 6) NULL,
	CummGasInjection decimal(24, 6) NULL,
	CummGasLift decimal(24, 6) NULL,
	CummWaterInjection decimal(24, 6) NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_Fact_AllocationReservoirCumm)
	 EXEC('INSERT INTO dbo.Tmp_DM_Fact_AllocationReservoirCumm (DateId, MeterOperationId, WellStructureid, ReservId, NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, CO2N, CO2E, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CummGasProductionN, CummGasProductionE, CummGasFuelN, CummGasFuelE, CummGasFlareN, CummGasFlareE, CummGasConvertedN, CummGasConvertedE, CummGasRecycledN, CummGasRecycledE, CummGasSalesN, CummGasSalesE, CummCO2N, CummCO2E, CummNGLProductionN, CummNGLProductionE, CummLPGProductionN, CummLPGProductionE, CummOilProductionN, CummOilProductionE, CummWaterProduction, CummGasInjection, CummGasLift, CummWaterInjection)
		SELECT DateId, MeterOperationId, WellStructureid, ReservId, NumberHours, GasProductionN, GasProductionE, GasFuelN, GasFuelE, GasFlareN, GasFlareE, GasConvertedN, GasConvertedE, GasRecycledN, GasRecycledE, GasSalesN, GasSalesE, CO2N, CO2E, NGLProductionN, NGLProductionE, LPGProductionN, LPGProductionE, OilProductionN, OilProductionE, OilCorrectAPI, WaterProduction, GasInjection, GasLift, WaterInjection, CummGasProductionN, CummGasProductionE, CummGasFuelN, CummGasFuelE, CummGasFlareN, CummGasFlareE, CummGasConvertedN, CummGasConvertedE, CummGasRecycledN, CummGasRecycledE, CummGasSalesN, CummGasSalesE, CummCO2N, CummCO2E, CummNGLProductionN, CummNGLProductionE, CummLPGProductionN, CummLPGProductionE, CummOilProductionN, CummOilProductionE, CummWaterProduction, CummGasInjection, CummGasLift, CummWaterInjection FROM dbo.DM_Fact_AllocationReservoirCumm WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_Fact_AllocationReservoirCumm
GO
EXECUTE sp_rename N'dbo.Tmp_DM_Fact_AllocationReservoirCumm', N'DM_Fact_AllocationReservoirCumm', 'OBJECT' 
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirCumm ADD CONSTRAINT
	PK_DM_Fact_AllocationReservoirCumm PRIMARY KEY CLUSTERED 
	(
	DateId,
	MeterOperationId,
	WellStructureid,
	ReservId
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirCumm ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirCumm_DM_Dim_Date FOREIGN KEY
	(
	DateId
	) REFERENCES dbo.DM_Dim_Date
	(
	DateId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirCumm ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirCumm_DM_Dim_MeterOperation FOREIGN KEY
	(
	MeterOperationId
	) REFERENCES dbo.DM_Dim_MeterOperation
	(
	MeterOperationID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirCumm ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirCumm_DM_Dim_WellStructure FOREIGN KEY
	(
	WellStructureid
	) REFERENCES dbo.DM_Dim_WellStructure
	(
	WellStructureID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_AllocationReservoirCumm ADD CONSTRAINT
	FK_DM_Fact_AllocationReservoirCumm_DM_Dim_Reservoir FOREIGN KEY
	(
	ReservId
	) REFERENCES dbo.DM_Dim_Reservoir
	(
	ReservId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT

PRINT '18 - Change DM_Fact_AllocationReservoirCumm Ended'

GO






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

go

PRINT '19 - Change [sp_set_Fact_AllocationCompositionCumm] Ended'

GO

CREATE PROCEDURE [dbo].[sp_set_Fact_AllocationReservoirCumm] as


DECLARE @Error INT

BEGIN TRAN

DELETE FROM DM_Fact_AllocationReservoirCumm
WHERE EXISTS (SELECT * FROM DM_Fact_AllocationReservoirCumm F
INNER JOIN VW_Fact_AllocationReservoirCumm V ON 
F.DateID = V.dateId and F.WellStructureID = V.WellStructureID and F.MeterOperationID = V.MeterOperationID 
and F.Reservid = V.Reservid)

SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer

INSERT INTO [DM_Fact_AllocationReservoirCumm]
           ([DateId]
           ,[MeterOperationId]
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
      ,[MeterOperationId]
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
  FROM [VW_Fact_AllocationReservoirCumm]
SET @Error=@@Error
	IF (@Error<>0) GOTO Deshacer
COMMIT TRAN
DESHACER:
If (@Error<>0) 
BEGIN
	PRINT 'Ha ecorrido un error. transacción abortada '+ CONVERT(varchar,getdate(),108)
	ROLLBACK TRAN
END

GO


PRINT '20 - Change [sp_set_Fact_AllocationReservoirCumm] Ended'

GO