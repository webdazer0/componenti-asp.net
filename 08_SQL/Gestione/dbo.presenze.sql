CREATE TABLE [dbo].[presenze]
(
	[idpresenza] INT NOT NULL PRIMARY KEY IDENTITY, 
    [idallievo] INT NOT NULL, 
    [data] DATETIME NOT NULL, 
    [corso] VARCHAR(45) NOT NULL, 
    [presente] INT NOT NULL, 
    [datamodifica] DATETIME NOT NULL
)
