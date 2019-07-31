CREATE TABLE [dbo].[umbracoUserLogin]
(
[sessionId] [uniqueidentifier] NOT NULL,
[userId] [int] NOT NULL,
[loggedInUtc] [datetime] NOT NULL,
[lastValidatedUtc] [datetime] NOT NULL,
[loggedOutUtc] [datetime] NULL,
[ipAddress] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoUserLogin] ADD CONSTRAINT [PK_umbracoUserLogin] PRIMARY KEY CLUSTERED  ([sessionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoUserLogin] ADD CONSTRAINT [FK_umbracoUserLogin_umbracoUser_id] FOREIGN KEY ([userId]) REFERENCES [dbo].[umbracoUser] ([id])
GO
