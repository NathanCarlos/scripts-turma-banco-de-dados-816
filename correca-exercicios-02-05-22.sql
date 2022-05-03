drop table produtos;
drop table usuarios;

truncate table categorias restart identity CASCADE;
truncate table produtos restart identity ;


create table categorias(
	id serial primary key,
	nome varchar(50),
	ativa boolean default true
);

create table produtos(
	id serial primary key,
	id_categoria integer references categorias(id),
	descricao varchar(100),
	preco decimal,
	url_imagem text
);

select * from categorias;
select * from produtos;

insert into categorias values
(default, 'Informática', default),
(default, 'Telefonia', default),
(default, 'Games', default),
(default, 'Tv, Áudio e Vídeo', default),
(default, 'Impressão e Imagem', default);


insert into produtos values
(default, 1, 'SSD 128GB', 300),
(default, 1, 'SSD 256GB', 500),
(default, 1, 'KIT TECLADO E MOUSE', 600),
(default, 3, 'PLAYSTATION 3', 1500),
(default, 2, 'SAMSUNG A51', 2500),
(default, 4, 'TELEVISÃO LG 55"', 3000),
(default, 3, 'PLAYSTATION 3 1TB', 1500),
(default, 2, 'SAMSUNG S9', 2500),
(default, 2, 'IPHONE 8', 2500),
(default, 2, 'IPHONE 9', 3000),
(default, 2, 'IPHONE X', 4000),
(default, 4, 'TELEVISÃO SAMSUNG 32"', 1000),
(default, 4, 'TELEVISÃO SAMSUNG 48"', 3000),
(default, 3, 'PLAYSTATION 4 1TB', 2800),
(default, 3, 'PLAYSTATION 5 1TB', 5000),
(default, 1, 'Teclado Razer Gamer', 250),
(default, 1, 'Fone de ouvido hyperx', 170),
(default, 1, 'Mouse Gamer Razer', 90),
(default, 1, 'Mouse Gamer Razer 2400', 200),
(default, null, 'Mouse Gamer', 280),
(default, null, 'Teclado Gamer', 390);

-- Exercício 1)

select * from produtos p
inner join categorias c on p.id_categoria = c.id;

-- Exercício 2)

select * from produtos p
left join categorias c on p.id_categoria = c.id;

-- Exercício 3)

select * from produtos p
right join categorias c on p.id_categoria = c.id;

-- Exercício 4)

select * from produtos p
full join categorias c on p.id_categoria = c.id;

-- Exercício 5)

select * from categorias c
inner join produtos p on p.id_categoria = c.id
where c.id = 1;

-- Exercício 6)

select * from categorias c
inner join produtos p on p.id_categoria = c.id
where c.id = 2
order by p.descricao;

-- Exercício 7)
select * from categorias c
inner join produtos p on p.id_categoria = c.id
where c.id = 3;

-- Exercício 8)
select * from categorias c
inner join produtos p on p.id_categoria = c.id
where c.id = 4;

-- Exercício 9)

select * from categorias c
inner join produtos p on p.id_categoria = c.id
order by c.id;

-- Exercício 10)

select * from produtos p
inner join categorias c on p.id_categoria = c.id
order by p.descricao;

-- Exercício 11)

select * from categorias c
inner join produtos p on p.id_categoria = c.id
where preco < 400 and c.id = 1
order by preco;

-- Exercício 12)

select * from categorias c
inner join produtos p on p.id_categoria = c.id
where c.id = 3 and (p.preco > 1600 and p.preco < 3000)
order by p.preco desc;
