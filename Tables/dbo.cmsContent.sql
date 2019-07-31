CREATE TABLE [dbo].[cmsContent]
(
[pk] [int] NOT NULL IDENTITY(1, 1),
[nodeId] [int] NOT NULL,
[contentType] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContent] ADD CONSTRAINT [PK_cmsContent] PRIMARY KEY CLUSTERED  ([pk]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContent] ON [dbo].[cmsContent] ([nodeId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContent] ADD CONSTRAINT [FK_cmsContent_cmsContentType_nodeId] FOREIGN KEY ([contentType]) REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsContent] ADD CONSTRAINT [FK_cmsContent_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
