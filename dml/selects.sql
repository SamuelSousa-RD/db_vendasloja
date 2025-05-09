--1)todos os pedidos com nome do cliente e descrição da forma de pagamento
SELECT pedidos.id_pedido, clientes.nome AS nome_cliente, formas_pagamento.descricao AS forma_pagamento,
       pedidos.data_pedido, pedidos.status
FROM pedidos
JOIN clientes ON pedidos.id_cliente = clientes.id_cliente
JOIN formas_pagamento ON pedidos.id_pagamento = formas_pagamento.id_pagamento;

--2) Lista de pedidos realizados após uma data específica
SELECT * FROM pedidos
WHERE data_pedido > '2025-05-01';

--3) clientes cujo nome começa com a letra L
SELECT * FROM clientes
WHERE nome LIKE 'L%';

--4) lista de produtos com preço entre R$10,00 e R$50,00
SELECT * FROM produtos
WHERE preco BETWEEN 10 AND 50;

--5) Quantidade total vendida de cada produto
SELECT produtos.nome, SUM(itens_pedido.quantidade) AS total_vendido
FROM itens_pedido
JOIN produtos ON itens_pedido.id_produto = produtos.id_produto
GROUP BY produtos.nome
ORDER BY total_vendido DESC;

--6) Total gasto por cliente (somando os itens dos pedidos)
SELECT clientes.nome AS nome_cliente, SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) AS total_gasto
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
JOIN itens_pedido ON pedidos.id_pedido = itens_pedido.id_pedido
GROUP BY clientes.nome;

--7) Clientes que realizaram menos de 2 pedidos
SELECT clientes.nome, COUNT(pedidos.id_pedido) AS total_pedidos
FROM clientes
JOIN pedidos ON clientes.id_cliente = pedidos.id_cliente
GROUP BY clientes.nome
HAVING COUNT(pedidos.id_pedido) < 2;

--8) Produtos que possuem movimentações de estoque
SELECT * FROM produtos
WHERE id_produto IN (SELECT id_produto FROM estoque);

--9 ) Quantidade total de pedidos por forma de pagamento
SELECT formas_pagamento.descricao, 
       COUNT(pedidos.id_pedido) AS total_pedidos
FROM pedidos
JOIN formas_pagamento ON pedidos.id_pagamento = formas_pagamento.id_pagamento
GROUP BY formas_pagamento.descricao
ORDER BY total_pedidos DESC;

--10) Total por pedido. 
SELECT pedidos.id_pedido, 
       SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) AS total_pedido
FROM pedidos
JOIN itens_pedido ON pedidos.id_pedido = itens_pedido.id_pedido
GROUP BY pedidos.id_pedido
ORDER BY total_pedido DESC;
