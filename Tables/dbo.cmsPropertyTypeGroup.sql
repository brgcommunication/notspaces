CREATE TABLE [dbo].[cmsPropertyTypeGroup]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[contenttypeNodeId] [int] NOT NULL,
[text] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[sortorder] [int] NOT NULL,
[uniqueID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_cmsPropertyTypeGroup_uniqueID] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD CONSTRAINT [PK_cmsPropertyTypeGroup] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeGroupUniqueID] ON [dbo].[cmsPropertyTypeGroup] ([uniqueID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPropertyTypeGroup] ADD CONSTRAINT [FK_cmsPropertyTypeGroup_cmsContentType_nodeId] FOREIGN KEY ([contenttypeNodeId]) REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
