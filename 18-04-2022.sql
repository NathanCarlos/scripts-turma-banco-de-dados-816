drop table alunos;

-- CRUD(Create, Read, Update e Delete)

create table alunos(
	id serial primary key,
	nome varchar(100) not null,
	cpf varchar(14),
	email varchar(100) not null unique,
	senha varchar(15) not null,
	mensalidade decimal default 0,
	matricula_valida bool default true
);

-- alter table alunos
-- add column teste varchar(20);


-- Tabela professores
create table professores(
	id serial primary key,
	nome varchar(50) not null,
	cpf varchar(14) unique,
	email varchar(100) unique not null,
	senha varchar(15) not null,
	salario decimal default 1080
);


-- alter
-- Como adicionar uma coluna?
alter table professores
add column data_contratacao date;

-- Adicionar coluna com o valor da data de hoje para todas as linhas já existentes;
alter table professores
add column data_contratacao date default current_date;

alter table professores
drop column data_contratacao;

alter table novo_professores rename to professores;
