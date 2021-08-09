USE [Bookbag]
GO

/****** Object:  Table [dbo].[NumberOfTitles]    Script Date: 2021-08-09 10:53:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NumberOfTitles](
	[NumberOfTitlesID] [int] NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_NumberOfTitles] PRIMARY KEY CLUSTERED 
(
	[NumberOfTitlesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


