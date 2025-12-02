-- === UPDATES (ATUALIZAÇÕES) ===

-- 1. O personagem Thorgar sofreu 5 de dano
UPDATE PERSONAGEM 
SET hp_atual = hp_atual - 5 
WHERE nome_personagem = 'Thorgar';

-- 2. Level Up! Eldrin subiu para o nível 4
UPDATE PERSONAGEM 
SET nivel = 4 
WHERE nome_personagem = 'Eldrin';

-- 3. O jogador Carlos mudou de email
UPDATE JOGADOR 
SET email = 'carlos.novo@email.com' 
WHERE id_jogador = 3;


-- === DELETES (EXCLUSÕES) ===

-- 1. Thorgar bebeu uma poção (Remove 1 do inventário específico)
-- Nota: Em um sistema real, faríamos um UPDATE na quantidade, 
-- deletamos aqui apenas se a quantidade for zerar.
DELETE FROM INVENTARIO 
WHERE id_inventario = 3; -- ID da poção no inventário do Thorgar

-- 2. O Mestre cadastrou uma sessão errada e vai apagar
DELETE FROM SESSAO 
WHERE id_sessao = 2;

-- 3. Um item foi removido do jogo (ex: depreciado nas regras)
-- Cuidado: Isso pode falhar se houver Integridade Referencial sem CASCADE.
-- Primeiro removemos do inventário, depois do catálogo.
DELETE FROM INVENTARIO WHERE id_item = 4;
DELETE FROM ITEM WHERE id_item = 4;