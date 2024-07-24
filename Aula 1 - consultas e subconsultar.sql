
-- SELECIONA TODOS OS ATRIBUTOS DA TABELA ACTOR
SELECT * FROM actor;

-- SELECIONE ATOR ID , PRIMEIRO NOME, ULTIMO NOME ONDE O PRIMEIRO NOME DO ATOR FOR 'JOE'
SELECT actor_id, first_name FROM actor 
WHERE first_name = 'Joe';

-- SELECIONE OS NOMES DE TODOS OS AUTORES 
SELECT first_name, last_name FROM actor;

-- CONCAT ou (o espaço separa as duas junções) AS ( nomeada essa nova coluna que foi concatenada)
SELECT CONCAT(first_name, '', last_name) AS fullName
FROM actor;


-- SELECIONE OS PAISES E O ID DOS PAISES FEGANISTAO, BANGLADESH E CHINA
SELECT * FROM country;

SELECT country_id, country FROM country
WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

-- SELECIONEOS TODOS OS DADOS DO ATOR WILLIAMS
SELECT * FROM actor;

SELECT actor_id, first_name, last_name, last_update FROM actor 
WHERE last_name = 'Williams';

-- SELECIONE TUDO DA TAEELA FILMES
SELECT * FROM film;

-- SELECIONE O TITULO, A DESCRIÇÃO E AS CONDIÇÕES ESPECIAIS DS FILMES QUE NAÕ TEM CENAS DELETADAS
SELECT title, description, special_features FROM film
WHERE special_features not in ('Deleted Scenes');

SELECT title, description, special_features FROM film
WHERE special_features not like '%Deleted Scenes%';

-- SELECIONE TUDO DO FILME UNDEFEATED DALMATIONS
SELECT * FROM film;

SELECT * FROM film
WHERE title = 'Undefeated Dalmations';

-- SELECIONE  O NOME DE TODOS OS ATORES EM ORDEM ALFABETICA 
-- CRESCENTE
SELECT concat(first_name, ' ', last_name) AS NomeCompleto
FROM actor
ORDER BY NomeCompleto ASC;

-- DECRESCENTE
SELECT concat(first_name, ' ', last_name) AS NomeCompleto
FROM actor
ORDER BY NomeCompleto DESC;
 
SELECT concat(first_name, ' ', last_name) AS NomeCompleto
FROM actor
ORDER BY NomeCompleto ASC
LIMIT 30;
