CREATE TABLE [dbo].[umbracoServer]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[address] [nvarchar] (500) COLLATE Latin1_General_CI_AS NOT NULL,
[computerName] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[registeredDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoServer_registeredDate] DEFAULT (getdate()),
[lastNotifiedDate] [datetime] NOT NULL,
[isActive] [bit] NOT NULL,
[isMaster] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoServer] ADD CONSTRAINT [PK_umbracoServer] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_computerName] ON [dbo].[umbracoServer] ([computerName]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_umbracoServer_isActive] ON [dbo].[umbracoServer] ([isActive]) ON [PRIMARY]
GO
