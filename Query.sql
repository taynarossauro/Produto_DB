-- 1. Quantidade de produtos cadastrados
-- Esta consulta retorna o total de produtos cadastrados na tabela Produtos.
SELECT COUNT(*) AS total_produtos FROM Produtos;

-- 2. Preço médio dos produtos
-- Esta consulta calcula o preço médio de todos os produtos.
SELECT AVG(preco) AS preco_medio FROM Produtos;

-- 3. Preço médio dos produtos agrupados por perecíveis e não perecíveis
-- Esta consulta calcula o preço médio dos produtos, agrupados em duas categorias: perecíveis e não perecíveis.
SELECT perecivel, AVG(preco) AS preco_medio
FROM Produtos
GROUP BY perecivel;

-- 4. Preço médio dos produtos agrupados pelo nome do produto
-- Esta consulta calcula o preço médio de cada produto, agrupados pelo nome.
SELECT nome, AVG(preco) AS preco_medio
FROM Produtos
GROUP BY nome;

-- 5. Preço médio e total em estoque dos produtos
-- Esta consulta calcula o preço médio dos produtos e o total de itens em estoque.
SELECT AVG(preco) AS preco_medio, SUM(estoque) AS total_estoque
FROM Produtos;

-- 6. Nome, marca e quantidade em estoque do produto mais caro
-- Esta consulta retorna o nome, marca e quantidade em estoque do produto com o preço mais alto.
SELECT nome, marca, estoque
FROM Produtos
ORDER BY preco DESC
LIMIT 1;

-- 7. Produtos com preço acima da média
-- Esta consulta retorna os produtos cujo preço é maior que o preço médio de todos os produtos.
SELECT nome, preco
FROM Produtos
WHERE preco > (SELECT AVG(preco) FROM Produtos);

-- 8. Quantidade de produtos por nacionalidade
-- Esta consulta retorna a quantidade de produtos agrupados por nacionalidade.
SELECT nacionalidade, COUNT(*) AS total_produtos
FROM Produtos
GROUP BY nacionalidade;
