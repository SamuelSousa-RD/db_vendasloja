-- Atualizar o status de um pedido
UPDATE pedidos
SET status = 'Enviado'
WHERE id_pedido = 1;

-- Atualizar o preço de um produto
UPDATE produtos
SET preco = preco * 1.10 -- aumento de 10%
WHERE id_produto = 3;

-- Corrigir telefone de um cliente
UPDATE clientes
SET telefone = '86999990099'
WHERE email = 'maria@gmail.com';
