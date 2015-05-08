CREATE TABLE [dbo].[Location]
(
	[LocationId] INT NOT NULL , 
    [StreetId] INT NOT NULL, 
    [CityId] INT NOT NULL, 
    [StateId] VARCHAR(55) NOT NULL, 
    [ZipCodeId] VARCHAR(5) NOT NULL, 
    CONSTRAINT [PK_Location] PRIMARY KEY ([LocationId]), 
    CONSTRAINT [FK_Location_Street] FOREIGN KEY ([StreetId]) REFERENCES [Street]([StreetId]), 
    CONSTRAINT [FK_Location_City] FOREIGN KEY ([CityId]) REFERENCES [City]([CityId]), 
    CONSTRAINT [FK_Location_State] FOREIGN KEY ([StateId]) REFERENCES [State](StateId),
	CONSTRAINT [FK_Location_ZipCode] FOREIGN KEY ([ZipCodeId]) REFERENCES [ZipCode](ZipCodeId)
)
