CREATE TABLE [dbo].[cmsMacro]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[uniqueId] [uniqueidentifier] NOT NULL,
[macroUseInEditor] [bit] NOT NULL CONSTRAINT [DF_cmsMacro_macroUseInEditor] DEFAULT ('0'),
[macroRefreshRate] [int] NOT NULL CONSTRAINT [DF_cmsMacro_macroRefreshRate] DEFAULT ('0'),
[macroAlias] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[macroName] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[macroScriptType] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[macroScriptAssembly] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[macroXSLT] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[macroCacheByPage] [bit] NOT NULL CONSTRAINT [DF_cmsMacro_macroCacheByPage] DEFAULT ('1'),
[macroCachePersonalized] [bit] NOT NULL CONSTRAINT [DF_cmsMacro_macroCachePersonalized] DEFAULT ('0'),
[macroDontRender] [bit] NOT NULL CONSTRAINT [DF_cmsMacro_macroDontRender] DEFAULT ('0'),
[macroPython] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsMacro] ADD CONSTRAINT [PK_cmsMacro] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacroPropertyAlias] ON [dbo].[cmsMacro] ([macroAlias]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsMacro_UniqueId] ON [dbo].[cmsMacro] ([uniqueId]) ON [PRIMARY]
GO
