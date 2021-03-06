/*
   jueves, 04 de septiembre de 200823:14:38
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
COMMIT
