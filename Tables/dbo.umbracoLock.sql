CREATE TABLE [dbo].[umbracoLock]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[value] [int] NOT NULL,
[name] [nvarchar] (64) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoLock] ADD CONSTRAINT [PK_umbracoLock] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
