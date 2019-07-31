CREATE TABLE [dbo].[cmsDocument]
(
[nodeId] [int] NOT NULL,
[published] [bit] NOT NULL,
[documentUser] [int] NOT NULL,
[versionId] [uniqueidentifier] NOT NULL,
[text] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[releaseDate] [datetime] NULL,
[expireDate] [datetime] NULL,
[updateDate] [datetime] NOT NULL CONSTRAINT [DF_cmsDocument_updateDate] DEFAULT (getdate()),
[templateId] [int] NULL,
[newest] [bit] NOT NULL CONSTRAINT [DF_cmsDocument_newest] DEFAULT ('0')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDocument] ADD CONSTRAINT [PK_cmsDocument] PRIMARY KEY CLUSTERED  ([versionId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsDocument_newest] ON [dbo].[cmsDocument] ([newest]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDocument] ON [dbo].[cmsDocument] ([nodeId], [versionId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsDocument_published] ON [dbo].[cmsDocument] ([published]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDocument] ADD CONSTRAINT [FK_cmsDocument_cmsContent_nodeId] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] ADD CONSTRAINT [FK_cmsDocument_cmsTemplate_nodeId] FOREIGN KEY ([templateId]) REFERENCES [dbo].[cmsTemplate] ([nodeId])
GO
ALTER TABLE [dbo].[cmsDocument] ADD CONSTRAINT [FK_cmsDocument_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
