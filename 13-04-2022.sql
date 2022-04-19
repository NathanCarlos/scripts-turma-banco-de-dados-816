-- Comando para criar um database.
create database sistema_estoque;

-- Comando para excluir um database.

drop database sistema_estoque;

-- Altera o database 

alter database sistema_estq rename to sistema_estoque;

-- Comando para criar tabelas.

create table alunos(
	cpf varchar(14),
	nome varchar(100),
	email varchar(100),
	senha integer,
	mensalidade decimal
);

drop table alunos;

use sistema_estoque;
