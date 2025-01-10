
CREATE TABLE [dbo].[Permission](
	[id_permi] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
	[can_create] [bit] NOT NULL,
	[can_read] [bit] NOT NULL,
	[can_update] [bit] NOT NULL,
	[can_delete] [bit] NOT NULL,
	[can_import] [bit] NOT NULL,
	[can_export] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_permi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Permission] ADD  DEFAULT ((0)) FOR [can_create]
GO

ALTER TABLE [dbo].[Permission] ADD  DEFAULT ((0)) FOR [can_read]
GO

ALTER TABLE [dbo].[Permission] ADD  DEFAULT ((0)) FOR [can_update]
GO

ALTER TABLE [dbo].[Permission] ADD  DEFAULT ((0)) FOR [can_delete]
GO

ALTER TABLE [dbo].[Permission] ADD  DEFAULT ((0)) FOR [can_import]
GO

ALTER TABLE [dbo].[Permission] ADD  DEFAULT ((0)) FOR [can_export]
GO


