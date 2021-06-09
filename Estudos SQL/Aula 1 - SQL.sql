
--comando para criação banco de dados
CREATE DATABASE TESTE;

--comando para acessar banco criado
USE TESTE;

--comando para criar tabela CREATE TABLE <NOME DA TABELA>(ATRIBUTO 1, ATRIBUTO 2,..);
CREATE TABLE ALUNO (
	RA INT,
	NOME VARCHAR(50),
	TELEFONE BIGINT
	);

--comando para alterar a tabela ALUNO e incluir uma nova coluna
ALTER TABLE ALUNO 
ADD ENDERECO VARCHAR (50);
	

--comando para excluir uma coluna em uma tabela 
ALTER TABLE ALUNO
DROP COLUMN ENDERECO;

--comando para excluir uma tabela
DROP TABLE ALUNO;

--comando para excluir um banco de dados
DROP DATABASE TESTE;

--comandos da DML (INSERT, UPDATE, DELETE E SELECT)
--selecionar para visualizar a tabela aluno
SELECT * FROM ALUNO; --comando para visualizar todas as linhas e colunas da tabela ALUNO

--comando para inserção de dados na tabela ALUNO
--INSERT INTO <NOME DA TABELA> <LISTA DE ATRIBUTOS> VALUES (<VALOR1, VALOR2,..>)
INSERT INTO ALUNO (RA, NOME, TELEFONE, ENDERECO) 
VALUES (21460929, 'Nathan Dantas', 961934058, 'Rua Minna Walendy, 118'); 

INSERT INTO ALUNO (RA, NOME) 
VALUES (21462477, 'Eduardo Nardoni'); 

INSERT INTO ALUNO
VALUES (20668773, 'Pedro Henrique', 990213777, 'Avenida Paulista, 1028'),
	   (21298637, 'Bruno Gallo', 955545410, 'Avenida Goiás, 530'),
	   (21424215, 'Eliel Andrade', 974885658, 'Vila das Belezas, 289'),
	   (21436797, 'José Carlos', 964474222, 'Vila Mariana, 487');
		
--comando para excluir linha
DELETE FROM ALUNO
WHERE RA=21456324;

--selecionar na tabela aluno o aluno nome José Carlos
SELECT * FROM ALUNO
WHERE NOME = 'José Carlos';

--comando para atualizar registros na tabela
UPDATE ALUNO
SET ENDERECO = 'Rua das Laranjeiras, 765'
WHERE NOME = 'Pedro Henrique';

UPDATE ALUNO
SET ENDERECO = 'Rua das matrizes, 432'
WHERE NOME = 'Eduardo Nardoni';

--comando para selecionar nome e ra da tabela ALUNO
SELECT NOME, RA FROM ALUNO;
SELECT * FROM ALUNO;

--comando para selecionar nome e ra da tabela ALUNO, mas somente onde o nome do aluno for igual a Pedro Henrique
SELECT NOME, RA FROM ALUNO
WHERE NOME = 'Pedro Henrique';
