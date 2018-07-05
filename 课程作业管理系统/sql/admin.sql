if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[admin]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[admin]
GO

CREATE TABLE [dbo].[admin] (
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

