

CREATE TABLE [dbo].[PermiRole](
	[id_perol] [bigint] IDENTITY(1,1) NOT NULL,
	[role_id] [bigint] NOT NULL,
	[permission_id] [bigint] NOT NULL,
	[entitycatalog_id] [int] NOT NULL,
	[perol_include] [bit] NOT NULL,
	[perol_record] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_perol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Role_Permission_Entity_Record] UNIQUE NONCLUSTERED 
(
	[role_id] ASC,
	[permission_id] ASC,
	[entitycatalog_id] ASC,
	[perol_record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PermiRole] ADD  DEFAULT ((1)) FOR [perol_include]
GO

ALTER TABLE [dbo].[PermiRole]  WITH CHECK ADD  CONSTRAINT [FK_PermiRole_EntityCatalog] FOREIGN KEY([entitycatalog_id])
REFERENCES [dbo].[EntityCatalog] ([id_entit])
GO

ALTER TABLE [dbo].[PermiRole] CHECK CONSTRAINT [FK_PermiRole_EntityCatalog]
GO

ALTER TABLE [dbo].[PermiRole]  WITH CHECK ADD  CONSTRAINT [FK_PermiRole_Permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[Permission] ([id_permi])
GO

ALTER TABLE [dbo].[PermiRole] CHECK CONSTRAINT [FK_PermiRole_Permission]
GO

ALTER TABLE [dbo].[PermiRole]  WITH CHECK ADD  CONSTRAINT [FK_PermiRole_Role] FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id_role])
GO

ALTER TABLE [dbo].[PermiRole] CHECK CONSTRAINT [FK_PermiRole_Role]
GO


