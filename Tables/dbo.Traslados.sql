CREATE TABLE [dbo].[Traslados] (
  [TrasladoID] [int] IDENTITY,
  [ZonaIDEnvia] [int] NOT NULL,
  [ZonaIDRecibe] [int] NOT NULL,
  [Fecha] [datetime] NOT NULL,
  [UsuarioID] [int] NOT NULL,
  [Activo] [bit] NOT NULL,
  CONSTRAINT [PK_Traslados] PRIMARY KEY CLUSTERED ([TrasladoID]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO