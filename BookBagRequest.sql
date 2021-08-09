USE [Bookbag]
GO

/****** Object:  Table [dbo].[BookBagRequest]    Script Date: 2021-08-09 10:51:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[BookBagRequest](
	[BookBagRequestID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[CardNumber] [int] NOT NULL,
	[AgeLevelID] [int] NOT NULL,
	[LocationID] [int] NOT NULL,
	[NumberOfTitlesID] [int] NOT NULL,
	[TypeOfMaterialID] [int] NOT NULL,
	[Comments 1] [nvarchar](max) NULL,
	[Comments 2] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[BookBagRequest]  WITH CHECK ADD  CONSTRAINT [FK_BookBagRequest_AgeLevel] FOREIGN KEY([AgeLevelID])
REFERENCES [dbo].[AgeLevel] ([AgeLevelID])
GO

ALTER TABLE [dbo].[BookBagRequest] CHECK CONSTRAINT [FK_BookBagRequest_AgeLevel]
GO

ALTER TABLE [dbo].[BookBagRequest]  WITH CHECK ADD  CONSTRAINT [FK_BookBagRequest_Location1] FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([LocationID])
GO

ALTER TABLE [dbo].[BookBagRequest] CHECK CONSTRAINT [FK_BookBagRequest_Location1]
GO

ALTER TABLE [dbo].[BookBagRequest]  WITH CHECK ADD  CONSTRAINT [FK_BookBagRequest_Members] FOREIGN KEY([CardNumber])
REFERENCES [dbo].[Members] ([CardNumber])
GO

ALTER TABLE [dbo].[BookBagRequest] CHECK CONSTRAINT [FK_BookBagRequest_Members]
GO

ALTER TABLE [dbo].[BookBagRequest]  WITH CHECK ADD  CONSTRAINT [FK_BookBagRequest_NumberOfTitles] FOREIGN KEY([NumberOfTitlesID])
REFERENCES [dbo].[NumberOfTitles] ([NumberOfTitlesID])
GO

ALTER TABLE [dbo].[BookBagRequest] CHECK CONSTRAINT [FK_BookBagRequest_NumberOfTitles]
GO

ALTER TABLE [dbo].[BookBagRequest]  WITH CHECK ADD  CONSTRAINT [FK_BookBagRequest_TypeOfMaterial] FOREIGN KEY([TypeOfMaterialID])
REFERENCES [dbo].[TypeOfMaterial] ([TypeOfMaterialID])
GO

ALTER TABLE [dbo].[BookBagRequest] CHECK CONSTRAINT [FK_BookBagRequest_TypeOfMaterial]
GO


