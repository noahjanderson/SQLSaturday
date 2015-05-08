CREATE TABLE [dbo].[Street]
(
	[StreetId] INT NOT NULL PRIMARY KEY, 
    [Number] VARCHAR(5) NOT NULL, 
    [Name] VARCHAR(250) NOT NULL, 
    [Room] VARCHAR(10) NOT NULL, 
    [Capacity] INT NOT NULL
)
