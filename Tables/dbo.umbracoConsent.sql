CREATE TABLE [dbo].[umbracoConsent]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[current] [bit] NOT NULL,
[source] [nvarchar] (512) COLLATE Latin1_General_CI_AS NOT NULL,
[context] [nvarchar] (128) COLLATE Latin1_General_CI_AS NOT NULL,
[action] [nvarchar] (512) COLLATE Latin1_General_CI_AS NOT NULL,
[createDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoConsent_createDate] DEFAULT (getdate()),
[state] [int] NOT NULL,
[comment] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoConsent] ADD CONSTRAINT [PK_umbracoConsent] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
