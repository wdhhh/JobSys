if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[userInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[userInfo]
GO

CREATE TABLE [dbo].[userInfo] (
	[userid] [int] IDENTITY (1000, 1) NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[mail] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[sex] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[zhuanye] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[class] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ID] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

