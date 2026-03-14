-- ======================================================
-- 1. CRIAÇÃO DO BANCO DE EXTERNO
-- ======================================================
CREATE DATABASE IF NOT EXISTS techfix_db;
USE techfix_db;

-- ======================================================
-- 2. CRIAÇÃO DAS TABELAS (Estrutura do Projeto)
-- =========================================================

-- Tabela para a tela de Clientes
CREATE TABLE IF NOT EXISTS cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(15)
);

-- Tabela para a tela de Ordem de Serviço (OSView)
CREATE TABLE IF NOT EXISTS ordem_servico (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao_problema TEXT NOT NULL,
    status_os VARCHAR(50),
    valor_estimado DECIMAL(10,2)
);

-- =======================================================
-- 3. INSERÇÃO DE DADOS INICIAIS (Exemplos de Teste)
-- ======================================================
INSERT INTO cliente (nome, cpf, telefone) 
VALUES ('Bianca Tech', '111.222.333-44', '(11) 98888-7777');

INSERT INTO ordem_servico (descricao_problema, status_os, valor_estimado) 
VALUES ('Troca de Bateria', 'Aguardando Peça', 150.00);

-- ======================================================
-- 4. COMANDOS DE CONSULTA E MANUTENÇÃO (Validação)
-- ======================================================

-- Visualizar todos os dados salvos pelo Java:
SELECT * FROM cliente;
SELECT * FROM ordem_servico;

-- Exemplo de busca por valor (Filtrar OS caras):
SELECT * FROM ordem_servico WHERE valor_estimado > 500.00;

-- COMANDOS PARA LIMPEZA (Resetar os testes):
-- DELETE FROM ordem_servico WHERE id IN (1, 2); -- Apaga IDs específicos
-- TRUNCATE TABLE ordem_servico; -- Limpa a tabela toda e zera os IDs