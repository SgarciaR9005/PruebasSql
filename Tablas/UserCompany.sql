
CREATE TABLE [dbo].[UserCompany](
	[id_useco] [bigint] IDENTITY(1,1) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[company_id] [bigint] NOT NULL,
	[useco_active] [bit] NOT NULL,
	[role_id] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_useco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_User_Company] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[UserCompany] ADD  DEFAULT ((1)) FOR [useco_active]
GO

ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserCompany_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([id_compa])
GO

ALTER TABLE [dbo].[UserCompany] CHECK CONSTRAINT [FK_UserCompany_Company]
GO

ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserCompany_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id_role])
GO

ALTER TABLE [dbo].[UserCompany] CHECK CONSTRAINT [FK_UserCompany_Role]
GO

ALTER TABLE [dbo].[UserCompany]  WITH CHECK ADD  CONSTRAINT [FK_UserCompany_User] FOREIGN KEY([user_id])
REFERENCES [dbo].[User] ([id_user])
GO

ALTER TABLE [dbo].[UserCompany] CHECK CONSTRAINT [FK_UserCompany_User]
GO


