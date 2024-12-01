INSERT INTO UTILIZADOR (ID, EMAIL, HASH_PALAVRA_PASSE, USERNAME, PAÍS, MORADA) VALUES
(1, 'user1@example.com', '$2y$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'u1', 'Portugal', 'Rua A, Lisboa'),
(2, 'user2@example.com', '$2y$10$nHvLbf7kOt58njAXGjqye0nJfwjeSsjYirAnjWk0rTL0UyEtH8Ta', 'uer2', 'Espanha', 'Calle B, Madrid'),
(3, 'user3@example.com', '$2y$10$S24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'ur3', 'França', 'Rue C, Paris'),
(4, 'user4@example.com', '$2y$10iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'user4', 'França', 'Rue C, Paris'),
(5, 'user5@example.com', '$2y$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'user5', 'França', 'Rue C, Paris'),
(6, 'user6@example.com', '$$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'user6', 'França', 'Rue C, Paris'),
(7, 'user7@example.com', '$2y$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'user7', 'França', 'Rue C, Paris'),
(8, 'user8@example.com', '$2y$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'user8', 'França', 'Rue C, Paris'),
(9, 'user9@example.com', '$2y$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'user9', 'França', 'Rue C, Paris'),
(10, 'user10@example.com', '$2y$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu', 'user10', 'França', 'Rue C, Paris');


INSERT INTO CLIENTE (ID, PREFERÊNCIAS) VALUES
(6, 'Carros compactos'),
(7, 'SUVs'),
(8, 'Motociclos desportivos'),
(9, 'SUVs'),
(10, 'SUVs');


INSERT INTO VENDEDOR (ID, HISTÓRICO, MARCA_ASSOCIADA) VALUES
(1, '5 anos de experiência', NULL),
(2, 'Especialista em veículos elétricos', NULL),
(3, 'Consultor de veículos de luxo', NULL),
(4, 'Consultor de veículos elétricos de luxo', 'Rivian'),
(5, '40 anos de experência', 'Ferrari');




INSERT INTO MOTOR (NÚMERO_SÉRIE, NOME, CILINDRADA, NÚMERO_DE_CILINDROS, NÚMERO_DE_VÁLVULAS, ASPIRAÇÃO, BINÁRIO, POTÊNCIA, CAIXA_DE_VELOCIDADES) VALUES
(1,'Hybrid Engine 1',3.8, 8, 32, 'turbo', 900, 903, 'a'),
(2,'Hybrid Engine 2',4.6, 8, 32, 'naturally aspirated', 1280, 887, 'a'),
(3,'Gas Engine 1',2.0, 4, 16, 'turbo', 365, 250, 'a'),
(4,'Gas Engine 2',4.3, 8, 32, 'naturally aspirated', 465, 483, 'a'),
(5,'Gas Engine 3',5.0, 8, 32, 'turbo', 760, 661, 'a'),
(6,'Gas Engine 4',4.5, 8, 32, 'naturally aspirated', 540, 562, 'a'),
(7,'Gas Engine 5',2.0, 4, 16, 'naturally aspirated', 170, 130, 'a'),
(8,'Gas Engine 6',1.6, 4, 16, 'naturally aspirated', 145, 115, 'a'),
(9,'Gas Engine 7',1.5, 4, 16, 'naturally aspirated', 140, 106, 'a'),
(10,'Gas Engine 8',4.7, 6, 16, 'naturally aspirated', 420, 275, 'a'),
(11,'Gas Engine 9',5.0, 6, 16, 'naturally aspirated', 366, 215, 'a'),
(12,'Gas Engine 10',3.0, 6, 16, 'naturally aspirated', 365, 240, 'a'),
(14,'Diesel Engine 1',1.6, 6, 12, 'naturally aspirated', 240, 182, 'a'),
(15,'Electric Engine 1',0, 0, 0, 'n/a', 850, 616, 'a'),
(16,'Electric Engine 2',0, 0, 0, 'n/a', 1400, 835, 'a'),
(17,'Gas Engine 12',4.9, 6, 16, 'naturally aspirated', 290, 185, 'a'),
(33,'Gas Engine 28',2.4, 4, 16, 'turbo', 475, 375, 'a'),
(34,'Gas Engine 29',2.0, 4, 16, 'turbo', 400, 302, 'a'),
(35,'Gas Engine 30',4.0, 8, 32, 'turbo', 650, 507, 'a'),
(36,'Diesel Engine 2',2.5,  3, 12, 'turbo', 500, 369, 'a'), 
(37,'Hybrid Engine 3',1.5, 3, 12, 'turbo', 500, 340, 'a'),
(38,'Gas Engine 32',1.0,  4, 16, 'naturally aspirated', 100, 205, 'm'),
(39,'Gas Engine 33',0.125,  4, 16, 'naturally aspirated', 15, 18, 'm'),
(40,'Gas Engine 34',0.7,  4, 16, 'naturally aspirated', 80, 80, 'm'),
(41,'Gas Engine 35',1.1,  4, 16, 'naturally aspirated', 100, 215, 'm')
;

INSERT INTO COMBUSTÍVEL (ID, TIPO) VALUES 
(1, 'Gas'),
(2, 'Electricity'),
(3, 'Diesel'),
(4, 'Hybrid(Gas Electricity)'),
(5, 'GPL')
;

-- Insert vehicles
INSERT INTO VEÍCULO (ID, CONSUMO, COR, ANO, PESO, PREÇO, TRAÇÃO, NÚMERO_DE_ASSENTOS, ESTADO, TOP_SPEED, DESCRIÇÃO, SÉRIE,ID_VENDEDOR) VALUES
(1, 10.69, 'Orange', 2015, 1678, 1350000, 'AWD', 2, 'Used', 340, '17000 km, no damage, warranty expired', 2,2),
(2, 10.69, 'Silver', 2015, 1678, 1400000, 'AWD', 2, 'Used', 340, '15000 km, no damage, 1 year warranty left', 2,2),
(3, 11.2, 'Black', 2016, 1678, 1000000, 'AWD', 2, 'New', 340, '0 km, factory warranty included', 2,1),
(4, 11.5, 'Red', 2017, 1825, 980000, 'AWD', 2, 'Used', 315, '12000 km, minor scratches, warranty expired', 4,5),
(5, 6.7, 'White', 2019, 1500, 30000, 'RWD', 5, 'New', 180, '0 km, includes roadside assistance', 4,3),
(6, 6.9, 'Blue', 2018, 1480, 28000, 'RWD', 5, 'Used', 175, '12000 km, minor interior wear', 1,1),
(7, 5.8, 'Gray', 2020, 1400, 45000, 'AWD', 5, 'New', 220, '0 km, top trim package', 7,3),
(8, 0, 'Silver', 2023, 2400, 110000, 'AWD', 4, 'New', 260, 'Electric car, zero emissions, top trim',16 ,4),
(9, 12.3, 'Yellow', 2018, 1800, 150000, 'RWD', 2, 'Used', 300, '15000 km, excellent condition, sporty design', 2,1),
(10, 12.1, 'Orange', 2018, 200, 15500, 'RWD', 2, 'Used', 350, '12000 km, heated grips, warranty expired', 38,2);   -- MOTOCICLO

INSERT INTO CARRO (ID, CATEGORIA, NÚMERO_PORTAS) VALUES
(1, 'a',2),
(2, 'b', 2),
(3, 'b', 2),
(4, 'b', 2),
(5, 'b', 2),
(6, 'b', 2),
(7, 'b', 2),
(8, 'b', 2),
(9, 'b', 2);

INSERT INTO MOTOCICLO (ID, CATEGORIA) VALUES
(10,'b');


INSERT INTO FUNCIONA_A (ID_VEÍCULO, ID_COMBUSTÍVEL) VALUES
(1, 4), 
(2, 4), 
(3, 1), 
(4, 1), 
(5, 1), 
(6, 1), 
(7, 1), 
(8, 2), 
(9, 1), 
(10, 1); 


INSERT INTO MARCA (ID, NOME, PAÍS_ORIGEM, ID_VENDEDOR) VALUES 
(1,'McLaren', 'UK', NULL),
(2,'Porsche', 'Germany',NULL),
(3,'Land Rover', 'UK', NULL),
(4,'Ferrari', 'Italy', 5),
(5,'Toyota', 'Japan', NULL),
(6,'Chevrolet', 'USA', NULL),
(7,'Ford', 'USA', NULL),
(8,'BMW', 'Germany', NULL),
(9,'Infiniti', 'Japan', NULL),
(10,'Rivian', 'USA', 4),
(11,'Audi', 'Germany', NULL),
(12,'Lamborghini', 'Italy', NULL),
(13,'Mercedes-Benz', 'Germany', NULL),
(14,'Plymouth', 'USA', NULL),
(15,'Lexus', 'Japan', NULL),
(16,'Yamaha','Japan', NULL),
(17,'Honda','Japan', NULL),
(18, 'Ducati', 'Italy', NULL);


INSERT INTO MODELO (ID, NOME, DATA_LANÇAMENTO, VARIANTE,ID_CARRO,ID_MOTOCICLO, ID_MARCA) VALUES
(1,'i8', '2014', 'subcompact car',1,NULL, 8),
(2,'p1', '2014', 'two seater',2, NULL ,1),
(3,'918 spyder', '2015', 'two seater',3,NULL,2),
(4,'range rover velar', '2018', 'small sport utility vehicle',4,NULL,3),
(5,'f430', '2005', 'two seater',5,NULL, 4),
(6,'488 gtb', '2016', 'two seater', 6, NULL, 4),
(7,'458 italia', '2010', 'two seater',7,NULL ,4),
(8,'camry', '1993', 'midsize car', 8,NULL,5),
(9,'corolla', '1993', 'compact car',9,NULL ,5),
(10,'yaris', '2007', 'subcompact car',NULL,10, 5);


INSERT INTO ANÚNCIO (ID, DATA, ID_VEÍCULO, ID_VENDEDOR) VALUES
(1,'2019-12-25', 1, 2),
(2,'2013-09-15', 2, 2),
(3,'2024-04-01', 3, 1),
(4,'2003-07-20', 4, 5),
(5,'2019-12-25', 5, 3),
(6,'2019-12-25', 6, 1),
(7,'2019-12-25', 7, 3),
(8,'2019-12-25', 8, 4),
(9,'2019-12-25', 9, 1),
(10,'2019-12-25', 10, 2);



INSERT INTO INTERAGIU (ID_ANÚNCIO, ID_CLIENTE) VALUES
(1,6),
(2,6),
(3,7),
(4,7),
(5,8),
(6,8),
(7,9),
(8,9),
(9,10),
(10,10);