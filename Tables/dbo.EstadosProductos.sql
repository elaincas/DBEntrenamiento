CREATE TABLE [dbo].[EstadosProductos] (
  [EstadoID] [int] IDENTITY,
  [Descripcion] [varchar](50) NOT NULL,
  CONSTRAINT [PK_EstadosProductos] PRIMARY KEY CLUSTERED ([EstadoID]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO