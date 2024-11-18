select 
    c.ciudad as ciudad_cliente,
    t.trimestre,
    sum(h.precio_total) as ingresos_totales
from 
    hechos_ventas_libros h
join 
    dim_cliente c on h.id_cliente = c.id_cliente
join 
    dim_tiempo t on h.id_tiempo = t.id_tiempo
group by 
    c.ciudad, t.trimestre
order by 
    c.ciudad, t.trimestre;
