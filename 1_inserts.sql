-- Povoando Tabelas de Domínio (Sem chave estrangeira)
INSERT INTO CLASSE (id_classe, nome_classe, dado_vida) VALUES 
(1, 'Guerreiro', 'd10'),
(2, 'Mago', 'd6'),
(3, 'Ladino', 'd8');

INSERT INTO RACA (id_raca, nome_raca, bonus_atributo) VALUES 
(1, 'Humano', '+1 em todos'),
(2, 'Elfo', '+2 Destreza'),
(3, 'Anão', '+2 Constituição');

INSERT INTO ITEM (id_item, nome_item, peso, tipo) VALUES 
(1, 'Espada Longa', 1.5, 'Arma'),
(2, 'Poção de Cura', 0.5, 'Poção'),
(3, 'Armadura de Couro', 5.0, 'Armadura'),
(4, 'Corda (15m)', 2.0, 'Equipamento');

-- Povoando Jogadores
INSERT INTO JOGADOR (id_jogador, nome_completo, email, senha_hash) VALUES 
(1, 'Bruno Mestre', 'bruno@email.com', 'hash123'),
(2, 'Ana Jogadora', 'ana@email.com', 'hash456'),
(3, 'Carlos Jogador', 'carlos@email.com', 'hash789');

-- Povoando Campanhas (Depende de Jogador)
INSERT INTO CAMPANHA (id_campanha, nome_campanha, descricao, id_mestre) VALUES 
(1, 'A Mina Perdida', 'Uma aventura inicial em Phandalin.', 1);

-- Povoando Personagens (Depende de Jogador, Classe, Raça, Campanha)
INSERT INTO PERSONAGEM (id_personagem, nome_personagem, nivel, hp_atual, id_jogador, id_classe, id_raca, id_campanha) VALUES 
(1, 'Thorgar', 3, 28, 2, 1, 3, 1), -- Ana joga com o Anão Guerreiro
(2, 'Eldrin', 3, 16, 3, 2, 2, 1); -- Carlos joga com o Elfo Mago

-- Povoando Sessões (Depende de Campanha)
INSERT INTO SESSAO (id_sessao, data_sessao, resumo, id_campanha) VALUES 
(1, '2023-10-01', 'O grupo encontrou a entrada da caverna.', 1),
(2, '2023-10-08', 'Thorgar lutou contra o chefe goblin.', 1);

-- Povoando Inventário (Tabela Associativa N:N)
INSERT INTO INVENTARIO (id_inventario, quantidade, equipado, id_personagem, id_item) VALUES 
(1, 1, TRUE, 1, 1),  -- Thorgar tem 1 Espada (Equipada)
(2, 1, TRUE, 1, 3),  -- Thorgar tem 1 Armadura (Equipada)
(3, 2, FALSE, 1, 2), -- Thorgar tem 2 Poções (Mochila)
(4, 1, FALSE, 2, 4); -- Eldrin tem 1 Corda (Mochila)