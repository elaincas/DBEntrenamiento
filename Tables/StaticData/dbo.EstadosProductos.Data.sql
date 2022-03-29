SET IDENTITY_INSERT dbo.EstadosProductos ON
GO
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (1, 'Buen Estado(Inicial)');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (2, 'Recuperado Buen Estado(Usado)');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (3, 'Recuperado Mal Estado');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (4, 'Perdido');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (5, 'MalEstado');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (6, 'Asignado');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (7, 'TrasladoEnProceso');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (8, 'Aceptado');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (9, 'Rechazado');
INSERT dbo.EstadosProductos(EstadoID, Descripcion) VALUES (10, 'StandBy');
GO
SET IDENTITY_INSERT dbo.EstadosProductos OFF
GO