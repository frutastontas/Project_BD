INSERT INTO UTILIZADOR (ID, EMAIL, HASH_PALAVRA_PASSE, USERNAME, PAÍS, MORADA) VALUES
(1, 'user1@example.com', 123456789, 'user1', 'Portugal', 'Rua A, Lisboa'),
(2, 'user2@example.com', 987654321, 'user2', 'Espanha', 'Calle B, Madrid'),
(3, 'user3@example.com', 111222333, 'user3', 'França', 'Rue C, Paris');

INSERT INTO CLIENTE (ID, PREFERÊNCIAS) VALUES
(1, 'Carros compactos'),
(2, 'SUVs'),
(3, 'Motociclos desportivos');

INSERT INTO VENDEDOR (ID, HISTÓRICO, MARCA_ASSOCIADA) VALUES
(1, '5 anos de experiência', 'Toyota'),
(2, 'Especialista em veículos elétricos', 'Tesla'),
(3, 'Consultor de veículos de luxo', 'BMW');

INSERT INTO VEÍCULO (ID, CONSUMO, COR, ANO, PESO, PREÇO, TRAÇÃO, NÚMERO_DE_ASSENTOS, ESTADO, SÉRIE, ID_VENDEDOR) VALUES
(1, 6, 'Vermelho', '2020-01-01', 1200, 20000, 'Dianteira', 5, 'Novo', 1001, 1),
(2, 8, 'Preto', '2019-05-15', 1500, 30000, 'Integral', 7, 'Usado', 1002, 2),
(3, 3, 'Azul', '2021-07-20', 1000, 15000, 'Traseira', 2, 'Novo', 1003, 3);


INSERT INTO FUNCIONA_A (ID_VEÍCULO, ID_COMBUSTÍVEL) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO ANÚNCIO (ID, DATA, ID_VEÍCULO, ID_VENDEDOR) VALUES
(1, '2023-01-10', 1, 1),
(2, '2023-06-15', 2, 2),
(3, '2023-09-20', 3, 3);


INSERT INTO INTERAGIU (ID_ANÚNCIO, ID_VEÍCULO) VALUES
(1, 1),
(2, 2),
(3, 3);


INSERT INTO MARCA (ID, NOME, PAÍS_ORIGEM, ID_VENDEDOR) VALUES
(1, 'Toyota', 'Japão', 1),
(2, 'Tesla', 'EUA', 2),
(3, 'BMW', 'Alemanha', 3);


INSERT INTO CARRO (ID, CATEGORIA, NÚMERO_PORTAS) VALUES
(1, 'Sedan', 4),
(2, 'SUV', 5);

INSERT INTO MOTOCICLO (ID, CATEGORIA) VALUES
(3, 'Desportivo');

INSERT INTO MODELO (ID, NOME, DATA_LANÇAMENTO, VARIANTE, ID_CARRO, ID_MOTOCICLO, ID_MARCA) VALUES
(1, 'Corolla', '2020-03-01', 'X', 1, NULL, 1),
(2, 'Model X', '2019-11-15', 'Performance', 2, NULL, 2),
(3, 'R1', '2021-08-10', 'Sport', NULL, 3, 3);

INSERT INTO MOTOR (NÚMERO_SÉRIE, NOME, CILINDRADA, NÚMERO_DE_CILINDROS, NÚMERO_DE_VÁLVULAS, ASPIRAÇÃO, BINÁRIO, POTÊNCIA) VALUES
(1001, 'Motor A', 1600, 4, 16, 'Turbo', 250, 120),
(1002, 'Motor B', 2000, 4, 16, 'Aspirado', 320, 150),
(1003, 'Motor C', 1000, 2, 8, 'Turbo', 150, 80);

INSERT INTO COMBUSTÍVEL (ID, TIPO) VALUES
(1, 'Gasolina'),
(2, 'Diesel'),
(3, 'Elétrico'),
(4, 'Híbrido');
