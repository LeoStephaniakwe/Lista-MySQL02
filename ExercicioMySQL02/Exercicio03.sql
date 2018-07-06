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
SELECT nome, MIN(nota_1) FROM alunos WHERE nota_1 = (SELECT MIN(nota_1) FROM alunos);

#select98
SELECT nome, nota_1, nota_2, nota_3, nota_4 FROM alunos WHERE nome = (SELECT max(nome) FROM alunos) ORDER BY nome, nota_1, nota_2, nota_3, nota_4;

#select09
SELECT nome, cor_preferida, COUNT(cor_preferida)'Quantidade de alunos' FROM alunos WHERE cor_preferida LIKE 'Gelo' ORDER BY nome, cor_preferida;

#select10
SELECT nome FROM alunos WHERE nome LIKE 'Francisco%' ORDER BY nome;