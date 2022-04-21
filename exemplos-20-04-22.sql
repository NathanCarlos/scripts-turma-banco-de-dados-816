-- Consulta simples
-- SELECT

select * from produtos; -- Query

select * from usuarios; -- Query

select categoria, quantidade, preco, descricao from produtos;
select nome, idade from usuarios;

select nome as name, idade as age from usuarios;
select 
	categoria as category,
	quantidade as quantity,
	preco as price,
	descricao as description
from produtos;

-- CLAUSULA WHERE
-- OPERADORES DE COMPARAÇÃO(>, <, >=, <=, =, LIKE, NOT NULL, IN)
-- Operadores AND(&&), OR(||) 
select * from produtos;

select * from produtos where quantidade > 3;
select * from produtos where quantidade >= 3;

select * from produtos where preco < 300;

select * from produtos where categoria = 'Informática';

select * from produtos limit 2;

select * from produtos where quantidade >= 3 limit 1;

select * from usuarios where acesso_permitido = false;

-- Operadores(LIKE, AND(&&), OR(||)) -> IN, NOT NULL(Utilizado como palavra reservada na consulta)
-- Ordenação com ORDER BY

select * from produtos where imagem_produto is not null;

select * from produtos where id = 3 or id = 5 or id = 1;

select * from produtos where id > 3;

select * from produtos where id in (3, 5, 1);

select * from produtos where preco in (100, 180);

-- % atrás, busca no texto os caracteres que começam com eles.
-- % na frente, busca no texto os caracteres que finalizam com eles.
select * from produtos where descricao like '%Razer';
select * from produtos where descricao like 'M%';
select * from produtos where descricao like '%gamer%';
select * from produtos where UPPER(descricao) like UPPER('%gamer%');

-- AND

select * from produtos where preco >= 100 and quantidade > 3;

-- Ordenação Crescente(Menor para o maior)(ASC)
select * from produtos order by quantidade;
-- Ordenação Decrescente(Maior para o menor)(DESC)
select * from produtos order by quantidade desc;

select * from produtos
where preco > 200
order by preco desc;

select * from produtos order by descricao;

select * from produtos order by preco, quantidade;
