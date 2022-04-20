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
