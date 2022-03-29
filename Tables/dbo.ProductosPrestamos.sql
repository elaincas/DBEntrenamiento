CREATE TABLE [dbo].[ProductosPrestamos] (
  [ProductoPrestamoID] [int] IDENTITY,
  [ColaboradorID] [int] NOT NULL,
  [FechaPrestamo] [datetime] NOT NULL,
  [UsuarioPrestaID] [int] NOT NULL,
  [FechaDevolucion] [datetime] NULL,
  [UsuarioIngresaDevolucionID] [int] NOT NULL,
  [ValeId] [int] NULL,
  [UsuarioIngresaVale] [int] NULL,
  [Activo] [bit] NOT NULL DEFAULT (1),
  CONSTRAINT [PK_ProductosPrestamos] PRIMARY KEY CLUSTERED ([ProductoPrestamoID]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO