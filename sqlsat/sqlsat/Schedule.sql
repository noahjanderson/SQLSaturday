CREATE TABLE [dbo].[Schedule]
(
	[ClassId] INT NOT NULL , 
    [ActorId] INT NOT NULL, 
    [LocationId] INT NOT NULL, 
    [Time] DATETIME NOT NULL, 
    [EndTime] AS DATEADD( MINUTE, 60, [Time])
    PRIMARY KEY ([ClassId], [ActorId], [LocationId], [Time]), 
    CONSTRAINT [FK_Schedule_ClassId] FOREIGN KEY ([ClassId]) REFERENCES [Class]([ClassId]), 
    CONSTRAINT [FK_Schedule_Actor] FOREIGN KEY ([ActorId]) REFERENCES [Actor]([ActorId]),
	CONSTRAINT [FK_Schedule_Location] FOREIGN KEY ([LocationId]) REFERENCES [Location]([LocationId])
)
