CREATE TABLE [dbo].[cmsPropertyData]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[contentNodeId] [int] NOT NULL,
[versionId] [uniqueidentifier] NULL,
[propertytypeid] [int] NOT NULL,
[dataInt] [int] NULL,
[dataDecimal] [decimal] (38, 6) NULL,
[dataDate] [datetime] NULL,
[dataNvarchar] [nvarchar] (500) COLLATE Latin1_General_CI_AS NULL,
[dataNtext] [ntext] COLLATE Latin1_General_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPropertyData] ADD CONSTRAINT [PK_cmsPropertyData] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyData_1] ON [dbo].[cmsPropertyData] ([contentNodeId], [versionId], [propertytypeid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_3] ON [dbo].[cmsPropertyData] ([propertytypeid]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsPropertyData_2] ON [dbo].[cmsPropertyData] ([versionId]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPropertyData] ADD CONSTRAINT [FK_cmsPropertyData_cmsPropertyType_id] FOREIGN KEY ([propertytypeid]) REFERENCES [dbo].[cmsPropertyType] ([id])
GO
ALTER TABLE [dbo].[cmsPropertyData] ADD CONSTRAINT [FK_cmsPropertyData_umbracoNode_id] FOREIGN KEY ([contentNodeId]) REFERENCES [dbo].[umbracoNode] ([id])
GO
