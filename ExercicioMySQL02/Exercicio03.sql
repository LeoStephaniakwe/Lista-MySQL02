#select01
SELECT * FROM alunos;

#select02
SELECT nome, nota_1 FROM alunos WHERE nota_1 > 9 ORDER BY nome, nota_1;

#select03
SELECT nome, nota_1,nota_2,nota_3,nota_4, ((nota_1 + nota_2 + nota_3 + nota_4)/4)  'Média' FROM alunos;

#select04
SELECT nome, signo,COUNT(nome) FROM alunos WHERE signo LIKE '%peixes' order by nome, signo;

#select05
SELECT SUM(nota_1) FROM alunos;

#select06
SELECT AVG(nota_2) FROM alunos;

#select07
SELECT nome, MIN(nota_1) FROM alunos WHERE nota_1 = (SELECT MIN(nota_1) FROM alunos);
