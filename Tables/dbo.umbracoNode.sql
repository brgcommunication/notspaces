CREATE TABLE [dbo].[umbracoNode]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[trashed] [bit] NOT NULL CONSTRAINT [DF_umbracoNode_trashed] DEFAULT ('0'),
[parentID] [int] NOT NULL,
[nodeUser] [int] NULL,
[level] [int] NOT NULL,
[path] [nvarchar] (150) COLLATE Latin1_General_CI_AS NOT NULL,
[sortOrder] [int] NOT NULL,
[uniqueID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_umbracoNode_uniqueID] DEFAULT (newid()),
[text] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[nodeObjectType] [uniqueidentifier] NULL,
[createDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoNode_createDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoNode] ADD CONSTRAINT [PK_structure] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_umbracoNodeObjectType] ON [dbo].[umbracoNode] ([nodeObjectType]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_umbracoNodeParentId] ON [dbo].[umbracoNode] ([parentID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_umbracoNodePath] ON [dbo].[umbracoNode] ([path]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_umbracoNodeTrashed] ON [dbo].[umbracoNode] ([trashed]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoNodeUniqueID] ON [dbo].[umbracoNode] ([uniqueID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoNode] ADD CONSTRAINT [FK_umbracoNode_umbracoNode_id] FOREIGN KEY ([parentID]) REFERENCES [dbo].[umbracoNode] ([id])
GO
