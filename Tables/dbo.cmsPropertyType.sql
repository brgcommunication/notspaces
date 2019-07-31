CREATE TABLE [dbo].[cmsPropertyType]
(
[id] [int] NOT NULL IDENTITY(1, 1),
[dataTypeId] [int] NOT NULL,
[contentTypeId] [int] NOT NULL,
[propertyTypeGroupId] [int] NULL,
[Alias] [nvarchar] (255) COLLATE Latin1_General_CI_AS NOT NULL,
[Name] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[sortOrder] [int] NOT NULL CONSTRAINT [DF_cmsPropertyType_sortOrder] DEFAULT ('0'),
[mandatory] [bit] NOT NULL CONSTRAINT [DF_cmsPropertyType_mandatory] DEFAULT ('0'),
[validationRegExp] [nvarchar] (255) COLLATE Latin1_General_CI_AS NULL,
[Description] [nvarchar] (2000) COLLATE Latin1_General_CI_AS NULL,
[UniqueID] [uniqueidentifier] NOT NULL CONSTRAINT [DF_cmsPropertyType_UniqueID] DEFAULT (newid())
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [PK_cmsPropertyType] PRIMARY KEY CLUSTERED  ([id]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_cmsPropertyTypeAlias] ON [dbo].[cmsPropertyType] ([Alias]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_cmsPropertyTypeUniqueID] ON [dbo].[cmsPropertyType] ([UniqueID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [FK_cmsPropertyType_cmsContentType_nodeId] FOREIGN KEY ([contentTypeId]) REFERENCES [dbo].[cmsContentType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [FK_cmsPropertyType_cmsDataType_nodeId] FOREIGN KEY ([dataTypeId]) REFERENCES [dbo].[cmsDataType] ([nodeId])
GO
ALTER TABLE [dbo].[cmsPropertyType] ADD CONSTRAINT [FK_cmsPropertyType_cmsPropertyTypeGroup_id] FOREIGN KEY ([propertyTypeGroupId]) REFERENCES [dbo].[cmsPropertyTypeGroup] ([id])
GO
