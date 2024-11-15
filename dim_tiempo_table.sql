create table dim_tiempo(
id_tiempo int not null,
año int,
mes int,
dia int,
trimestre int,

constraint tiempo
	primary key(id_tiempo)
);
