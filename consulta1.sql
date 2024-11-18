select 
    l.genero as genero_libro,
    t.mes as mes,
    sum(h.precio_total) as total_ventas
from
    hechos_ventas_libros h
join
    dim_libro l on h.id_libro = l.id_libro
join
    dim_tiempo t on h.id_tiempo = t.id_tiempo
group by
    l.genero, t.mes
order by 
    l.genero, t.mes;
