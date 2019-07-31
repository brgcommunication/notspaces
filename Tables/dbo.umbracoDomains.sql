CREATE TABLE [dbo].[umbracoDomains]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[domainDefaultLanguage] [int] NULL,
[domainRootStructureID] [int] NULL,
[domainName] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoDomains] ADD CONSTRAINT [PK_umbracoDomains] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoDomains] ADD CONSTRAINT [FK_umbracoDomains_umbracoNode_id] FOREIGN KEY ([domainRootStructureID]) REFERENCES [dbo].[umbracoNode] ([id])
GO
