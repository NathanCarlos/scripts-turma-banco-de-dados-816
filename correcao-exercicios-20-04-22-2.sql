create database sistema_escola;

create table alunos(
	id serial primary key,
	nome varchar(100),
	email varchar(255),
	endereco varchar(255),
	mensalidade decimal,
	maior_idade bool
);

select * from alunos;

drop table alunos;

-- Query 1
select * from alunos where maior_idade = true;

-- Query 2
select * from alunos where maior_idade = false;

-- Query 3
select * from alunos where mensalidade > 300;

-- Query 4
select * from alunos where mensalidade < 300;

-- Query 5
select * from alunos limit 5;

-- Query 6
select 
	id,
	nome as name,
	email,
	endereco as address,
	mensalidade as montlhy_payment,
	maior_idade as older_age
	from alunos;
