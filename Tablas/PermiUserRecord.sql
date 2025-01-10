
CREATE TABLE [dbo].[PermiUserRecord](
	[id_peusr] [bigint] IDENTITY(1,1) NOT NULL,
	[usercompany_id] [bigint] NOT NULL,
	[permission_id] [bigint] NOT NULL,
	[entitycatalog_id] [int] NOT NULL,
	[peusr_record] [bigint] NOT NULL,
	[peusr_include] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_peusr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_UserCompany_Permission_Entity_Record] UNIQUE NONCLUSTERED 
(
	[usercompany_id] ASC,
	[permission_id] ASC,
	[entitycatalog_id] ASC,
	[peusr_record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PermiUserRecord] ADD  DEFAULT ((1)) FOR [peusr_include]
GO

ALTER TABLE [dbo].[PermiUserRecord]  WITH CHECK ADD  CONSTRAINT [FK_PermiUserRecord_EntityCatalog] FOREIGN KEY([entitycatalog_id])
REFERENCES [dbo].[EntityCatalog] ([id_entit])
GO

ALTER TABLE [dbo].[PermiUserRecord] CHECK CONSTRAINT [FK_PermiUserRecord_EntityCatalog]
GO

ALTER TABLE [dbo].[PermiUserRecord]  WITH CHECK ADD  CONSTRAINT [FK_PermiUserRecord_Permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([id_permi])
GO

ALTER TABLE [dbo].[PermiUserRecord] CHECK CONSTRAINT [FK_PermiUserRecord_Permission]
GO

ALTER TABLE [dbo].[PermiUserRecord]  WITH CHECK ADD  CONSTRAINT [FK_PermiUserRecord_UserCompany] FOREIGN KEY([usercompany_id])
REFERENCES [dbo].[UserCompany] ([id_useco])
GO

ALTER TABLE [dbo].[PermiUserRecord] CHECK CONSTRAINT [FK_PermiUserRecord_UserCompany]
GO


