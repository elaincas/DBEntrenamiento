CREATE TABLE [dbo].[TransaccionesProductos] (
  [TransaccionesProductosID] [int] IDENTITY,
  [ProductoDetalleID] [int] NOT NULL,
  [ProductoPrestamoID] [int] NULL,
  [FechaCambioEstado] [datetime] NOT NULL,
  [EstadoID] [int] NOT NULL,
  [UsuarioID] [int] NOT NULL,
  [Activo] [bit] NOT NULL DEFAULT (1),
  [TrasladoId] [int] NULL,
  [ZonaId] [int] NULL,
  PRIMARY KEY CLUSTERED ([TransaccionesProductosID]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[TransaccionesProductos]
  ADD CONSTRAINT [FK_TransaccionesProductos_EstadosProductos] FOREIGN KEY ([EstadoID]) REFERENCES [dbo].[EstadosProductos] ([EstadoID])
GO

ALTER TABLE [dbo].[TransaccionesProductos]
  ADD CONSTRAINT [FK_TransaccionesProductos_ProductosDetalles] FOREIGN KEY ([ProductoDetalleID]) REFERENCES [dbo].[ProductosDetalles] ([ProductoDetalleID])
GO

ALTER TABLE [dbo].[TransaccionesProductos]
  ADD CONSTRAINT [FK_TransaccionesProductos_ProductosPrestamos] FOREIGN KEY ([ProductoPrestamoID]) REFERENCES [dbo].[ProductosPrestamos] ([ProductoPrestamoID])
GO