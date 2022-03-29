CREATE TABLE [dbo].[UsuarioInformacionGeneral] (
  [Id] [int] IDENTITY,
  [Perfil_Id] [int] NOT NULL,
  [Usuario] [varchar](50) NOT NULL,
  [Clave] [varbinary](50) NULL,
  [AplicacionId] [int] NULL,
  [Activo] [bit] NULL,
  CONSTRAINT [PK_UsuarioInformacionGeneral] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO