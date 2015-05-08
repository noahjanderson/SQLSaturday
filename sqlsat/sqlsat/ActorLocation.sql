CREATE TABLE [dbo].[ActorLocation]
(
	[ActorId] INT NOT NULL , 
    [LocationId] INT NOT NULL, 
    PRIMARY KEY ([ActorId], [LocationId]), 
    CONSTRAINT [FK_ActorLocation_Actor] FOREIGN KEY ([ActorId]) REFERENCES [Actor]([ActorId]), 
    CONSTRAINT [FK_ActorLocation_Location] FOREIGN KEY ([LocationId]) REFERENCES [Location]([LocationId])
)
