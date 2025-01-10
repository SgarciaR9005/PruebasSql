
CREATE TABLE [dbo].[Role](
	[id_role] [bigint] IDENTITY(1,1) NOT NULL,
	[company_id] [bigint] NOT NULL,
	[role_name] [nvarchar](255) NOT NULL,
	[role_code] [nvarchar](255) NOT NULL,
	[role_description] [nvarchar](max) NULL,
	[role_active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Company_RoleCode] UNIQUE NONCLUSTERED 
(
	[company_id] ASC,
	[role_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Role] ADD  DEFAULT ((1)) FOR [role_active]
GO

ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([id_compa])
GO

ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_Company]
GO


