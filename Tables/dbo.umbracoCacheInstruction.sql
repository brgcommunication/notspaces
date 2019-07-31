CREATE TABLE [dbo].[umbracoCacheInstruction]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[utcStamp] [datetime] NOT NULL,
[jsonInstruction] [ntext] COLLATE Latin1_General_CI_AS NOT NULL,
[originated] [nvarchar] (500) COLLATE Latin1_General_CI_AS NOT NULL,
[instructionCount] [int] NOT NULL CONSTRAINT [DF_umbracoCacheInstruction_instructionCount] DEFAULT ('1')
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[umbracoCacheInstruction] ADD CONSTRAINT [PK_umbracoCacheInstruction] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
