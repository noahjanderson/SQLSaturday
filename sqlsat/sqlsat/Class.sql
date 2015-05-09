CREATE TABLE [dbo].[Class]
(
	[ClassId] INT NOT NULL PRIMARY KEY, 
    [TopicId] INT NOT NULL, 
    [Description] VARCHAR(250) NOT NULL, 
    [Level] VARCHAR(12) NOT NULL , 
    [ActorId] INT NOT NULL, 
    CONSTRAINT [FK_Class_Topic] FOREIGN KEY ([TopicId]) REFERENCES [Topic](TopicId), 
    CONSTRAINT [FK_Class_Actor] FOREIGN KEY ([ActorId]) REFERENCES [Actor](ActorId)
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