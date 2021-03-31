select * 
into DM_Fact_AllocationReservoirCumm
from VW_Fact_AllocationReservoirCumm

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
COMMIT
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