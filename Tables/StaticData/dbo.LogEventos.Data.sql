SET IDENTITY_INSERT dbo.LogEventos ON
GO
INSERT dbo.LogEventos(Id, Descripcion, Fecha, VersionSistema, Pantalla) VALUES (1, 'Exception: An exception occurred while reading a database value for property ''Zonas.ZonaID''. The expected type was ''System.String'' but the actual value was of type ''System.Int32''. Mas Detalles Exception: Unable to cast object of type ''System.Int32'' to type ''System.String''.', '2022-03-23 18:45:28.813', '1.0.0.0', 'ObtenerZonas');
INSERT dbo.LogEventos(Id, Descripcion, Fecha, VersionSistema, Pantalla) VALUES (2, 'Exception: An exception occurred while reading a database value for property ''Zonas.ZonaID''. The expected type was ''System.String'' but the actual value was of type ''System.Int32''. Mas Detalles Exception: Unable to cast object of type ''System.Int32'' to type ''System.String''.', '2022-03-23 18:56:06.050', '1.0.0.0', 'ObtenerZonas');
GO
SET IDENTITY_INSERT dbo.LogEventos OFF
GO