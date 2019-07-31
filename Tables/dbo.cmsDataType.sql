CREATE TABLE [dbo].[cmsDataType]
(
[pk] [int] NOT NULL IDENTITY(1, 1),
[nodeId] [int] NOT NULL,
[propertyEditorAlias] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[dbType] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDataType] ADD CONSTRAINT [PK_cmsDataType] PRIMARY KEY CLUSTERED  ([pk]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDataType_nodeId] ON [dbo].[cmsDataType] ([nodeId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDataType] ADD CONSTRAINT [FK_cmsDataType_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
