select * 
into DM_Fact_AllocationCompositionCumm
from VW_Fact_AllocationCompositionCumm

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
