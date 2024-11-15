create table hechos_ventas_libros(
id_venta int not null,
id_tiempo int not null,
id_libro int not null,
id_cliente int not null,
id_tienda int not null,
cantidad int,
precio_total int, 

constraint venta
	primary key(id_venta),

constraint tiempoDeVenta
foreign key(id_tiempo) references dim_tiempo (id_tiempo)
on delete set null on update cascade,

constraint libroDeVenta
foreign key(id_libro) references dim_libro (id_libro)
on delete set null on update cascade,

constraint clienteDeVenta
foreign key(id_cliente) references dim_cliente (id_cliente)
on delete set null on update cascade,

constraint ventaEnTienda
foreign key(id_tienda) references dim_tienda(id_tienda)
on delete set null on update cascade

);