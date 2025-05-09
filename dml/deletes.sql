--Excluir movimentações de estoque vazio
DELETE FROM estoque
WHERE quantidade = 0;

--Cliente que nunca fez pedidos
DELETE FROM clientes
WHERE id_cliente NOT IN (SELECT id_cliente FROM pedidos);

--Produto inativo e sem pedidos
DELETE FROM produtos
WHERE ativo = FALSE
AND id_produto NOT IN (SELECT id_produto FROM itens_pedido);

--Forma de pagamento que não foi usada em nenhum pedido
DELETE FROM formas_pagamento
WHERE id_pagamento NOT IN (SELECT id_pagamento FROM pedidos);
