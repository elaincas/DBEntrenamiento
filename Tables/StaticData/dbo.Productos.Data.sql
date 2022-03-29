SET IDENTITY_INSERT dbo.Productos ON
GO
INSERT dbo.Productos(ProductoID, Descripcion, Activo) VALUES (3, 'Camiseta Talla L', 1);
INSERT dbo.Productos(ProductoID, Descripcion, Activo) VALUES (4, 'Camisa Talla M', 1);
GO
SET IDENTITY_INSERT dbo.Productos OFF
GO