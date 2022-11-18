USE cinema_selects_activity;

# EXERCÍCIO 01

SELECT Nome_ator FROM tbl_ator WHERE Nome_ator LIKE 'A%';

# EXERCÍCIO 02

SELECT Nome_Filme, MAX(duracao) Maior_Duração FROM tbl_filme;

# EXERCÍCIO 03

SELECT Nome_filme, MIN(duracao) Menor_duracao, ano_lancamento FROM tbl_Filme WHERE duracao = (SELECT MIN(duracao) FROM tbl_Filme) AND ano_lancamento >= 2000 AND ano_lancamento <= 2010;

# EXERCÍCIO 04

SELECT Nome_filme, FK_id_genero FROM tbl_filme WHERE FK_id_Genero = 2;

# EXERCÍCIO 05 

SELECT Nome_filme, ano_lancamento, FK_id_genero FROM tbl_filme WHERE Ano_lancamento > 2010 AND FK_id_Genero = 4;                                                          

# EXERCÍCIO 06

SELECT ano_lancamento, Nome_filme FROM tbl_filme ORDER BY Ano_lancamento DESC, Nome_filme ASC;

# EXERCÍCIO 07

SELECT SUM(duracao) Duracao_Total FROM tbl_filme WHERE Ano_lancamento >= 2010 AND Ano_lancamento <= 2018 AND FK_id_Genero = 6; 

# EXERCÍCIO 08

SELECT count(*) Total_de_Filmes_Lancados FROM tbl_filme WHERE Ano_lancamento < 2000;

# EXERCÍCIO 09

SELECT avg(duracao) Media FROM tbl_filme WHERE Ano_lancamento > 2000;

# EXERCÍCIO 10

SELECT FK_id_genero, count(*) Total_Filmes FROM tbl_filme GROUP BY FK_id_Genero;

# EXERCÍCIO 11 

SELECT Nome_ator, Dt_nascimento FROM tbl_ator WHERE YEAR (Dt_nascimento) > 1960 AND YEAR (Dt_nascimento) < 1980 ORDER BY Nome_ator ASC;

# EXERCÍCIO 12

#Mais velho
SELECT * FROM tbl_ator WHERE dt_nascimento = (SELECT MIN(dt_nascimento) FROM tbl_ator);

#Mais novo
SELECT * FROM tbl_ator WHERE dt_nascimento = (SELECT MAX(dt_nascimento) FROM tbl_ator);

# EXERCÍCIO 13

SELECT ano_lancamento, COUNT(ano_lancamento) Filmes_Lancados FROM tbl_filme GROUP BY ano_lancamento;

# EXERCÍCIO 14

SELECT nacionalidade, COUNT(nacionalidade) Total_Diretores FROM tbl_diretor GROUP BY nacionalidade;

# EXERCÍCIO 15

SELECT FK_id_genero Genero_Filme, COUNT(FK_id_genero) Total_Filmes, SUM(duracao) Soma_Duracoes, AVG(duracao) Media_Duracao FROM tbl_filme GROUP BY FK_id_genero ORDER BY duracao ASC;

# EXERCÍCIO 16

SELECT Nome_filme FROM tbl_filme WHERE Nome_filme LIKE '%DE%' ORDER BY Nome_filme ASC;