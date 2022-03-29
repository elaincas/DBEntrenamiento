CREATE TABLE [dbo].[TrasladosDetalles] (
  [TrasladoDetalleId] [int] IDENTITY,
  [TrasladoID] [int] NOT NULL,
  [ProductoDetalleID] [int] NOT NULL,
  [EstadoID] [int] NOT NULL,
  [FechaCambioEstado] [datetime] NOT NULL,
  [UsuarioID] [int] NOT NULL,
  [Observacion] [varchar](150) NULL,
  CONSTRAINT [PK_TrasladosDetalles] PRIMARY KEY CLUSTERED ([TrasladoDetalleId]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[TrasladosDetalles]
  ADD CONSTRAINT [FK_TrasladosDetalles_EstadosProductos] FOREIGN KEY ([EstadoID]) REFERENCES [dbo].[EstadosProductos] ([EstadoID])
GO

ALTER TABLE [dbo].[TrasladosDetalles]
  ADD CONSTRAINT [FK_TrasladosDetalles_ProductosDetalles] FOREIGN KEY ([ProductoDetalleID]) REFERENCES [dbo].[ProductosDetalles] ([ProductoDetalleID])
GO

ALTER TABLE [dbo].[TrasladosDetalles]
  ADD CONSTRAINT [FK_TrasladosDetalles_Traslados] FOREIGN KEY ([TrasladoID]) REFERENCES [dbo].[Traslados] ([TrasladoID])
GO