if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[homework]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[homework]
GO

CREATE TABLE [dbo].[homework] (
	[hid] [int] IDENTITY (1000, 1) NOT NULL ,
	[htitle] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[hcontent] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[btime] [datetime] NULL ,
	[ctime] [datetime] NULL ,
	[cfile] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[tid] [int] NULL ,
	[classid] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

