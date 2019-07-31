CREATE TABLE [dbo].[umbracoExternalLogin]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[userId] [int] NOT NULL,
[loginProvider] [nvarchar] (4000) COLLATE Latin1_General_CI_AS NOT NULL,
[providerKey] [nvarchar] (4000) COLLATE Latin1_General_CI_AS NOT NULL,
[createDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoExternalLogin_createDate] DEFAULT (getdate())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoExternalLogin] ADD CONSTRAINT [PK_umbracoExternalLogin] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
