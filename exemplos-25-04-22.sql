-- CRUD(Create, read, update e delete)

select * from produtos;

-- 1° Forma - Definindo colunas

insert into produtos(categoria, descricao, quantidade, preco)
values ('Telefonia', 'Iphone 12', 5, 5200);

insert into produtos(categoria, descricao, quantidade, preco)
values
('Telefonia', 'Iphone 11', 2, 4800),
('Telefonia', 'Galaxy S21', 4, 2500),
('Informática', 'Notebook Gamer', 1, 5000);

insert into produtos(categoria, descricao, preco, quantidade)
values ('Telefonia', 'Iphone 12', 5200, 10),
('Telefonia', 'Iphone 12 256gb', 5400, 5);

-- 2° Forma - Sem definição de colunas no insert

insert into produtos values
(default, 'Telefonia', 'Galaxy A51', 3, 1500, null),
(default, 'Telefonia', 'Galaxy A31', 2, 1300, null);

-- UPDATE
update produtos set descricao = 'Galaxy A55', preco = 1800
where id = 16;

update produtos set quantidade = 1
where id = 17;

update produtos set descricao = 'Produto esgotado';

select * from produtos;

-- DELETE

delete from produtos;

delete from produtos where descricao = 'Produto esgotado';

delete from produtos where descricao like '%Iphone%';

truncate table produtos restart identity;
