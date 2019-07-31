CREATE TABLE [dbo].[cmsContentVersion]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[ContentId] [int] NOT NULL,
[VersionId] [uniqueidentifier] NOT NULL,
[VersionDate] [datetime] NOT NULL CONSTRAINT [DF_cmsContentVersion_VersionDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentVersion] ADD CONSTRAINT [PK_cmsContentVersion] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsContentVersion_ContentId] ON [dbo].[cmsContentVersion] ([ContentId]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsContentVersion_VersionId] ON [dbo].[cmsContentVersion] ([VersionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsContentVersion] ADD CONSTRAINT [FK_cmsContentVersion_cmsContent_nodeId] FOREIGN KEY ([ContentId]) REFERENCES [dbo].[cmsContent] ([nodeId])
GO
