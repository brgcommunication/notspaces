CREATE TABLE [dbo].[cmsContentType]
(
[pk] [int] NOT NULL IDENTITY(1, 1),
[nodeId] [int] NOT NULL,
[alias] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[icon] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[thumbnail] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL CONSTRAINT [DF_cmsContentType_thumbnail] DEFAULT ('folder.png'),
[description] [nvarchar] (1500) COLLATE Latin1_General_CI_AS NULL,
[isContainer] [bit] NOT NULL CONSTRAINT [DF_cmsContentType_isContainer] DEFAULT ('0'),
[allowAtRoot] [bit] NOT NULL CONSTRAINT [DF_cmsContentType_allowAtRoot] DEFAULT ('0')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentType] ADD CONSTRAINT [PK_cmsContentType] PRIMARY KEY CLUSTERED  ([pk]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsContentType_icon] ON [dbo].[cmsContentType] ([icon]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentType] ON [dbo].[cmsContentType] ([nodeId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentType] ADD CONSTRAINT [FK_cmsContentType_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
