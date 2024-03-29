/****** Object:  Stored Procedure dbo.CreatePaper    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[CreatePaper]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[CreatePaper]
GO

/****** Object:  Stored Procedure dbo.SubmitUserScore    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SubmitUserScore]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[SubmitUserScore]
GO

/****** Object:  Stored Procedure dbo.UpdateUserAnswer    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UpdateUserAnswer]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UpdateUserAnswer]
GO

/****** Object:  Stored Procedure dbo.UpdateUserScore    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UpdateUserScore]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[UpdateUserScore]
GO

/****** Object:  Table [dbo].[ChapterInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ChapterInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ChapterInfo]
GO

/****** Object:  Table [dbo].[DeptInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[DeptInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[DeptInfo]
GO

/****** Object:  Table [dbo].[ImportErr]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ImportErr]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ImportErr]
GO

/****** Object:  Table [dbo].[JobInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[JobInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[JobInfo]
GO

/****** Object:  Table [dbo].[LoreInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[LoreInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[LoreInfo]
GO

/****** Object:  Table [dbo].[ManagMenu]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[ManagMenu]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[ManagMenu]
GO

/****** Object:  Table [dbo].[NewsInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NewsInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NewsInfo]
GO

/****** Object:  Table [dbo].[NewsUser]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NewsUser]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NewsUser]
GO

/****** Object:  Table [dbo].[PaperInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaperInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PaperInfo]
GO

/****** Object:  Table [dbo].[PaperPolicy]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaperPolicy]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PaperPolicy]
GO

/****** Object:  Table [dbo].[PaperTest]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaperTest]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PaperTest]
GO

/****** Object:  Table [dbo].[PaperTestType]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaperTestType]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PaperTestType]
GO

/****** Object:  Table [dbo].[PaperUser]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[PaperUser]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[PaperUser]
GO

/****** Object:  Table [dbo].[RegistInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RegistInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[RegistInfo]
GO

/****** Object:  Table [dbo].[RubricInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[RubricInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[RubricInfo]
GO

/****** Object:  Table [dbo].[SectionInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SectionInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SectionInfo]
GO

/****** Object:  Table [dbo].[SubjectInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SubjectInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SubjectInfo]
GO

/****** Object:  Table [dbo].[SubjectUser]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SubjectUser]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SubjectUser]
GO

/****** Object:  Table [dbo].[SystemSet]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[SystemSet]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[SystemSet]
GO

/****** Object:  Table [dbo].[TestTypeInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[TestTypeInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[TestTypeInfo]
GO

/****** Object:  Table [dbo].[UserAnswer]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserAnswer]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserAnswer]
GO

/****** Object:  Table [dbo].[UserInfo]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserInfo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserInfo]
GO

/****** Object:  Table [dbo].[UserPower]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserPower]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserPower]
GO

/****** Object:  Table [dbo].[UserScore]    Script Date: 2013-9-13 17:25:16 ******/
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[UserScore]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[UserScore]
GO

/****** Object:  Table [dbo].[ChapterInfo]    Script Date: 2013-9-13 17:25:17 ******/
CREATE TABLE [dbo].[ChapterInfo] (
	[ChapterID] [int] IDENTITY (1, 1) NOT NULL ,
	[SubjectID] [int] NULL ,
	[ChapterName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CreateUserID] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[DeptInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[DeptInfo] (
	[DeptID] [int] IDENTITY (1, 1) NOT NULL ,
	[DeptName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DeptMemo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ImportErr]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[ImportErr] (
	[ErrID] [int] NOT NULL ,
	[RowNum] [int] NULL ,
	[ErrInfo] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[JobInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[JobInfo] (
	[JobID] [int] IDENTITY (1, 1) NOT NULL ,
	[JobName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[JobMemo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[LoreInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[LoreInfo] (
	[LoreID] [int] IDENTITY (1, 1) NOT NULL ,
	[SubjectID] [int] NULL ,
	[LoreName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[ManagMenu]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[ManagMenu] (
	[ManagMenuID] [int] IDENTITY (1, 1) NOT NULL ,
	[MenuName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MenuMemo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NewsInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[NewsInfo] (
	[NewsID] [int] IDENTITY (1, 1) NOT NULL ,
	[NewsTitle] [varchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[NewsContent] [varchar] (800) COLLATE Chinese_PRC_CI_AS NULL ,
	[BrowAccount] [int] NULL ,
	[BrowNumber] [int] NULL ,
	[CreateUserID] [int] NULL ,
	[CreateDate] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[NewsUser]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[NewsUser] (
	[NewsUserID] [int] IDENTITY (1, 1) NOT NULL ,
	[NewsID] [int] NULL ,
	[UserID] [int] NULL ,
	[DeptID] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PaperInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[PaperInfo] (
	[PaperID] [int] IDENTITY (1, 1) NOT NULL ,
	[PaperName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PaperType] [int] NULL ,
	[ProduceWay] [int] NULL ,
	[ShowModal] [int] NULL ,
	[ExamTime] [int] NULL ,
	[StartTime] [datetime] NULL ,
	[EndTime] [datetime] NULL ,
	[PaperMark] [int] NULL ,
	[PassMark] [int] NULL ,
	[MarkDefine] [int] NULL ,
	[RepeatExam] [int] NULL ,
	[FillAutoGrade] [int] NULL ,
	[SeeResult] [int] NULL ,
	[AutoSave] [int] NULL ,
	[ExamAccount] [int] NULL ,
	[ManagerAccount] [int] NULL ,
	[TestCount] [int] NULL ,
	[AutoJudge] [int] NULL ,
	[CreateWay] [int] NULL ,
	[CreateUserID] [int] NULL ,
	[CreateDate] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PaperPolicy]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[PaperPolicy] (
	[PaperPolicyID] [int] IDENTITY (1, 1) NOT NULL ,
	[PaperID] [int] NULL ,
	[SubjectID] [int] NULL ,
	[LoreID] [int] NULL ,
	[TestTypeID] [int] NULL ,
	[TestDiff1] [int] NULL ,
	[TestDiff2] [int] NULL ,
	[TestDiff3] [int] NULL ,
	[TestDiff4] [int] NULL ,
	[TestDiff5] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PaperTest]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[PaperTest] (
	[PaperTestID] [int] IDENTITY (1, 1) NOT NULL ,
	[PaperID] [int] NULL ,
	[RubricID] [int] NULL ,
	[TestMark] [real] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PaperTestType]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[PaperTestType] (
	[PaperTestTypeID] [int] IDENTITY (1, 1) NOT NULL ,
	[PaperID] [int] NOT NULL ,
	[TestTypeID] [int] NULL ,
	[TestTypeTitle] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TestTypeMark] [real] NULL ,
	[TestAmount] [int] NULL ,
	[TestTotalMark] [real] NULL ,
	[TestTypeOrder] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PaperUser]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[PaperUser] (
	[PaperUserID] [int] IDENTITY (1, 1) NOT NULL ,
	[PaperID] [int] NULL ,
	[UserID] [int] NULL ,
	[DeptID] [int] NULL ,
	[UserType] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RegistInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[RegistInfo] (
	[RegistInfoID] [int] IDENTITY (1, 1) NOT NULL ,
	[RegistName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[RegistUnit] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[RegistCode] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[RubricInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[RubricInfo] (
	[RubricID] [int] IDENTITY (1, 1) NOT NULL ,
	[SubjectID] [int] NULL ,
	[LoreID] [int] NULL ,
	[TestTypeID] [int] NULL ,
	[TestDiff] [varchar] (6) COLLATE Chinese_PRC_CI_AS NULL ,
	[OptionNum] [int] NULL ,
	[TestMark] [real] NULL ,
	[TestContent] [varchar] (4000) COLLATE Chinese_PRC_CI_AS NULL ,
	[TestFileName] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[TestFile] [image] NULL ,
	[OptionContent] [varchar] (1800) COLLATE Chinese_PRC_CI_AS NULL ,
	[StandardAnswer] [varchar] (2000) COLLATE Chinese_PRC_CI_AS NULL ,
	[TestParse] [varchar] (500) COLLATE Chinese_PRC_CI_AS NULL ,
	[CreateUserID] [int] NULL ,
	[CreateDate] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SectionInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[SectionInfo] (
	[SectionID] [int] IDENTITY (1, 1) NOT NULL ,
	[SubjectID] [int] NULL ,
	[ChapterID] [int] NULL ,
	[SectionName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SectionContent] [varchar] (4000) COLLATE Chinese_PRC_CI_AS NULL ,
	[BrowNumber] [int] NULL ,
	[CreateDate] [datetime] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SubjectInfo]    Script Date: 2013-9-13 17:25:18 ******/
CREATE TABLE [dbo].[SubjectInfo] (
	[SubjectID] [int] IDENTITY (1, 1) NOT NULL ,
	[SubjectName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BrowAccount] [int] NULL ,
	[SubjectMemo] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SubjectUser]    Script Date: 2013-9-13 17:25:19 ******/
CREATE TABLE [dbo].[SubjectUser] (
	[SubjectUserID] [int] IDENTITY (1, 1) NOT NULL ,
	[SubjectID] [int] NULL ,
	[UserID] [int] NULL ,
	[DeptID] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[SystemSet]    Script Date: 2013-9-13 17:25:19 ******/
CREATE TABLE [dbo].[SystemSet] (
	[SysID] [int] IDENTITY (1, 1) NOT NULL ,
	[SetName] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[StartValue] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[EndValue] [varchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[TestTypeInfo]    Script Date: 2013-9-13 17:25:19 ******/
CREATE TABLE [dbo].[TestTypeInfo] (
	[TestTypeID] [int] IDENTITY (1, 1) NOT NULL ,
	[TestTypeName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[BaseTestType] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[UserAnswer]    Script Date: 2013-9-13 17:25:19 ******/
CREATE TABLE [dbo].[UserAnswer] (
	[UserAnswerID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserScoreID] [int] NULL ,
	[TestOrder] [int] NULL ,
	[RubricID] [int] NULL ,
	[TestMark] [real] NULL ,
	[TestFileName] [varchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[TestFile] [image] NULL ,
	[UserAnswer] [varchar] (2000) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserScore] [real] NULL ,
	[ifdel] [bit] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[UserInfo]    Script Date: 2013-9-13 17:25:19 ******/
CREATE TABLE [dbo].[UserInfo] (
	[UserID] [int] IDENTITY (1, 1) NOT NULL ,
	[LoginID] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserName] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserPwd] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserSex] [varchar] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[Birthday] [datetime] NULL ,
	[DeptID] [int] NULL ,
	[JobID] [int] NULL ,
	[UserPhoto] [image] NULL ,
	[CertType] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[CertNum] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Telephone] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[LoginIP] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserType] [int] NULL ,
	[UserState] [int] NULL ,
	[JudgeUser] [int] NULL ,
	[JudgeTestType] [int] NULL ,
	[RoleMenu] [int] NULL ,
	[CreateUserID] [int] NULL ,
	[CreateDate] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

/****** Object:  Table [dbo].[UserPower]    Script Date: 2013-9-13 17:25:19 ******/
CREATE TABLE [dbo].[UserPower] (
	[UserPowerID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NULL ,
	[PowerID] [int] NULL ,
	[OptionID] [int] NULL ,
	[DeptID] [int] NULL 
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[UserScore]    Script Date: 2013-9-13 17:25:19 ******/
CREATE TABLE [dbo].[UserScore] (
	[UserScoreID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NULL ,
	[PaperID] [int] NULL ,
	[ExamState] [int] NULL ,
	[StartTime] [datetime] NULL ,
	[EndTime] [datetime] NULL ,
	[RemTime] [int] NULL ,
	[LoginIP] [varchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[JudgeState] [int] NULL ,
	[JudgeUserID] [int] NULL ,
	[ImpScore] [real] NULL ,
	[SubScore] [real] NULL ,
	[PassState] [int] NULL ,
	[TotalMark] [real] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ChapterInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_ChapterInfo] PRIMARY KEY  CLUSTERED 
	(
		[ChapterID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[DeptInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_DeptInfo] PRIMARY KEY  CLUSTERED 
	(
		[DeptID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ImportErr] WITH NOCHECK ADD 
	CONSTRAINT [PK_ImportErr] PRIMARY KEY  CLUSTERED 
	(
		[ErrID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[JobInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_JobInfo] PRIMARY KEY  CLUSTERED 
	(
		[JobID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[LoreInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_LoreInfo] PRIMARY KEY  CLUSTERED 
	(
		[LoreID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[ManagMenu] WITH NOCHECK ADD 
	CONSTRAINT [PK_ManagMenu] PRIMARY KEY  CLUSTERED 
	(
		[ManagMenuID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[NewsInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_NewsInfo] PRIMARY KEY  CLUSTERED 
	(
		[NewsID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[NewsUser] WITH NOCHECK ADD 
	CONSTRAINT [PK_NewsUser] PRIMARY KEY  CLUSTERED 
	(
		[NewsUserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PaperInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PaperInfo] PRIMARY KEY  CLUSTERED 
	(
		[PaperID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PaperPolicy] WITH NOCHECK ADD 
	CONSTRAINT [PK_PaperPolicy] PRIMARY KEY  CLUSTERED 
	(
		[PaperPolicyID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PaperTest] WITH NOCHECK ADD 
	CONSTRAINT [PK_PaperTest] PRIMARY KEY  CLUSTERED 
	(
		[PaperTestID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PaperTestType] WITH NOCHECK ADD 
	CONSTRAINT [PK_PaperTestType] PRIMARY KEY  CLUSTERED 
	(
		[PaperTestTypeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PaperUser] WITH NOCHECK ADD 
	CONSTRAINT [PK_PaperUser] PRIMARY KEY  CLUSTERED 
	(
		[PaperUserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RegistInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_RegistInfo] PRIMARY KEY  CLUSTERED 
	(
		[RegistInfoID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[RubricInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_RubricInfo] PRIMARY KEY  CLUSTERED 
	(
		[RubricID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SectionInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_Section] PRIMARY KEY  CLUSTERED 
	(
		[SectionID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SubjectInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_SubjectInfo] PRIMARY KEY  CLUSTERED 
	(
		[SubjectID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SubjectUser] WITH NOCHECK ADD 
	CONSTRAINT [PK_SubjectUser] PRIMARY KEY  CLUSTERED 
	(
		[SubjectUserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[SystemSet] WITH NOCHECK ADD 
	CONSTRAINT [PK_SystemSet] PRIMARY KEY  CLUSTERED 
	(
		[SysID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[TestTypeInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_TestTypeInfo] PRIMARY KEY  CLUSTERED 
	(
		[TestTypeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserAnswer] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserAnswer] PRIMARY KEY  CLUSTERED 
	(
		[UserAnswerID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserInfo] PRIMARY KEY  CLUSTERED 
	(
		[UserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserPower] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserPower] PRIMARY KEY  CLUSTERED 
	(
		[UserPowerID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserScore] WITH NOCHECK ADD 
	CONSTRAINT [PK_UserScore] PRIMARY KEY  CLUSTERED 
	(
		[UserScoreID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[UserAnswer] WITH NOCHECK ADD 
	CONSTRAINT [DF_UserAnswer_TestOrder] DEFAULT (1) FOR [TestOrder],
	CONSTRAINT [DF__useranswe__ifdel__7A8729A3] DEFAULT (0) FOR [ifdel]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/****** Object:  Stored Procedure dbo.SubmitUserScore    Script Date: 2013-9-13 17:25:19 ******/
/****** Encrypted object is not transferable, and script can not be generated. ******/

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/****** Object:  Stored Procedure dbo.UpdateUserAnswer    Script Date: 2013-9-13 17:25:19 ******/
/****** Encrypted object is not transferable, and script can not be generated. ******/

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/****** Object:  Stored Procedure dbo.UpdateUserScore    Script Date: 2013-9-13 17:25:19 ******/
/****** Encrypted object is not transferable, and script can not be generated. ******/

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO

/****** Object:  Stored Procedure dbo.CreatePaper    Script Date: 2013-9-13 17:25:19 ******/
/****** Encrypted object is not transferable, and script can not be generated. ******/

GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

