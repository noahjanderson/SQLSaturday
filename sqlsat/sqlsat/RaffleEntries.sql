CREATE TABLE [dbo].[RaffleEntries]
(
	[RaffleId] INT NOT NULL PRIMARY KEY, 
    [EmailId] INT NOT NULL, 
    CONSTRAINT [FK_RaffleEntries_Email] FOREIGN KEY ([EmailId]) REFERENCES [Email]([EmailId])
)