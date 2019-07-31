CREATE TABLE [dbo].[umbracoUserGroup]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[userGroupAlias] [nvarchar] (200) COLLATE Latin1_General_CI_AS NOT NULL,
[userGroupName] [nvarchar] (200) COLLATE Latin1_General_CI_AS NOT NULL,
[userGroupDefaultPermissions] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL,
[createDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoUserGroup_createDate] DEFAULT (getdate()),
[updateDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoUserGroup_updateDate] DEFAULT (getdate()),
[icon] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[startContentId] [int] NULL,
[startMediaId] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD CONSTRAINT [PK_umbracoUserGroup] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupAlias] ON [dbo].[umbracoUserGroup] ([userGroupAlias]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoUserGroup_userGroupName] ON [dbo].[umbracoUserGroup] ([userGroupName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD CONSTRAINT [FK_startContentId_umbracoNode_id] FOREIGN KEY ([startContentId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
ALTER TABLE [dbo].[umbracoUserGroup] ADD CONSTRAINT [FK_startMediaId_umbracoNode_id] FOREIGN KEY ([startMediaId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
