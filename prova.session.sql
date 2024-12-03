-- Criação do banco de dados
CREATE DATABASE construtora;

-- Seleciona o banco de dados
USE construtora;

-- Criação da tabela de usuários
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Criação da tabela de projetos
CREATE TABLE projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Criação da tabela de tarefas
CREATE TABLE tarefas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    projeto_id INT,
    FOREIGN KEY (projeto_id) REFERENCES projetos(id)
);

-- Inserção de dados iniciais na tabela de usuários
INSERT INTO usuarios (username, password) VALUES 
('gerente', '123'), 
('usuario1', 'senha1'), 
('usuario2', 'senha2');

-- Inserção de dados iniciais na tabela de projetos
INSERT INTO projetos (nome, descricao, data_inicio, data_fim, usuario_id) VALUES 
('Projeto A', 'Descrição do Projeto A', '2024-01-01', '2024-06-01', 1), 
('Projeto B', 'Descrição do Projeto B', '2024-02-01', '2024-07-01', 2);

-- Inserção de dados iniciais na tabela de tarefas
INSERT INTO tarefas (nome, data_inicio, data_fim, projeto_id) VALUES 
('Tarefa A1', '2024-01-02', '2024-01-10', 1), 
('Tarefa A2', '2024-01-11', '2024-01-20', 1), 
('Tarefa B1', '2024-02-02', '2024-02-10', 2), 
('Tarefa B2', '2024-02-11', '2024-02-20', 2);
