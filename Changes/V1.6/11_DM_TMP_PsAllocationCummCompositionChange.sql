/*
   domingo, 07 de septiembre de 200822:56:03
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
