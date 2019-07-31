CREATE TABLE [dbo].[umbracoMigration]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[name] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[createDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoMigration_createDate] DEFAULT (getdate()),
[version] [nvarchar] (50) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoMigration] ADD CONSTRAINT [PK_umbracoMigration] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoMigration] ON [dbo].[umbracoMigration] ([name], [version]) ON [PRIMARY]
GO
