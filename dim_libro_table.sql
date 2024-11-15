create table dim_libro(
id_libro int not null,
titulo char(100),
autor char(50),
genero char(50),
precio_unitario int,

constraint libro 
	primary key(id_libro)
);
