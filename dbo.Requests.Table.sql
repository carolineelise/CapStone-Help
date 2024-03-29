USE [Cap]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 12/13/2021 4:57:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[Id] [int] NOT NULL,
	[Description] [varchar](50) NOT NULL,
	[Justification] [varchar](50) NOT NULL,
	[RejectionReason] [varchar](50) NULL,
	[DeliveryMode] [varchar](30) NOT NULL,
	[Status] [varchar](10) NOT NULL,
	[Total] [decimal](11, 2) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Requests] ADD  DEFAULT ('NEW') FOR [Status]
GO
ALTER TABLE [dbo].[Requests] ADD  DEFAULT ((0)) FOR [Total]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
