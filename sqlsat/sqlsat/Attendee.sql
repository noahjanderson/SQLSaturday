CREATE TABLE [dbo].[Attendee]
(
	[EventId] INT NOT NULL , 
    [ActorId] INT NOT NULL, 
    CONSTRAINT [FK_Attendee_Actor] FOREIGN KEY (ActorId) REFERENCES [Actor]([ActorId]),
	CONSTRAINT [FK_Attendee_Event] FOREIGN KEY (EventId) REFERENCES [Event]([EventId]), 
    PRIMARY KEY ([ActorId], [EventId])

)
