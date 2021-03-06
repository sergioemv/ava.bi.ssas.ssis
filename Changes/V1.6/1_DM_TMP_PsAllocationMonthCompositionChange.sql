/*
   martes, 02 de septiembre de 200822:09:18
   Usuario: 
   Servidor: SMSERVER
   Base de datos: AVA_PIS_Datamart
   Aplicación: 
*/

/* Para evitar posibles problemas de pérdida de datos, debe revisar esta secuencia de comandos detalladamente antes de ejecutarla fuera del contexto del diseñador de base de datos.*/
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
