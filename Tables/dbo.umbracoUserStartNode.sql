CREATE TABLE [dbo].[umbracoUserStartNode]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[userId] [int] NOT NULL,
[startNode] [int] NOT NULL,
[startNodeType] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoUserStartNode] ADD CONSTRAINT [PK_userStartNode] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserStartNode_startNodeType] ON [dbo].[umbracoUserStartNode] ([startNodeType], [startNode], [userId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoUserStartNode] ADD CONSTRAINT [FK_umbracoUserStartNode_umbracoNode_id] FOREIGN KEY ([startNode]) REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserStartNode] ADD CONSTRAINT [FK_umbracoUserStartNode_umbracoUser_id] FOREIGN KEY ([userId]) REFERENCES [dbo].[umbracoUser] ([id])
GO
