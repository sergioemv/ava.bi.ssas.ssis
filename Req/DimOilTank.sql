select t.ProductionUnitCode,ProductionUnitID,ProductionUnitName,
 t.ProcessPlantCode,PlantName,PlantID,  
OilTankCode,OilTankName,OilTankID
into DM_MsDIMOilTank
from dbo.DM_MsOilTank t
inner join dbo.DM_MsPlant p on 
p.ProductionUnitCode = t.ProductionUnitCode and
p.ProcessPlantCode = t.ProcessPlantCode
inner join dbo.DM_MsProductionUnit r on
r.ProductionUnitCode = p.ProductionUnitCode


CREATE TABLE [DM_MsDIMOilTank] (
	[id] int, 	
	[ProductionUnitCode] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[ProductionUnitID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ProductionUnitName] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[ProcessPlantCode] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[PlantName] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[PlantID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OilTankCode] [varchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL ,
	[OilTankName] [varchar] (80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL ,
	[OilTankID] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL 
) ON [PRIMARY]
GO


