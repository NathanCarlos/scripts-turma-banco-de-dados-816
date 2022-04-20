-- Correção Exercícios

-- Exercício 1)
create database sistema_estoque;

create table usuarios(
	id serial primary key,
	nome varchar(100),
	idade int,
	email varchar(255),
	senha varchar(15),
	acesso_permitido bool
);

create table produtos(
	id serial primary key,
	categoria varchar(50),
	descricao varchar(255),
	quantidade int,
	preco decimal,
	imagem_produto text
);

-- Exercício 2)
create database sistema_tarefas;

create table usuarios(
	id serial primary key,
	nome varchar(100),
	email varchar(255) not null unique,
	senha varchar(15) not null
);

create table tarefas(
	id serial primary key,
	descricao varchar(255) not null,
	indicador_conclusao bool
);
