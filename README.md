# 🎲 Grimório Digital - Banco de Dados para RPG

Este repositório contém os scripts SQL desenvolvidos para a disciplina de Modelagem de Banco de Dados. O projeto consiste em um sistema para gerenciamento de fichas de personagens e campanhas de RPG de mesa (D&D 5ª Edição).

## 📋 Estrutura do Projeto

O banco de dados foi modelado para atender aos seguintes requisitos:
- Cadastro de Jogadores e Mestres.
- Criação de Fichas de Personagem (com Raça e Classe).
- Gestão de Inventário e Itens.
- Histórico de Sessões de Campanha.

## 🛠️ Tecnologias Utilizadas
- **Linguagem:** SQL (Padrão ANSI)
- **Ferramenta Sugerida:** MySQL Workbench / PostgreSQL (PGAdmin)

## 📂 Como Executar

1. **Criação das Tabelas:** Execute o script de criação (DDL) gerado na etapa anterior do projeto.
2. **Povoamento:** Execute o arquivo `1_inserts.sql` para inserir os dados iniciais.
3. **Consultas:** Utilize o arquivo `2_queries.sql` para testar os relatórios do sistema.
4. **Manipulação:** O arquivo `3_updates_deletes.sql` contém exemplos de atualização de registros.

## 📊 Principais Consultas Desenvolvidas

- Relatório de personagens por Classe/Raça.
- Visualização de inventário detalhado.
- Histórico cronológico de sessões.

---
*Projeto acadêmico desenvolvido para o curso de Análise e Desenvolvimento de Sistemas.*
