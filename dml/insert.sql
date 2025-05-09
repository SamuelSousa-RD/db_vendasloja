--FORMAS DE PAGAMENTO
INSERT INTO formas_pagamento (descricao) VALUES 
('Dinheiro'),
('Cartão de Crédito'),
('Cartão de Débito'),
('Pix'),
('Boleto'),
('Transferência'),
('Vale Compra'),
('Cheque'),
('Crédito Loja'),
('PayPal');

--CLIENTES
INSERT INTO clientes (nome, email, telefone, endereco, cpf) VALUES
('João Silva', 'joao.silva@email.com', '86999990001', 'Rua A, 123', '12345678901'),
('Maria Souza', 'maria.souza@email.com', '86999990002', 'Rua B, 456', '23456789012'),
('Pedro Lima', 'pedro.lima@email.com', '86999990003', 'Rua C, 789', '34567890123'),
('Ana Paula', 'ana.paula@email.com', '86999990004', 'Rua D, 321', '45678901234'),
('Carlos Mendes', 'carlos.mendes@email.com', '86999990005', 'Rua E, 654', '56789012345'),
('Luciana Rocha', 'luciana.rocha@email.com', '86999990006', 'Rua F, 987', '67890123456'),
('Fernando Alves', 'fernando.alves@email.com', '86999990007', 'Rua G, 147', '78901234567'),
('Patrícia Gomes', 'patricia.gomes@email.com', '86999990008', 'Rua H, 258', '89012345678'),
('Rafael Costa', 'rafael.costa@email.com', '86999990009', 'Rua I, 369', '90123456789'),
('Juliana Torres', 'juliana.torres@email.com', '86999990010', 'Rua J, 741', '01234567890');

--PRODUTOS
INSERT INTO produtos (nome, descricao, preco, ativo) VALUES
('Caneta Azul', 'Caneta esferográfica azul', 2.50, TRUE),
('Lápis HB', 'Lápis preto nº2', 1.20, TRUE),
('Caderno 10M', 'Caderno com 200 folhas', 15.00, TRUE),
('Régua 30cm', 'Régua plástica', 3.00, TRUE),
('Apontador', 'Apontador com depósito', 2.00, TRUE),
('Borracha', 'Borracha branca escolar', 1.50, TRUE),
('Mochila Escolar', 'Mochila reforçada', 80.00, TRUE),
('Marca Texto', 'Caneta marca texto amarela', 3.50, TRUE),
('Cola Branca', 'Cola branca escolar 90g', 4.00, TRUE),
('Tesoura Escolar', 'Tesoura sem ponta', 5.00, TRUE);

--PEDIDOS
INSERT INTO pedidos (id_cliente, id_pagamento, data_pedido, status) VALUES
(1, 1, '2025-05-01', 'Finalizado'),
(2, 2, '2025-05-01', 'Finalizado'),
(3, 3, '2025-05-02', 'Em processamento'),
(4, 4, '2025-05-02', 'Finalizado'),
(5, 5, '2025-05-03', 'Cancelado'),
(6, 6, '2025-05-03', 'Finalizado'),
(7, 1, '2025-05-04', 'Em processamento'),
(8, 2, '2025-05-04', 'Finalizado'),
(9, 3, '2025-05-05', 'Finalizado'),
(10, 4, '2025-05-05', 'Finalizado');

--ITENS_PEDIDO
INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 2, 2.50),
(1, 2, 3, 1.20),
(2, 3, 1, 15.00),
(2, 4, 2, 3.00),
(3, 5, 1, 2.00),
(4, 6, 2, 1.50),
(5, 7, 1, 80.00),
(6, 8, 1, 3.50),
(7, 9, 2, 4.00),
(8, 10, 1, 5.00),
(9, 3, 2, 15.00),
(10, 1, 1, 2.50);

--ESTOQUE
INSERT INTO estoque (id_produto, quantidade, data_movimentacao, tipo_movimento) VALUES
(1, 100, '2025-04-28', 'ENTRADA'),
(2, 150, '2025-04-28', 'ENTRADA'),
(3, 50, '2025-04-29', 'ENTRADA'),
(4, 70, '2025-04-29', 'ENTRADA'),
(5, 60, '2025-04-30', 'ENTRADA'),
(6, 80, '2025-04-30', 'ENTRADA'),
(7, 30, '2025-05-01', 'ENTRADA'),
(8, 90, '2025-05-01', 'ENTRADA'),
(9, 120, '2025-05-02', 'ENTRADA'),
(10, 40, '2025-05-02', 'ENTRADA'),
(1, 2, '2025-05-01', 'SAIDA'),
(3, 2, '2025-05-05', 'SAIDA');
