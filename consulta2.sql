select
    ti.nombre as tienda,
    l.autor as autor,
   sum(h.cantidad) as libros_vendidos
from
    hechos_ventas_libros h
join
    dim_tienda ti on h.id_tienda = ti.id_tienda
join 
    dim_libro l on h.id_libro = l.id_libro
group by 
    ti.nombre, l.autor
order by
    ti.nombre, libros_vendidos desc;
