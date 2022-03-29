CREATE TABLE [dbo].[ProductosDetalles] (
  [ProductoDetalleID] [int] IDENTITY,
  [ProductoId] [int] NOT NULL,
  [Precio] [money] NOT NULL,
  [EstadoID] [int] NOT NULL,
  [FechaIngreso] [datetime] NOT NULL,
  [UsuarioIngresa] [int] NOT NULL,
  [Observacion] [varchar](50) NOT NULL,
  [Activo] [bit] NOT NULL DEFAULT (1),
  [ZONAID] [int] NULL,
  CONSTRAINT [PK_ProductosDetalles] PRIMARY KEY CLUSTERED ([ProductoDetalleID]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[ProductosDetalles]
  ADD CONSTRAINT [FK_ProductosDetalles_EstadosProductos1] FOREIGN KEY ([EstadoID]) REFERENCES [dbo].[EstadosProductos] ([EstadoID])
GO

ALTER TABLE [dbo].[ProductosDetalles]
  ADD CONSTRAINT [FK_ProductosDetalles_Productos] FOREIGN KEY ([ProductoId]) REFERENCES [dbo].[Productos] ([ProductoID])
GO