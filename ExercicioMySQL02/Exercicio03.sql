#select01
SELECT * FROM alunos;

#select02
SELECT nome, nota_1 FROM alunos WHERE nota_1 > 9 ORDER BY nome, nota_1;

#select03
SELECT nome, nota_1,nota_2,nota_3,nota_4, ((nota_1 + nota_2 + nota_3 + nota_4)/4)  'Média' FROM alunos ORDER BY nome DESC;

#select04
SELECT nome, signo,COUNT(nome) FROM alunos WHERE signo LIKE '%peixes' order by nome, signo;

#select05
SELECT SUM(nota_1) FROM alunos;

#select06
SELECT AVG(nota_2) FROM alunos;

#select07
SELECT nome, nota_1 FROM alunos WHERE nota_1 = (SELECT MIN(nota_1) FROM alunos);

#select8
SELECT nome, nota_1, nota_2, nota_3, nota_4 FROM alunos WHERE nome = (SELECT max(nome) FROM alunos) ORDER BY nome, nota_1, nota_2, nota_3, nota_4;

#select09
SELECT nome, cor_preferida, COUNT(cor_preferida)'Quantidade de alunos' FROM alunos WHERE cor_preferida LIKE 'Gelo' ORDER BY nome, cor_preferida;

#select10
SELECT nome FROM alunos WHERE nome LIKE 'Francisco%' ORDER BY nome;

#select11
SELECT nome FROM alunos WHERE nome LIKE '%Luc%' ORDER BY nome;

#select12
SELECT nome, signo, data_nascimento FROM alunos WHERE signo LIKE '%Aries%' ;

#select 13
SELECT nota_1, nota_2, nota_3, nota_4 FROM alunos WHERE (nota_1 + nota_2 + nota_3 + nota_4)/4 = 
(SELECT MAX((nota_1 + nota_2 + nota_3 + nota_4)/4) FROM alunos);

#select 14
SELECT nome'Nome', nota_1, nota_2, nota_3, nota_4,(nota_1 + nota_2 + nota_3 + nota_4)/4, 
IF ( (nota_1 + nota_2 + nota_3 + nota_4)/4 < 5, 'Reprovado',
IF ( (nota_1 + nota_2 + nota_3 + nota_4)/4 < 7, 'Em exame','Aprovado')) 
FROM alunos 
WHERE ((nota_1 + nota_2 + nota_3 + nota_4)/4);


#select 15
SELECT nome, nota_1, nota_2, nota_3, nota_4 FROM alunos WHERE (nota_1 + nota_2 + nota_3 + nota_4)/4 = 
(SELECT MIN((nota_1 + nota_2 + nota_3 + nota_4)/4) FROM alunos);


#select 16
SELECT nome'Nome', nota_1, nota_2, nota_3, nota_4, CAST(((nota_1 + nota_2 + nota_3 + nota_4)/4) AS DECIMAL(5,2))'Média' FROM alunos 
WHERE ((nota_1 + nota_2 + nota_3 + nota_4)/4) > 7;

#select 17
SELECT nick FROM alunos WHERE length(nick) = 5 ORDER BY nome asc;

#select 18
SELECT nome 'Nome', nick 'Nick', cor_preferida 'Cor Preferida', CAST(((nota_1 + nota_2 + nota_3 + nota_4)/4) AS DECIMAL(5,2))'Média' FROM alunos 
WHERE cor_preferida LIKE 'Amarelo-Torrado' OR cor_preferida LIKE 'Ouro' AND ((nota_1 + nota_2 + nota_3 + nota_4)/4) > 6.5;

#select 19
SELECT data_nascimento 'Nascimento', YEAR(data_nascimento)'Ano de Nascimento' FROM alunos;

#select20
SELECT data_nascimento 'Nascimento', MONTH(data_nascimento)'Mês de Nascimento' FROM alunos;

#select21
SELECT nome, data_nascimento 'Nascimento', COUNT(data_nascimento LIKE '1996%') 'Ano de preferencia' FROM alunos;

#select 22
SELECT  COUNT(nome)'Nascimento entre as datas de 1964-02-02 ou 1994-02-02' 
FROM alunos WHERE data_nascimento = '1964-02-02' OR data_nascimento = '1994-02-02';

#select23
SELECT nome 'Nome',nick 'Nick', nota_4 'Nota 4' FROM alunos WHERE nota_2 BETWEEN 5 AND 5.99 ORDER BY nome asc; 

#select 24 
SELECT nome'Nome', nota_1, nota_2, nota_3, nota_4, CAST(((nota_1 + nota_2 + nota_3 + nota_4)/4) AS DECIMAL(5,2))'Média' FROM alunos 
WHERE nome LIKE 'Josefina%';

#select 25
SELECT nome'Nome', nota_1, nota_2, nota_3, nota_4, signo 'Signo' FROM alunos WHERE nome
LIKE 'Justino%' and signo LIKE 'A%' ;

#select 26
SELECT CAST(AVG((nota_1 + nota_2 + nota_3 + nota_4)/4) AS DECIMAL (5,2))'Média da média' FROM alunos;



















