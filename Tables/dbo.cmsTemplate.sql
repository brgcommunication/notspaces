CREATE TABLE [dbo].[cmsTemplate]
(
[pk] [int] NOT NULL IDENTITY(1, 1),
[nodeId] [int] NOT NULL,
[alias] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL,
[design] [ntext] COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsTemplate] ADD CONSTRAINT [PK_cmsTemplate] PRIMARY KEY CLUSTERED  ([pk]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsTemplate_nodeId] ON [dbo].[cmsTemplate] ([nodeId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsTemplate] ADD CONSTRAINT [FK_cmsTemplate_umbracoNode] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
