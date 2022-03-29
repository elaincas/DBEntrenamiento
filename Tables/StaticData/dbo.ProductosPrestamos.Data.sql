SET IDENTITY_INSERT dbo.ProductosPrestamos ON
GO
INSERT dbo.ProductosPrestamos(ProductoPrestamoID, ColaboradorID, FechaPrestamo, UsuarioPrestaID, FechaDevolucion, UsuarioIngresaDevolucionID, ValeId, UsuarioIngresaVale, Activo) VALUES (1, 1, '2022-03-24 02:19:27.683', 1, NULL, 0, NULL, NULL, 1);
INSERT dbo.ProductosPrestamos(ProductoPrestamoID, ColaboradorID, FechaPrestamo, UsuarioPrestaID, FechaDevolucion, UsuarioIngresaDevolucionID, ValeId, UsuarioIngresaVale, Activo) VALUES (2, 2, '2022-03-24 03:05:33.157', 1, NULL, 0, NULL, NULL, 1);
INSERT dbo.ProductosPrestamos(ProductoPrestamoID, ColaboradorID, FechaPrestamo, UsuarioPrestaID, FechaDevolucion, UsuarioIngresaDevolucionID, ValeId, UsuarioIngresaVale, Activo) VALUES (3, 3, '2022-03-24 10:09:45.447', 1, NULL, 0, NULL, NULL, 1);
GO
SET IDENTITY_INSERT dbo.ProductosPrestamos OFF
GO