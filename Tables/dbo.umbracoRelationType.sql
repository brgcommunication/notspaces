CREATE TABLE [dbo].[umbracoRelationType]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[typeUniqueId] [uniqueidentifier] NOT NULL,
[dual] [bit] NOT NULL,
[parentObjectType] [uniqueidentifier] NOT NULL,
[childObjectType] [uniqueidentifier] NOT NULL,
[name] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[alias] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoRelationType] ADD CONSTRAINT [PK_umbracoRelationType] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_alias] ON [dbo].[umbracoRelationType] ([alias]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_name] ON [dbo].[umbracoRelationType] ([name]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoRelationType_UniqueId] ON [dbo].[umbracoRelationType] ([typeUniqueId]) ON [PRIMARY]
GO
