CREATE TABLE [dbo].[cmsPreviewXml]
(
[nodeId] [int] NOT NULL,
[versionId] [uniqueidentifier] NOT NULL,
[timestamp] [datetime] NOT NULL,
[xml] [ntext] COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPreviewXml] ADD CONSTRAINT [PK_cmsContentPreviewXml] PRIMARY KEY CLUSTERED  ([nodeId], [versionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPreviewXml] ADD CONSTRAINT [FK_cmsPreviewXml_cmsContent_nodeId] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPreviewXml] ADD CONSTRAINT [FK_cmsPreviewXml_cmsContentVersion_VersionId] FOREIGN KEY ([versionId]) REFERENCES [dbo].[cmsContentVersion] ([VersionId])
GO
