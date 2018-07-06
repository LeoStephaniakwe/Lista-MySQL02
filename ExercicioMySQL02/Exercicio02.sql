#select 00
SELECT * FROM cidades;

#select 01
SELECT estado, cidade FROM cidades;

#select02
SELECT cidade FROM cidades WHERE cidade LIKE 'A%';

#select03
SELECT cidade FROM cidades WHERE cidade LIKE '%apar%';

#select04
SELECT cidade FROM cidades WHERE cidade LIKE 'W%' ORDER BY cidade ASC;

#select05
SELECT cidade, estado FROM cidades WHERE cidade LIKE '%tuba' ORDER BY cidade, estado ASC;

#select06
SELECT cidade FROM cidades WHERE length(cidade)>15 ORDER BY length(cidade) DESC;

#select07
SELECT estado, COUNT(cidade) FROM cidades WHERE estado LIKE 'sc';

#select08
SELECT estado, COUNT(cidade) FROM cidades WHERE estado LIKE 'sp';

#select09
SELECT cidade FROM cidades WHERE cidade = 10;	