CREATE TABLE [dbo].[umbracoRedirectUrl]
(
[id] [uniqueidentifier] NOT NULL,
[contentKey] [uniqueidentifier] NOT NULL,
[createDateUtc] [datetime] NOT NULL,
[url] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[urlHash] [nvarchar] (40) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoRedirectUrl] ADD CONSTRAINT [PK_umbracoRedirectUrl] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRedirectUrl] ON [dbo].[umbracoRedirectUrl] ([urlHash], [contentKey], [createDateUtc]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoRedirectUrl] ADD CONSTRAINT [FK_umbracoRedirectUrl_umbracoNode_uniqueID] FOREIGN KEY ([contentKey]) REFERENCES [dbo].[umbracoNode] ([uniqueID])
GO
