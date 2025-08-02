
WITH clientes_gasto AS (
    SELECT
        clientes.id_cliente,
        clientes.nome,
        SUM(itens_pedido.quantidade * itens_pedido.preco_unitario) as total_gasto
    FROM clientes
    JOIN pedidos ON pedidos.id_cliente = clientes.id_cliente
    JOIN itens_pedido ON itens_pedido.id_pedido = pedidos.id_pedido
    WHERE pedidos.status = 'Pago'
    GROUP BY clientes.id_cliente, clientes.nome
)
SELECT 
    nome,
    total_gasto,
    CASE
        WHEN total_gasto > 10000 THEN 'VIP'
        WHEN total_gasto BETWEEN 5000 AND 10000 THEN 'REGULAR'
        ELSE 'BASICO'
    END as status_cliente
FROM clientes_gasto
ORDER BY total_gasto DESC;




-- UNION: clientes com e sem pedido pago

SELECT 
    c.nome,
    c.cidade,
    'Com Pedido Pago' AS status_cliente
FROM clientes c
JOIN pedidos p ON p.id_cliente = c.id_cliente
WHERE p.status = 'Pago'

UNION

SELECT 
    c.nome,
    c.cidade,
    'Sem Pedido Pago' AS status_cliente
FROM clientes c
WHERE c.id_cliente NOT IN (
    SELECT p.id_cliente 
    FROM pedidos p
    WHERE p.status = 'Pago'
);