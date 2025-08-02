
SELECT * FROM alunos;
SELECT nome, idade FROM alunos;
SELECT nome, cidade FROM alunos WHERE cidade = 'São Paulo';
SELECT nome FROM alunos WHERE idade > 18;
SELECT nome FROM alunos WHERE idade BETWEEN 18 AND 25;
SELECT nome FROM alunos WHERE cidade IN ('São Paulo', 'Rio de Janeiro');


SELECT nome, idade FROM alunos ORDER BY idade DESC;
SELECT nome FROM alunos ORDER BY nome ASC LIMIT 5;
SELECT * FROM vendas ORDER BY valor DESC LIMIT 10;


SELECT COUNT(*) FROM alunos;
SELECT AVG(idade) FROM alunos;
SELECT MAX(idade), MIN(idade) FROM alunos;
SELECT SUM(valor) FROM vendas;


SELECT cidade, COUNT(*) AS total_alunos
FROM alunos
GROUP BY cidade;

SELECT cidade, AVG(idade) AS media_idade
FROM alunos
GROUP BY cidade
HAVING COUNT(*) > 3;

SELECT produto, SUM(valor) AS total_vendas
FROM vendas
GROUP BY produto
HAVING SUM(valor) > 1000;

SELECT curso, COUNT(*) AS total
FROM alunos
GROUP BY curso
ORDER BY total DESC;


SELECT nome FROM alunos WHERE idade > 18 AND cidade = 'Curitiba';
SELECT * FROM alunos WHERE idade < 20 OR cidade = 'Salvador';
SELECT * FROM produtos WHERE preco BETWEEN 10 AND 50;
SELECT * FROM produtos WHERE nome LIKE '%notebook%';

-- 🟪 SUBQUERIES
SELECT nome FROM alunos
WHERE idade = (SELECT MAX(idade) FROM alunos);

SELECT nome FROM alunos
WHERE cidade IN (
  SELECT cidade FROM alunos GROUP BY cidade HAVING COUNT(*) > 5
);


SELECT nome AS aluno, idade AS anos FROM alunos;

SELECT produto, ROUND(AVG(valor), 2) AS media_vendas
FROM vendas
GROUP BY produto;

-
SELECT produto, COUNT(*) AS qtd_vendas
FROM vendas
GROUP BY produto
ORDER BY qtd_vendas DESC;

SELECT cliente_id, SUM(valor) AS receita_total
FROM vendas
GROUP BY cliente_id;

SELECT cliente_id
FROM vendas
GROUP BY cliente_id
HAVING SUM(valor) > 500;


SELECT * FROM vendas WHERE data >= '2024-01-01';

SELECT MONTH(data) AS mes, SUM(valor) AS total_vendas
FROM vendas
GROUP BY MONTH(data);

SELECT cliente_id, COUNT(*) AS compras_mes
FROM vendas
WHERE data BETWEEN '2025-07-01' AND '2025-07-31'
GROUP BY cliente_id;

--  
SELECT cidade, AVG(idade) AS media_idade
FROM alunos
GROUP BY cidade
HAVING COUNT(*) > 5
ORDER BY media_idade DESC
LIMIT 3;

SELECT produto, AVG(valor) AS media_faturamento
FROM vendas
GROUP BY produto
HAVING AVG(valor) > 100;

SELECT nome, idade, cidade
FROM alunos
WHERE idade BETWEEN 20 AND 30
  AND cidade IN ('São Paulo', 'Curitiba', 'Recife');

SELECT produto, COUNT(*) AS total_vendas
FROM vendas
GROUP BY produto
ORDER BY total_vendas DESC
LIMIT 5;

SELECT cliente_id,
       SUM(valor) AS total_gasto,
       AVG(valor) AS media_gasto
FROM vendas
GROUP BY cliente_id
ORDER BY total_gasto DESC;

SELECT MONTH(data) AS mes, SUM(valor) AS total_vendas
FROM vendas
GROUP BY MONTH(data)
ORDER BY mes;

SELECT nome, idade
FROM alunos
WHERE idade > (
  SELECT AVG(idade) FROM alunos
);
