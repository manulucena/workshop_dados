CREATE SCHEMA DESAFIO;
USE DESAFIO;
CREATE TABLE Livros (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    Genero VARCHAR(50) NOT NULL,
    AnoPublicacao INT NOT NULL
);

CREATE TABLE Emprestimos (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    LivroID INT NOT NULL,
    NomeUsuario VARCHAR(100) NOT NULL,
    DataEmprestimo DATE NOT NULL,
    DataDevolucao DATE,
    Status ENUM('Emprestado', 'Devolvido') NOT NULL,
    FOREIGN KEY (LivroID) REFERENCES Livros(ID)
);
INSERT INTO Livros (Titulo, Autor, Genero, AnoPublicacao) VALUES
('1984', 'George Orwell', 'Ficção', 1949),
('Dom Casmurro', 'Machado de Assis', 'Romance', 1899),
('O Senhor dos Anéis', 'J.R.R. Tolkien', 'Fantasia', 1954),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Fantasia', 1997),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Infantil', 1943),
('A Revolução dos Bichos', 'George Orwell', 'Ficção', 1945),
('O Código Da Vinci', 'Dan Brown', 'Mistério', 2003),
('A Arte da Guerra', 'Sun Tzu', 'Estratégia', -500),
('O Alquimista', 'Paulo Coelho', 'Ficção', 1988),
('Crime e Castigo', 'Fiódor Dostoiévski', 'Romance', 1866);

INSERT INTO Emprestimos (LivroID, NomeUsuario, DataEmprestimo, DataDevolucao, Status) VALUES
(1, 'Carlos Lima', '2024-02-01', '2024-02-10', 'Devolvido'),
(2, 'Ana Pereira', '2024-02-03', NULL, 'Emprestado'),
(3, 'Pedro Santos', '2024-02-05', '2024-02-15', 'Devolvido'),
(4, 'Juliana Mendes', '2024-02-07', NULL, 'Emprestado'),
(5, 'Roberto Farias', '2024-02-10', '2024-02-20', 'Devolvido'),
(6, 'Fernanda Costa', '2024-02-12', NULL, 'Emprestado'),
(7, 'Lucas Almeida', '2024-02-15', '2024-02-25', 'Devolvido'),
(8, 'Beatriz Martins', '2024-02-18', NULL, 'Emprestado'),
(9, 'João Silva', '2024-02-20', '2024-03-01', 'Devolvido'),
(10, 'Maria Souza', '2024-02-22', NULL, 'Emprestado');

SELECT COUNT(*) AS TotalLivros FROM Livros;
SELECT COUNT(*) AS TotalEmprestimos FROM Emprestimos;
SELECT COUNT(*) AS LivrosEmprestados FROM Emprestimos WHERE Status = 'Emprestado';
SELECT Genero, COUNT(*) AS TotalLivros
FROM Livros
GROUP BY Genero;
SELECT Status, COUNT(*) AS TotalEmprestimos
FROM Emprestimos
GROUP BY Status;



