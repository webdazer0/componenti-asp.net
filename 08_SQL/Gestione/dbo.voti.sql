CREATE TABLE [dbo].[voti]
(
	[idvoto] INT NOT NULL PRIMARY KEY IDENTITY, 
    [idallievo] INT NOT NULL, 
    [voto] DECIMAL(18, 2) NOT NULL DEFAULT 0, 
    [data] DATE NOT NULL, 
    [note] TEXT NULL
)
