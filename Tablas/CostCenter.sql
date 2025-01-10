
CREATE TABLE [dbo].[CostCenter](
	[id_cosce] [bigint] IDENTITY(1,1) NOT NULL,
	[company_id] [bigint] NOT NULL,
	[cosce_parent_id] [bigint] NULL,
	[cosce_code] [nvarchar](255) NOT NULL,
	[cosce_name] [nvarchar](255) NOT NULL,
	[cosce_description] [nvarchar](max) NULL,
	[cosce_budget] [decimal](15, 2) NOT NULL,
	[cosce_level] [smallint] NOT NULL,
	[cosce_active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cosce] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Company_CostCenterCode] UNIQUE NONCLUSTERED 
(
	[company_id] ASC,
	[cosce_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CostCenter] ADD  DEFAULT ((0)) FOR [cosce_budget]
GO

ALTER TABLE [dbo].[CostCenter] ADD  DEFAULT ((1)) FOR [cosce_level]
GO

ALTER TABLE [dbo].[CostCenter] ADD  DEFAULT ((1)) FOR [cosce_active]
GO

ALTER TABLE [dbo].[CostCenter]  WITH CHECK ADD  CONSTRAINT [FK_CostCenter_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([id_compa])
GO

ALTER TABLE [dbo].[CostCenter] CHECK CONSTRAINT [FK_CostCenter_Company]
GO

ALTER TABLE [dbo].[CostCenter]  WITH CHECK ADD  CONSTRAINT [FK_CostCenter_Parent] FOREIGN KEY([cosce_parent_id])
REFERENCES [dbo].[CostCenter] ([id_cosce])
GO

ALTER TABLE [dbo].[CostCenter] CHECK CONSTRAINT [FK_CostCenter_Parent]
GO

ALTER TABLE [dbo].[CostCenter]  WITH CHECK ADD  CONSTRAINT [CK_CostCenter_Level] CHECK  (([cosce_level]>(0)))
GO

ALTER TABLE [dbo].[CostCenter] CHECK CONSTRAINT [CK_CostCenter_Level]
GO


