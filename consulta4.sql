select 
    c.id_cliente,
    c.nombre as nombre_cliente,
    sum(h.precio_total) as total_ventas_cliente,
    sum(h.cantidad) as total_libros_comprados
from 
    hechos_ventas_libros h
join 
    dim_cliente c on h.id_cliente = c.id_cliente
group by
    c.id_cliente, c.nombre
order by 
    total_ventas_cliente desc;
