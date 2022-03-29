SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spReporteProductosDisponibleParaAsignarPorEstados] @usuario int = 0
AS
BEGIN	
		SELECT COUNT(pd.ProductoDetalleID) AS Cantidad, 
											pd.ProductoId,
											p.Descripcion,
											pd.EstadoID,
											CASE pd.EstadoID when 1 then 'Buen Estado Inicial'
											WHEN 2 then 'Recuperado Buen Estado'
											End AS Estado,
											pd.Observacion
											INTO #ProductoTemp
											FROM Productos p 
											INNER JOIN  ProductosDetalles pd ON p.ProductoID = pd.ProductoId
											INNER JOIN ZonasEncargados ze on pd.ZonaID = ze.ZonaID
											where pd.EstadoID in (1,2) and p.Activo = 1 and pd.Activo = 1 and ze.UsuarioEncargadoID = @usuario
											GROUP BY  pd.ProductoId,p.Descripcion,pd.EstadoID,pd.Observacion
		select t.*  from #ProductoTemp t
		DROP table #ProductoTemp
		
END
GO