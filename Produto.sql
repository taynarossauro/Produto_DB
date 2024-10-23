-- Criação da tabela Produtos
CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    perecivel BOOLEAN NOT NULL,
    marca VARCHAR(255),
    nacionalidade VARCHAR(100)
);

-- Inserção de cinco produtos na tabela Produtos
INSERT INTO Produtos (nome, preco, estoque, perecivel, marca, nacionalidade) 
VALUES 
('Leite', 5.50, 50, 1, 'Marca A', 'Brasil'),
('Arroz', 15.30, 100, 0, 'Marca B', 'Brasil'),
('Maçã', 4.20, 30, 1, 'Marca C', 'Argentina'),
('Sabonete', 2.50, 200, 0, 'Marca D', 'Brasil'),
('Banana', 3.10, 60, 1, 'Marca E', 'Equador');

-- Verificando a inserção dos dados
SELECT * FROM Produtos;
