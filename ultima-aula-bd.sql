
select * from carros where ano = 2020;

-- aggregate functions

-- count()

select count(*) from carros;

select count(*) as qtd_carros from carros;

select count(*) as qtd_carros from carros
where ano = 2020;

select count(*) as qtd_carros from carros
where ano = 2019;

select count(*) as qtd_carros from carros
where preco > 60000;

select count(*) from usuarios
where senha = '123456';

select count(*) as qtd_marcas from marcas;

select count(*) as qtd_carros from carros c
inner join marcas m on c.cod_marca = m.cod
where m.nome like '%Chevrolet%';

select count(*) as qtd_carros from carros c
inner join marcas m on c.cod_marca = m.cod
where m.nome like '%Renault%';

select count(*) as qtd_carros from carros
where preco >= 150000;

-- SUM, AVG, MIN, MAX, COUNT

-- MIN(Menor valor de uma coluna)

select min(preco) from carros;
select min(preco) as menor_preco from carros;
select * from carros;
select min(preco) from carros
where preco > 40000 and preco <= 80000;

select * from carros
where ano = 2019;
select min(preco) as menor_preco from carros
where ano = 2019;

alter table usuarios
add column mensalidade decimal default 0;

select min(mensalidade) from usuarios;

select min(ano) from carros;

select  min(ano) as menor_ano,
		count(*) as qtd_carros,
		min(preco) as menor_valor 
		from carros;
		
select max(ano) as maior_ano,
	   max(preco) as maior_preco,
	   min(ano) as menor_ano,
	   min(preco) as menor_preco,
	   count(*) from carros;
	   
select max(mensalidade),
	   min(mensalidade) from usuarios;

-- SUM

select sum(preco) as valor_total from carros;

select sum(mensalidade) as valor_total from usuarios;

select sum(preco) from carros where cod_marca = 201;
select sum(preco) from carros where cod_marca = 202;
select sum(preco) from carros where cod_marca = 203;
select sum(preco) from carros where cod_marca = 204;

select max(ano) as maior_ano,
	   max(preco) as maior_preco,
	   min(ano) as menor_ano,
	   min(preco) as menor_preco,
	   count(*) as qtd_carro,
	   sum(preco) as valor_total,
	   avg(preco) as media_preco from carros;
	  
-- AVG
	  
-- AVERAGE(Média)

select avg(preco) from carros;
select * from carros;
select avg(mensalidade) from usuarios;
select * from usuarios;

select sum(preco) from carros where cod_marca = 201;
select sum(preco) from carros where cod_marca = 202;
select sum(preco) from carros where cod_marca = 203;
select sum(preco) from carros where cod_marca = 204;

select * from carros where cod_marca = 201;


select cod_marca,
		sum(preco) as valor_total,
		avg(preco) as media_valor,
		count(*) as qtd_carros from carros
group by cod_marca;

select * from carros c
inner join marcas m on c.cod_marca = m.cod;

select  m.cod,
		m.nome,
		sum(c.preco) as valor_total,
		avg(c.preco) as media_valor,
		count(*) as qtd_carros from carros c
inner join marcas m on c.cod_marca = m.cod
group by m.cod
order by m.cod;

select ano, sum(preco), avg(preco), count(*) from carros
group by ano;

select u.id, u.nome, sum(preco), avg(preco), count(*) from carros c
inner join usuarios u on c.id_usuario = u.id
group by u.id;

select modelo, sum(preco), avg(preco), count(*) from carros
group by modelo;

-- HAVING

select modelo, sum(preco), avg(preco), count(*) from carros
group by modelo
having count(*) >= 2;

select modelo, sum(preco), avg(preco), count(*) from carros
group by modelo
having sum(preco) > 130000;

select ano, sum(preco), avg(preco), count(*), min(preco), max(preco)
from carros
group by ano
having min(preco) > 38000;

select u.id, u.nome, sum(preco), avg(preco), count(*) from carros c
inner join usuarios u on c.id_usuario = u.id
group by u.id
having count(*) > 2;
