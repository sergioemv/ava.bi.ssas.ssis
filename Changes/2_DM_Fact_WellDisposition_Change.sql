/*
   martes, 25 de noviembre de 200821:31:23
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
ALTER TABLE dbo.DM_Fact_WellDisposition
	DROP CONSTRAINT FK_DM_Fact_WellDisposition_DM_Dim_WellStructure
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.DM_Fact_WellDisposition
	DROP CONSTRAINT FK_DM_Fact_WellDisposition_DM_Dim_MeterOperation
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.DM_Fact_WellDisposition
	DROP CONSTRAINT FK_DM_Fact_WellDisposition_DM_Dim_Date
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_DM_Fact_WellDisposition
	(
	DateId int NOT NULL,
	MeterOperationID int NOT NULL,
	WellStructureID int NOT NULL,
	WHCk decimal(24, 6) NULL,
	MFCk decimal(24, 6) NULL,
	NumberHours decimal(24, 6) NULL,
	WHPressAfterCk decimal(24, 6) NULL,
	WHPressBeforeCk decimal(24, 6) NULL,
	WHTempAfterCk decimal(24, 6) NULL,
	WHTempBeforeCk decimal(24, 6) NULL,
	CasingPress decimal(24, 6) NULL,
	GasNetVolumeProduction decimal(25, 6) NULL,
	OilNetVolumeProduction decimal(25, 6) NULL,
	OilCorrectAPI decimal(24, 6) NULL,
	NGLNetVolumeProduction decimal(25, 6) NULL,
	LPGNetVoulmeProduction decimal(25, 6) NULL,
	CO2NetVoulmeProduction decimal(25, 6) NULL,
	AllocationReferenceDD nvarchar(15) NULL,
	WaterNetVolumeProduction decimal(25, 6) NULL
	)  ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.DM_Fact_WellDisposition)
	 EXEC('INSERT INTO dbo.Tmp_DM_Fact_WellDisposition (DateId, MeterOperationID, WellStructureID, WHCk, MFCk, NumberHours, WHPressAfterCk, WHPressBeforeCk, WHTempAfterCk, WHTempBeforeCk, CasingPress, GasNetVolumeProduction, OilNetVolumeProduction, OilCorrectAPI, NGLNetVolumeProduction, LPGNetVoulmeProduction, CO2NetVoulmeProduction, AllocationReferenceDD)
		SELECT DateId, MeterOperationID, WellStructureID, WHCk, MFCk, NumberHours, WHPressAfterCk, WHPressBeforeCk, WHTempAfterCk, WHTempBeforeCk, CasingPress, GasNetVolumeProduction, OilNetVolumeProduction, OilCorrectAPI, NGLNetVolumeProduction, LPGNetVoulmeProduction, CO2NetVoulmeProduction, AllocationReferenceDD FROM dbo.DM_Fact_WellDisposition WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.DM_Fact_WellDisposition
GO
EXECUTE sp_rename N'dbo.Tmp_DM_Fact_WellDisposition', N'DM_Fact_WellDisposition', 'OBJECT' 
GO
ALTER TABLE dbo.DM_Fact_WellDisposition ADD CONSTRAINT
	PK_DM_Fact_WellDisposition PRIMARY KEY CLUSTERED 
	(
	DateId,
	MeterOperationID,
	WellStructureID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.DM_Fact_WellDisposition ADD CONSTRAINT
	FK_DM_Fact_WellDisposition_DM_Dim_Date FOREIGN KEY
	(
	DateId
	) REFERENCES dbo.DM_Dim_Date
	(
	DateId
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_WellDisposition ADD CONSTRAINT
	FK_DM_Fact_WellDisposition_DM_Dim_MeterOperation FOREIGN KEY
	(
	MeterOperationID
	) REFERENCES dbo.DM_Dim_MeterOperation
	(
	MeterOperationID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.DM_Fact_WellDisposition ADD CONSTRAINT
	FK_DM_Fact_WellDisposition_DM_Dim_WellStructure FOREIGN KEY
	(
	WellStructureID
	) REFERENCES dbo.DM_Dim_WellStructure
	(
	WellStructureID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
