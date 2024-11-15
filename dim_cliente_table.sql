create table dim_cliente(
id_cliente int not null,
nombre char(50),
edad int,
genero char(1),
ciudad char(50),

constraint cliente
	primary key(id_cliente)
);
