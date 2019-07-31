CREATE TABLE [dbo].[cmsTaskType]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[alias] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsTaskType] ADD CONSTRAINT [PK_cmsTaskType] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsTaskType_alias] ON [dbo].[cmsTaskType] ([alias]) ON [PRIMARY]
GO
