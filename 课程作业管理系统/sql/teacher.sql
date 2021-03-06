if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[teacher]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[teacher]
GO

CREATE TABLE [dbo].[teacher] (
	[workid] [int] IDENTITY (1000, 1) NOT NULL ,
	[tpassword] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[tname] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sex] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[subject] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[classid] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

