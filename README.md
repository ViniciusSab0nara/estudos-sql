# estudos-sql
# 📘 Estudos SQL – Rumo ao nível avançado.

Este repositório acompanha minha jornada de aprendizado em SQL, com foco em me tornar um profissional da área de dados. O conteúdo está dividido por blocos de conhecimento e contém:

- Exercícios resolvidos e comentados
- Resumos dos comandos aprendidos
- Correções de erros e insights
- Datasets simples para praticar

---

## 📌 Fundamentos de SELECT

### ✅ Tópicos Estudados:
- `SELECT` (estrutura e sintaxe)
- `WHERE` (filtrando linhas)
- `ORDER BY` (ordenando resultados)
- `LIMIT` (limitando quantidade de linhas)

### 🧪 Práticas:
- Selecionar nome e idade dos alunos
- Filtrar por cidade ou faixa etária
- Ordenar por idade decrescente
- Mostrar apenas os 3 primeiros resultados

### 💡 Observações:
- Entendi que as colunas do SELECT viram colunas no resultado
- Usei `ORDER BY 2` para ordenar pela 2ª coluna do SELECT
- Combinei `ORDER BY + LIMIT` para simular rankings

---

## 📌 Funções Agregadas e Agrupamento

### ✅ Tópicos Estudados:
- `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY` (agrupando registros)
- `HAVING` (filtrando grupos)

### 🧪 Práticas:
- Contar alunos por cidade
- Calcular média de idade por cidade
- Filtrar cidades com média > 20 anos
- Mostrar cidades com pelo menos 2 alunos e soma das idades > 40

### 💡 Observações:
- `HAVING` é o “WHERE dos agrupamentos”
- Aprendi a ordem correta das cláusulas: `FROM → WHERE → GROUP BY → HAVING → ORDER BY → LIMIT`

---

## 📌 Subconsultas, Comparações e DISTINCT

### ✅ Tópicos Estudados:
- Subconsultas simples e correlacionadas
- Comparações com `AVG()` e `MAX()` em `WHERE`
- `DISTINCT` e `COUNT(DISTINCT ...)`

### 🧪 Práticas:
- Alunos com idade menor que a média geral
- Alunos com a maior idade de suas cidades
- Contar cidades únicas
- Combinações únicas de cidade e idade

### 💡 Observações:
- Subconsultas correlacionadas “rodam por linha” e precisam de apelidos como `a` e `b`
- `DISTINCT` funciona para combinações de colunas, não só valores únicos isolados

---

## 📂 Datasets

- `alunos.csv` – usado para simular consultas com nome, idade e cidade
- (Em breve: vendas, produtos, livros...)

---

## 🧰 Ferramentas Usadas
- [x] GitHub
- [x] MySQL 
- [x] VS Code 

---

📌 *Este repositório faz parte da minha trilha de aprendizado rumo à carreira em dados. Todo progresso é documentado com intenção de aprendizado real e crescimento profissional.*
