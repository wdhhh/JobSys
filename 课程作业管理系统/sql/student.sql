if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[student]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[student]
GO

CREATE TABLE [dbo].[student] (
	[userid] [int] IDENTITY (1000, 1) NOT NULL ,
	[username] [varchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[password] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[name] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[studentid] [int] NOT NULL ,
	[sex] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[specialty] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[classid] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[phone] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[rdate] [datetime] NULL 
) ON [PRIMARY]
GO

