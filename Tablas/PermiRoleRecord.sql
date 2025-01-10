
CREATE TABLE [dbo].[PermiRoleRecord](
	[id_perrc] [bigint] IDENTITY(1,1) NOT NULL,
	[role_id] [bigint] NOT NULL,
	[permission_id] [bigint] NOT NULL,
	[entitycatalog_id] [int] NOT NULL,
	[perrc_record] [bigint] NOT NULL,
	[perrc_include] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_perrc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Role_Permission_Entity_Record1] UNIQUE NONCLUSTERED 
(
	[role_id] ASC,
	[permission_id] ASC,
	[entitycatalog_id] ASC,
	[perrc_record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PermiRoleRecord] ADD  DEFAULT ((1)) FOR [perrc_include]
GO

ALTER TABLE [dbo].[PermiRoleRecord]  WITH CHECK ADD  CONSTRAINT [FK_PermiRoleRecord_EntityCatalog] FOREIGN KEY([entitycatalog_id])
REFERENCES [dbo].[EntityCatalog] ([id_entit])
GO

ALTER TABLE [dbo].[PermiRoleRecord] CHECK CONSTRAINT [FK_PermiRoleRecord_EntityCatalog]
GO

ALTER TABLE [dbo].[PermiRoleRecord]  WITH CHECK ADD  CONSTRAINT [FK_PermiRoleRecord_Permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([id_permi])
GO

ALTER TABLE [dbo].[PermiRoleRecord] CHECK CONSTRAINT [FK_PermiRoleRecord_Permission]
GO

ALTER TABLE [dbo].[PermiRoleRecord]  WITH CHECK ADD  CONSTRAINT [FK_PermiRoleRecord_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id_role])
GO

ALTER TABLE [dbo].[PermiRoleRecord] CHECK CONSTRAINT [FK_PermiRoleRecord_Role]
GO

