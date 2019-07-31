CREATE TABLE [dbo].[cmsMedia]
(
[nodeId] [int] NOT NULL,
[versionId] [uniqueidentifier] NOT NULL,
[mediaPath] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsMedia] ADD CONSTRAINT [PK_cmsMedia] PRIMARY KEY CLUSTERED  ([versionId]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMedia] ON [dbo].[cmsMedia] ([nodeId], [versionId], [mediaPath]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsMedia] ADD CONSTRAINT [FK_cmsMedia_cmsContent_nodeId] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMedia] ADD CONSTRAINT [FK_cmsMedia_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
