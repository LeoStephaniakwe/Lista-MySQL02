#select 01
select * from pokemons;

#select 02
select  ataque, especial_ataque, defesa, especial_defesa from pokemons;

#select 03
select nome, categoria, ataque from pokemons order by nome, ataque;

#select 04
select altura, peso, (peso/(altura*altura)) from pokemons;

#select 05
select altura, peso, (peso/(altura*altura)) from pokemons order by  altura, peso, (peso/(altura*altura)) desc;

#select 06
select nome, character_length(nome) from pokemons order by  nome desc;

#select 07
select nome, descricao from pokemons WHERE length(nome)>10;

#select 8
select nome, categoria, ataque from pokemons where ataque = (SELECT MIN(ataque) FROM pokemons) ORDER BY nome ASC;

#select 9
select nome,categoria, especial_ataque, defesa, especial_defesa from pokemons order by ataque asc;

#select 10
select avg (ataque) from pokemons order by nome;

#select 11
select sum(ataque) from pokemons;

#select 12
select avg (especial_ataque) from pokemons where nome like 'P%' order by nome;












	
