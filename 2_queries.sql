-- 1. Listar todos os personagens com suas Classes e Raças (Uso de JOIN)
SELECT p.nome_personagem, c.nome_classe, r.nome_raca, p.nivel
FROM PERSONAGEM p
INNER JOIN CLASSE c ON p.id_classe = c.id_classe
INNER JOIN RACA r ON p.id_raca = r.id_raca;

-- 2. Mostrar o inventário completo de um personagem específico (Thorgar)
SELECT p.nome_personagem, i.nome_item, inv.quantidade, inv.equipado
FROM INVENTARIO inv
JOIN PERSONAGEM p ON inv.id_personagem = p.id_personagem
JOIN ITEM i ON inv.id_item = i.id_item
WHERE p.nome_personagem = 'Thorgar';

-- 3. Listar as sessões de uma campanha ordenadas por data (ORDER BY)
SELECT s.data_sessao, s.resumo 
FROM SESSAO s
WHERE s.id_campanha = 1
ORDER BY s.data_sessao DESC;

-- 4. Contar quantos itens cada personagem possui (GROUP BY)
SELECT p.nome_personagem, SUM(inv.quantidade) as total_itens
FROM INVENTARIO inv
JOIN PERSONAGEM p ON inv.id_personagem = p.id_personagem
GROUP BY p.nome_personagem;