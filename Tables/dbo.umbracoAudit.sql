CREATE TABLE [dbo].[umbracoAudit]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[performingUserId] [int] NOT NULL,
[performingDetails] [nvarchar] (1024) COLLATE Latin1_General_CI_AS NULL,
[performingIp] [nvarchar] (64) COLLATE Latin1_General_CI_AS NULL,
[eventDateUtc] [datetime] NOT NULL CONSTRAINT [DF_umbracoAudit_eventDateUtc] DEFAULT (getdate()),
[affectedUserId] [int] NOT NULL,
[affectedDetails] [nvarchar] (1024) COLLATE Latin1_General_CI_AS NULL,
[eventType] [nvarchar] (256) COLLATE Latin1_General_CI_AS NOT NULL,
[eventDetails] [nvarchar] (1024) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoAudit] ADD CONSTRAINT [PK_umbracoAudit] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
