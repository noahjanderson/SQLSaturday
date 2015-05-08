CREATE TABLE [dbo].[Email]
(
	[EmailId] INT NOT NULL IDENTITY,
    [Email] VARCHAR(256) NOT NULL,  
    [ActorId] INT NOT NULL, 
    CONSTRAINT [PK_EmailId] PRIMARY KEY ([EmailId]), 
    CONSTRAINT [FK_Email_Actor] FOREIGN KEY ([ActorId]) REFERENCES [Actor]([ActorId])
)
