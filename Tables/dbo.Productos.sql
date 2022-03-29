CREATE TABLE [dbo].[Productos] (
  [ProductoID] [int] IDENTITY,
  [Descripcion] [varchar](50) NOT NULL,
  [Activo] [bit] NOT NULL,
  CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED ([ProductoID]) WITH (FILLFACTOR = 80)
)
ON [PRIMARY]
GO