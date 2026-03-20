CREATE DATABASE Contas;
USE Contas;

CREATE TABLE Contas (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Saldo DECIMAL(10,2)
);

INSERT INTO Contas (Nome, Saldo) VALUES
('Lady Gaga', 1000.00),
('Bob Marley', 500.00),
('Katy Perry', 1500.00);

SELECT * FROM Contas;

UPDATE Contas
SET Saldo = Saldo + 250.00
WHERE Nome = 'Lady Gaga';

SELECT * FROM Contas;

START TRANSACTION;

UPDATE Contas
SET Saldo = Saldo - 300.00
WHERE Nome = 'Katy Perry';

UPDATE Contas
SET Saldo = Saldo + 300.00
WHERE Nome = 'Bob Marley';

COMMIT;

SELECT * FROM Contas;

START TRANSACTION;

UPDATE Contas
SET Saldo = Saldo - 300.00
WHERE Nome = 'Katy Perry';

UPDATE Contas
SET Saldo = Saldo + 300.00
WHERE Nome = 'Bob Marley';

ROLLBACK;

DELETE FROM Contas
WHERE Nome = 'Bob Marley';

SELECT *
FROM Contas
WHERE Saldo > 1000.00;

SELECT Nome, Saldo
FROM Contas
ORDER BY Saldo DESC;

SET SQL_SAFE_UPDATES = 0;