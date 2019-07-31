CREATE TABLE [dbo].[cmsTask]
(
[closed] [bit] NOT NULL CONSTRAINT [DF_cmsTask_closed] DEFAULT ('0'),
[id] [int] NOT NULL IDENTITY(1, 1),
[taskTypeId] [int] NOT NULL,
[nodeId] [int] NOT NULL,
[parentUserId] [int] NOT NULL,
[userId] [int] NOT NULL,
[DateTime] [datetime] NOT NULL CONSTRAINT [DF_cmsTask_DateTime] DEFAULT (getdate()),
[Comment] [nvarchar] (500) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsTask] ADD CONSTRAINT [PK_cmsTask] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsTask] ADD CONSTRAINT [FK_cmsTask_cmsTaskType_id] FOREIGN KEY ([taskTypeId]) REFERENCES [dbo].[cmsTaskType] ([id])
GO
ALTER TABLE [dbo].[cmsTask] ADD CONSTRAINT [FK_cmsTask_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[cmsTask] ADD CONSTRAINT [FK_cmsTask_umbracoUser] FOREIGN KEY ([parentUserId]) REFERENCES [dbo].[umbracoUser] ([id])
GO
ALTER TABLE [dbo].[cmsTask] ADD CONSTRAINT [FK_cmsTask_umbracoUser1] FOREIGN KEY ([userId]) REFERENCES [dbo].[umbracoUser] ([id])
GO
