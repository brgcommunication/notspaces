CREATE TABLE [dbo].[cmsTags]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[tag] [nvarchar] (200) COLLATE Latin1_General_CI_AS NULL,
[ParentId] [int] NULL,
[group] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsTags] ADD CONSTRAINT [PK_cmsTags] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsTags] ON [dbo].[cmsTags] ([tag], [group]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsTags] ADD CONSTRAINT [FK_cmsTags_cmsTags] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[cmsTags] ([id])
GO
