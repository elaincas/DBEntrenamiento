SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[spReporteProductoAsignadosAColaboradorOrdenadosPorEstados] @fechaDesde date,@fechaHasta date,@estadoID as int
AS
BEGIN
		SELECT pd.ProductoID,
				pt.Descripcion,
				pd.ProductoDetalleID,
				tp.EstadoID ,
				CASE tp.EstadoID when 1 then 'Buen Estado Inicial'
				WHEN 2 then 'Recuperado Buen Estado'
				WHEN 3 then 'Recuperado Mal Estado'
				When 4 then 'Perdido'
				When 5 then 'Mal Estado'
				When 6 Then 'Asignado'
				End AS Estado,
				tp.FechaCambioEstado,
				IsNULL(pp.ColaboradorID,0) as ColaboradorID,
				Isnull(c.Nombre,'') as Nombre,
				tp.TransaccionesProductosID,
				isnull(ca.Nombre,'') as Asigna
						FROM ProductosDetalles pd
						inner join Productos pt on pd.ProductoId = pt.ProductoID
						inner join TransaccionesProductos tp on pd.ProductoDetalleID = tp.ProductoDetalleID
						left join ProductosPrestamos pp on tp.ProductoPrestamoID = pp.ProductoPrestamoID
						left join ColaboradorVHUR c on pp.ColaboradorID = c.ColaboradorID
						LEFT join  ColaboradorVHUR ca on pp.UsuarioPrestaID=ca.ColaboradorID
						WHERE pd.EstadoID <> 1 
						and tp.FechaCambioEstado between @fechaDesde and @fechaHasta and tp.EstadoID = @estadoID
						ORDER BY pd.ProductoDetalleID,tp.FechaCambioEstado,pt.ProductoID	

END
GO