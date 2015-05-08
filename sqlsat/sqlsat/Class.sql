CREATE TABLE [dbo].[Class]
(
	[ClassId] INT NOT NULL PRIMARY KEY, 
    [TopicId] INT NOT NULL, 
    [Name] VARCHAR(50) NOT NULL, 
    [Description] VARCHAR(250) NOT NULL, 
    [Level] VARCHAR(12) NOT NULL , 
    CONSTRAINT [FK_Class_Topic] FOREIGN KEY ([TopicId]) REFERENCES [Topic](TopicId)
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Begginer, Intermediate, Advanced',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Class',
    @level2type = N'COLUMN',
    @level2name = N'Level'