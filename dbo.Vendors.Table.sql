USE [Cap]
GO
/****** Object:  Table [dbo].[Vendors]    Script Date: 12/13/2021 4:57:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendors](
	[Id] [int] NOT NULL,
	[Code] [varchar](6) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[State] [varchar](2) NOT NULL,
	[ZipCode] [varchar](6) NOT NULL,
	[Phone] [varchar](10) NOT NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_Vendors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
