CREATE TABLE [dbo].[cmsDictionary]
(
[pk] [int] NOT NULL IDENTITY(1, 1),
[id] [uniqueidentifier] NOT NULL,
[parent] [uniqueidentifier] NULL,
[key] [nvarchar] (450) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDictionary] ADD CONSTRAINT [PK_cmsDictionary] PRIMARY KEY CLUSTERED  ([pk]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsDictionary_id] ON [dbo].[cmsDictionary] ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsDictionary_key] ON [dbo].[cmsDictionary] ([key]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDictionary] ADD CONSTRAINT [FK_cmsDictionary_cmsDictionary_id] FOREIGN KEY ([parent]) REFERENCES [dbo].[cmsDictionary] ([id])
GO
