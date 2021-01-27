CREATE TABLE [dbo].[Nominativi]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NVARCHAR(MAX) NULL, 
    [Cognome] NVARCHAR(MAX) NULL, 
    [Eta] INT NULL, 
    [Email] NVARCHAR(MAX) NULL
)