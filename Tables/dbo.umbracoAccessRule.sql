CREATE TABLE [dbo].[umbracoAccessRule]
(
[id] [uniqueidentifier] NOT NULL,
[accessId] [uniqueidentifier] NOT NULL,
[ruleValue] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[ruleType] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[createDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoAccessRule_createDate] DEFAULT (getdate()),
[updateDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoAccessRule_updateDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD CONSTRAINT [PK_umbracoAccessRule] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoAccessRule] ON [dbo].[umbracoAccessRule] ([ruleValue], [ruleType], [accessId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoAccessRule] ADD CONSTRAINT [FK_umbracoAccessRule_umbracoAccess_id] FOREIGN KEY ([accessId]) REFERENCES [dbo].[umbracoAccess] ([id])
GO
