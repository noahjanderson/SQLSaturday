CREATE TABLE [dbo].[EventDate]
(
	EventId integer NOT NULL,
    [Date] DATETIME NOT NULL,
	[EndDate] DATETIME NOT NULL, 
    FOREIGN KEY (EventId) REFERENCES [Event](EventId) ON UPDATE  NO ACTION  ON DELETE  CASCADE,  
    CONSTRAINT [PK_EventDate] PRIMARY KEY ([EventId], [Date]),
)
