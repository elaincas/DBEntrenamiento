CREATE TABLE [dbo].[LogEventos] (
  [Id] [int] IDENTITY,
  [Descripcion] [varchar](2000) NULL,
  [Fecha] [datetime] NOT NULL,
  [VersionSistema] [varchar](50) NULL,
  [Pantalla] [varchar](200) NULL,
  CONSTRAINT [PK_LogEventos] PRIMARY KEY CLUSTERED ([Id]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO