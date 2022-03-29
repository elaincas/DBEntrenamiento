CREATE TABLE [dbo].[ColaboradorVHUR] (
  [ColaboradorId] [int] IDENTITY,
  [DescripcionPuesto] [varchar](50) NOT NULL,
  [FechaIngreso] [datetime] NOT NULL,
  [Nombre] [varchar](50) NOT NULL,
  [PuestoId] [int] NOT NULL,
  [Activo] [bit] NOT NULL,
  PRIMARY KEY CLUSTERED ([ColaboradorId])
)
ON [PRIMARY]
GO