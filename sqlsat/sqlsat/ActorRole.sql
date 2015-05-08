CREATE TABLE [dbo].[ActorRole]
(
	[ActorId] INT NOT NULL , 
    [RoleId] INT NOT NULL, 
    PRIMARY KEY ([RoleId], [ActorId]), 
    CONSTRAINT [FK_ActorRole_Actor] FOREIGN KEY ([ActorId]) REFERENCES [Actor]([ActorId]),
	CONSTRAINT [FK_ActorRole_Role] FOREIGN KEY ([RoleId]) REFERENCES [Role]([RoleId])
)
