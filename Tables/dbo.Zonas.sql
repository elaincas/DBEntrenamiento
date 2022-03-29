CREATE TABLE [dbo].[Zonas] (
  [ZonaId] [int] IDENTITY,
  [Zona] [varchar](50) NOT NULL,
  CONSTRAINT [PK_Zonas] PRIMARY KEY CLUSTERED ([ZonaId])
)
ON [PRIMARY]
GO