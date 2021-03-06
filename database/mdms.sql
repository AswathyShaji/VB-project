USE [MDMS]
GO
/****** Object:  Table [dbo].[TBL_USERSALARY]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USERSALARY](
	[US_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_ID] [int] NOT NULL,
	[US_SALARY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_USERPAYMENT]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USERPAYMENT](
	[UP_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_ID] [int] NOT NULL,
	[U_PAYMENT] [nvarchar](50) NOT NULL,
	[U_DATE] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_USERINF]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_USERINF](
	[U_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_NAME] [nvarchar](50) NOT NULL,
	[U_ADDRESS] [nvarchar](max) NOT NULL,
	[U_PH] [numeric](18, 0) NOT NULL,
	[U_EMAIL] [nvarchar](50) NOT NULL,
	[U_USERNAME] [nvarchar](50) NOT NULL,
	[U_PASSWORD] [nvarchar](50) NOT NULL,
	[U_STATUS] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_STOCK]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_STOCK](
	[ST_ID] [int] IDENTITY(1,1) NOT NULL,
	[MT_NAME] [nvarchar](50) NOT NULL,
	[M_QUANTITY] [nvarchar](50) NOT NULL,
	[COLLECTIONDATE] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_PAYMENT]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_PAYMENT](
	[P_ID] [int] IDENTITY(1,1) NOT NULL,
	[FROMDATE] [date] NOT NULL,
	[TODATE] [date] NOT NULL,
	[P_MILK] [nvarchar](50) NOT NULL,
	[P_FEED] [nvarchar](50) NOT NULL,
	[P_PAYMENT] [nvarchar](50) NOT NULL,
	[P_BALANCE] [nvarchar](50) NOT NULL,
	[F_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MILKTYPE]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MILKTYPE](
	[MT_ID] [int] IDENTITY(1,1) NOT NULL,
	[MT_NAME] [nvarchar](50) NOT NULL,
	[MT_COST] [nvarchar](50) NOT NULL,
	[MT_PRICE] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MILKSALE]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_MILKSALE](
	[MS_ID] [int] IDENTITY(1,1) NOT NULL,
	[MT_NAME] [nvarchar](50) NOT NULL,
	[MT_PRICE] [nvarchar](50) NOT NULL,
	[MS_DATE] [date] NOT NULL,
	[MS_COST] [nvarchar](50) NOT NULL,
	[MS_QUANTITY] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_MCOLLECTION]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_MCOLLECTION](
	[M_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_ID] [int] NOT NULL,
	[MT_NAME] [nvarchar](50) NOT NULL,
	[M_QUANTITY] [nvarchar](50) NOT NULL,
	[COLLECTIONDATE] [date] NOT NULL,
	[TOTALCOST] [int] NOT NULL,
	[QUALITY] [varchar](10) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_FEEDSALE]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FEEDSALE](
	[S_ID] [int] IDENTITY(1,1) NOT NULL,
	[F_ID] [int] NOT NULL,
	[C_NAME] [nvarchar](50) NOT NULL,
	[CF_NAME] [nvarchar](50) NOT NULL,
	[CF_PRICE] [nvarchar](50) NOT NULL,
	[S_COST] [int] NOT NULL,
	[S_QUANTITY] [int] NOT NULL,
	[S_DATE] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FEEDCATEGORY]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FEEDCATEGORY](
	[C_ID] [int] IDENTITY(1,1) NOT NULL,
	[C_NAME] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FEED]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FEED](
	[CF_ID] [int] IDENTITY(1,1) NOT NULL,
	[C_NAME] [nchar](10) NOT NULL,
	[CF_QUANTITY] [nvarchar](50) NOT NULL,
	[CF_NAME] [nvarchar](50) NOT NULL,
	[CF_PRICE] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_FARMERINF]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_FARMERINF](
	[F_ID] [int] IDENTITY(1,1) NOT NULL,
	[MT_NAME] [nvarchar](50) NOT NULL,
	[F_NAME] [nvarchar](50) NOT NULL,
	[F_ADDRESS] [nvarchar](max) NOT NULL,
	[F_PH] [numeric](12, 0) NOT NULL,
	[F_SECTIONSTATUS] [nvarchar](50) NOT NULL,
	[F_STATUS] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_CHART]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TBL_CHART](
	[QL_ID] [int] IDENTITY(1,1) NOT NULL,
	[QUALITY] [varchar](10) NOT NULL,
	[QL_COST] [varchar](10) NOT NULL,
	[MT_NAME] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TBL_ATTENDANCE]    Script Date: 05/02/2017 20:43:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_ATTENDANCE](
	[A_ID] [int] IDENTITY(1,1) NOT NULL,
	[U_ID] [int] NOT NULL,
	[A_DATE] [date] NOT NULL,
	[A_STATUS] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
