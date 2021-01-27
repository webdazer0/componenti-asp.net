CREATE TABLE [dbo].[allievi]
(
	[Idallievo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [nome] VARCHAR(65) NOT NULL, 
    [cognome] VARCHAR(65) NOT NULL, 
    [datanascita] DATETIME NOT NULL, 
    [note] TEXT NULL
)

