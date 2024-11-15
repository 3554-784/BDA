create table dim_tienda(
id_tienda int not null,
nombre char(50),
ciudad char(50),
país char(50),

constraint tienda
	primary key(id_tienda)
);
