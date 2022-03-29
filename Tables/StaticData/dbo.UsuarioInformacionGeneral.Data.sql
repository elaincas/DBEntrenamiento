SET IDENTITY_INSERT dbo.UsuarioInformacionGeneral ON
GO
INSERT dbo.UsuarioInformacionGeneral(Id, Perfil_Id, Usuario, Clave, AplicacionId, Activo) VALUES (1, 1, 'elias.lainfiesta', 0x200B9AD3426CB6E380F91571C837E12E, 2, 1);
INSERT dbo.UsuarioInformacionGeneral(Id, Perfil_Id, Usuario, Clave, AplicacionId, Activo) VALUES (2, 2, 'selvin.castellanos', 0x0192023A7BBD73250516F069DF18B500, 2, 1);
GO
SET IDENTITY_INSERT dbo.UsuarioInformacionGeneral OFF
GO