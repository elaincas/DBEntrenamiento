SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
--spAuxiliarProductos '20181101','20181130',4
CREATE PROCEDURE [dbo].[spAuxiliarProductos] 
@fechaDesde as Datetime,
@fechaHasta as Datetime,
@productoID as Integer
AS
BEGIN

--declare @fechaDesde as Datetime = '20220323'
--declare		@fechaHasta as Datetime = '20220324'
--declare		@productoID as Integer = 3


  declare @fecha nvarchar(10)='2000-01';
  set @fecha = (Select dateadd(day,0,cast(@fecha+'-01' as date)))
  select
    pd.ProductoDetalleID,
    pd.ProductoID,
    p.Descripcion,
    ISNULL(tp.ProductoPrestamoID,0) as ProductoPrestamoID,
    ISNULL(pp.ColaboradorID,0) as ColaboradorID,
    IsNULL(c.Nombre,'Ninguno') as Nombre,
    tp.FechaCambioEstado,
    tp.EstadoID,
    e.Descripcion as EstadoDescripcion,
    tp.UsuarioID as UsuarioHaceTransaccion,
    ug.Usuario,
    pd.Observacion as ObservacionDetallesProducto,
    ISNULL(tp.TrasladoId,0) as NoTraslado ,
    IsNULL(t.ZonaIDEnvia,0) as ZonaIDEnvia,
    CASE WHEN t.ZonaIDEnvia is not null then z.Zona ELse 'Ninguno' END as ZonaEnvia,
    ISNULL(t.ZonaIDRecibe ,0) as ZonaIDRecibe,
    CASE WHEN t.ZonaIDRecibe is not null then z.Zona ELse 'Ninguno' END as ZonaRecibe,
    ISNull(t.Fecha,@fecha) as FechaTraslado,
    pd.ZonaID as ZonaIdActual,
    z.Zona as ZonaActual
    from TransaccionesProductos tp 
    inner join ProductosDetalles pd on tp.ProductoDetalleID = pd.ProductoDetalleID 
    inner join Productos p on pd.ProductoId = p.ProductoID
    inner join UsuarioInformacionGeneral ug on tp.UsuarioID = ug.Id
    inner join EstadosProductos e on tp.EstadoID = e.EstadoID
    inner join Zonas z on tp.ZonaID = z.ZonaID
    left join ProductosPrestamos pp on tp.ProductoPrestamoID = pp.ProductoPrestamoID
    left join ColaboradorVHUR c on pp.ColaboradorID = c.ColaboradorID
    left join Traslados t on tp.TrasladoId = t.TrasladoID
    left join TrasladosDetalles td on t.TrasladoId = td.TrasladoID
    where tp.Activo = 1 and pd.Activo = 1 and p.Activo = 1 and p.ProductoID = @productoID 
	and tp.FechaCambioEstado between @fechaDesde and @fechaHasta
    order by tp.EstadoID,pd.ProductoId
END
GO