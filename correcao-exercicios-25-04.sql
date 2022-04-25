-- 1) Alunos maior de idade em ordem crescente de nome;

select * from alunos
where maior_idade = true
order by nome;

-- 2) Alunos menor de idade em ordem decrescente de nome;

select * from alunos
where maior_idade = false
order by nome desc;

-- 3) Alunos que o nome começam com N;

select * from alunos
where nome like 'N%';

-- 4) Alunos que tem a letra T no nome;

select * from alunos
where upper(nome) like '%T%';

-- 5) Alunos que moram na Av Paulista;

select * from alunos
where lower(endereco) like '%av paulista%';

-- 6) Alunos que tem mensalidade entre 1000 e 3000 em ordem crescente de nome;

select * from alunos
-- where mensalide >= 1000 and mensalidade <= 3000
where mensalidade between 1000 and 3000
order by nome;

--select * from alunos
--where (endereco like '%Av Paulista%' or endereco like '%Bela Cintra%')
--and mensalidade > 1000;

-- 7)  Alunos que tem mensalidade entre 100 e 1000 em ordem decrescente de id;

select * from alunos
where mensalidade between 100 and 1000
-- where mensalidade >= 100 and mensalidade <= 1000
order by id desc;

-- 8) Alunos que tem mensalidade entre 500 e 3000 e também tenham idade entre 20 e 30 anos.

select * from alunos
where (mensalidade >= 500 and mensalidade <= 3000)
and (idade >= 20 and idade <= 30);

select * from alunos
where mensalidade between 500 and 3000
and idade between 20 and 30;

--alter table alunos
--add column idade integer;
