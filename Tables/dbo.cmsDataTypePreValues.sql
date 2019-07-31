CREATE TABLE [dbo].[cmsDataTypePreValues]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[datatypeNodeId] [int] NOT NULL,
[value] [ntext] COLLATE Latin1_General_CI_AS NULL,
[sortorder] [int] NOT NULL,
[alias] [nvarchar] (50) COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] ADD CONSTRAINT [PK_cmsDataTypePreValues] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsDataTypePreValues] ADD CONSTRAINT [FK_cmsDataTypePreValues_cmsDataType_nodeId] FOREIGN KEY ([datatypeNodeId]) REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
