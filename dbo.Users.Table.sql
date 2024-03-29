USE [Cap]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/13/2021 4:57:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Username] [varchar](10) NOT NULL,
	[Password] [nvarchar](10) NOT NULL,
	[Firstname] [varchar](30) NOT NULL,
	[Lastname] [varchar](30) NOT NULL,
	[Phone] [numeric](18, 0) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[IsReviewer] [bit] NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
