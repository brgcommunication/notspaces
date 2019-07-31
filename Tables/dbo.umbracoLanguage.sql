CREATE TABLE [dbo].[umbracoLanguage]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[languageISOCode] [nvarchar] (14) COLLATE Latin1_General_CI_AS NULL,
[languageCultureName] [nvarchar] (100) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoLanguage] ADD CONSTRAINT [PK_umbracoLanguage] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_umbracoLanguage_languageISOCode] ON [dbo].[umbracoLanguage] ([languageISOCode]) ON [PRIMARY]
GO
