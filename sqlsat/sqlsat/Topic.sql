CREATE TABLE [dbo].[Topic]
(
	[TopicId] INT NOT NULL PRIMARY KEY, 
    [TrackId] INT NOT NULL, 
    [Topic] VARCHAR(50) NOT NULL, 
    CONSTRAINT [FK_Topic_Track] FOREIGN KEY ([TrackId]) REFERENCES [Track]([TrackId])
)
