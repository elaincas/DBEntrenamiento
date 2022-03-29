CREATE TABLE [dbo].[Sucursales] (
  [Codigo] [int] IDENTITY,
  [Sucursal] [varchar](50) NOT NULL,
  [Contacto] [varchar](50) NOT NULL,
  [Telefono] [varchar](12) NOT NULL,
  [Email] [varchar](150) NULL,
  [Activa] [bit] NOT NULL,
  CONSTRAINT [PK_Sucursales] PRIMARY KEY CLUSTERED ([Codigo])
)
ON [PRIMARY]
GO