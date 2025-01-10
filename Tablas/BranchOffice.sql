

CREATE TABLE [dbo].[BranchOffice](
	[id_broff] [bigint] IDENTITY(1,1) NOT NULL,
	[company_id] [bigint] NOT NULL,
	[broff_name] [nvarchar](255) NOT NULL,
	[broff_code] [nvarchar](255) NOT NULL,
	[broff_address] [nvarchar](255) NOT NULL,
	[broff_city] [nvarchar](255) NOT NULL,
	[broff_state] [nvarchar](255) NOT NULL,
	[broff_country] [nvarchar](255) NOT NULL,
	[broff_phone] [nvarchar](255) NOT NULL,
	[broff_email] [nvarchar](255) NOT NULL,
	[broff_active] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_broff] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Company_BranchCode] UNIQUE NONCLUSTERED 
(
	[company_id] ASC,
	[broff_code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[BranchOffice] ADD  DEFAULT ((1)) FOR [broff_active]
GO

ALTER TABLE [dbo].[BranchOffice]  WITH CHECK ADD  CONSTRAINT [FK_BranchOffice_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([id_compa])
GO

ALTER TABLE [dbo].[BranchOffice] CHECK CONSTRAINT [FK_BranchOffice_Company]
GO


