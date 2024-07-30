-- Criando um DB utilizando o DDL de um MER especifico ( taxi )

create database itauber;
use itauber;

create table carro(
	placa varchar(7),
	marca varchar(30),
	modelo varchar(60),
	anofab date,
	primary key( placa )
);

create table cliente(
	id varchar(4),
	nome varchar(80),
	primary key(id)
);

create table cliente_empresa(
	id varchar(4),
	cnpj varchar(18),
	primary key(id),
	foreign key(id) references cliente(id)
);

create table cliente_pessoa(
	id varchar(4),
	cpf varchar(14),
	primary key(id),
	foreign key(id) references cliente(id)
);

create table corrida(
	cliid varchar(4),
	placa varchar(7),
	dataPedido date,
	foreign key(cliid) references cliente(id),
	foreign key(placa) references carro(placa),
	primary key(cliid, placa)
);

-- Populando o DB 

insert into carro values("ALANZO1", "Civic", "UNO", 2020);
insert into carro values("K4IZ3R0", "Mustang", "GTR", 2024);
insert into carro values("4NG3101", "Mustang", "Shelby", 2024);
insert into cliente values(2511, "Pedro Melo");
insert into cliente values(1307, "Nelson Felipe");
insert into cliente values(1125, "KaiserINC");
insert into cliente_pessoa values(2511, "041.563.363-01");
insert into cliente_pessoa values(1307, "334.072.848-00");
insert into cliente_empresa values(1125, "25.345.678/0001-00");
insert into corrida values(2511, "4NG3101", '2024-07-23');
insert into corrida values(2511, "K4IZ3R0", '2024-07-23');
insert into corrida values(1307, "ALANZO1", '2024-07-21');
insert into corrida values(1307, "ALANZO1", '2024-07-22');
insert into corrida values(1125, "K4IZ3R0", '2024-07-23');

