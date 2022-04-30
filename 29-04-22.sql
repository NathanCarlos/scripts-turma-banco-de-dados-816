create table usuarios(
	id serial primary key,
	id_endereco integer,
	email varchar(100),
	senha varchar(15),
	nome varchar(50),
	sobrenome varchar(50),
	cpf varchar(14)
);

create table enderecos(
	id serial primary key,
	id_usuario integer references usuarios(id),
	logradouro varchar(100),
	bairro varchar(30),
	cidade varchar(30),
	numero varchar(6),
	complemento varchar(20),
	ponto_referencia varchar(20),
	cep integer,
	uf varchar(2)
);

create table marcas(
	cod integer primary key,
	nome varchar(100)
);

alter table usuarios
	add constraint fk_enderecos foreign key (id_endereco) references enderecos(id);

create table telefones(
	id serial primary key,
	id_usuario integer references usuarios(id),
	numero varchar(14),
	tipo varchar(30)
);

create table carros(
	id serial primary key,
	id_usuario integer references usuarios(id),
	cod_marca integer references marcas(cod),
	modelo varchar(50),
	ano smallint,
	preco decimal
);

select * from usuarios;
select * from carros;
select * from marcas;
select * from enderecos;
select * from telefones;

insert into usuarios values
(default, null, 'nathan@gmail.com', '123456', 'Nathan', 'Carlos', '123.456.789-10'),
(default, null, 'gabriel@gmail.com', '123456', 'Gabriel', 'Silva', '124.456.789-10'),
(default, null, 'antonio@gmail.com', '123456', 'Antonio', 'Souza', '128.457.789-10');

insert into enderecos values
(default, 4, 'Av Paulista', 'Bela Vista', 'São Paulo', 1550, 'Apto 180A', null, 0709010, 'SP'),
(default, 5, 'Av Paulista', 'Bela Vista', 'São Paulo', 1900, 'Apto 180A', null, 0709010, 'SP'),
(default, 6, 'Av Paulista', 'Bela Vista', 'São Paulo', 2005, 'Apto 180A', null, 0709010, 'SP');

insert into marcas values
(201, 'Chevrolet'),
(202, 'Renault'),
(203, 'Volkswagen'),
(204, 'Jeep'),
(205, 'Fiat');

insert into carros values
(default, 4, 201, 'Onix', 2019, 52000),
(default, 4, 202, 'Sandero', 2019, 53000),
(default, 4, 204, 'Compass', 2019, 102000),
(default, 5, 204, 'Compass', 2020, 102000),
(default, 6, 205, 'Palio', 2010, 35000);

insert into telefones values
(default, 4, '1176768484', 'Residencial'),
(default, 4, '11976768485', 'Celular');
