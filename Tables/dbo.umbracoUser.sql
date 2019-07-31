CREATE TABLE [dbo].[umbracoUser]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[userDisabled] [bit] NOT NULL CONSTRAINT [DF_umbracoUser_userDisabled] DEFAULT ('0'),
[userNoConsole] [bit] NOT NULL CONSTRAINT [DF_umbracoUser_userNoConsole] DEFAULT ('0'),
[userName] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[userLogin] [nvarchar] (125) COLLATE Latin1_General_CI_AS NOT NULL,
[userPassword] [nvarchar] (500) COLLATE Latin1_General_CI_AS NOT NULL,
[passwordConfig] [nvarchar] (500) COLLATE Latin1_General_CI_AS NULL,
[userEmail] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[userLanguage] [nvarchar] (10) COLLATE Latin1_General_CI_AS NULL,
[securityStampToken] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[failedLoginAttempts] [int] NULL,
[lastLockoutDate] [datetime] NULL,
[lastPasswordChangeDate] [datetime] NULL,
[lastLoginDate] [datetime] NULL,
[emailConfirmedDate] [datetime] NULL,
[invitedDate] [datetime] NULL,
[createDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoUser_createDate] DEFAULT (getdate()),
[updateDate] [datetime] NOT NULL CONSTRAINT [DF_umbracoUser_updateDate] DEFAULT (getdate()),
[avatar] [nvarchar] (500) COLLATE Latin1_General_CI_AS NULL,
[tourData] [ntext] COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoUser] ADD CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_umbracoUser_userLogin] ON [dbo].[umbracoUser] ([userLogin]) ON [PRIMARY]
GO
