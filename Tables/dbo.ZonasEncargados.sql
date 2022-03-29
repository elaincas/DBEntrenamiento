CREATE TABLE [dbo].[ZonasEncargados] (
  [ZonaEncargadoID] [int] IDENTITY,
  [Descripcion] [varchar](150) NOT NULL,
  [Activo] [bit] NOT NULL,
  [ZonaID] [int] NULL,
  [UsuarioEncargadoID] [int] NULL,
  PRIMARY KEY CLUSTERED ([ZonaEncargadoID]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO