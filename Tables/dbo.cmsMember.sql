CREATE TABLE [dbo].[cmsMember]
(
[nodeId] [int] NOT NULL,
[Email] [nvarchar] (1000) COLLATE Latin1_General_CI_AS NOT NULL CONSTRAINT [DF_cmsMember_Email] DEFAULT (''''),
[LoginName] [nvarchar] (1000) COLLATE Latin1_General_CI_AS NOT NULL CONSTRAINT [DF_cmsMember_LoginName] DEFAULT (''''),
[Password] [nvarchar] (1000) COLLATE Latin1_General_CI_AS NOT NULL CONSTRAINT [DF_cmsMember_Password] DEFAULT ('''')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsMember] ADD CONSTRAINT [PK_cmsMember] PRIMARY KEY CLUSTERED  ([nodeId]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsMember_LoginName] ON [dbo].[cmsMember] ([LoginName]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsMember] ADD CONSTRAINT [FK_cmsMember_cmsContent_nodeId] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[cmsContent] ([nodeId])
GO
ALTER TABLE [dbo].[cmsMember] ADD CONSTRAINT [FK_cmsMember_umbracoNode_id] FOREIGN KEY ([nodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
