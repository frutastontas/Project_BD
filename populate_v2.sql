
INSERT INTO UTILIZADOR (ID, EMAIL, HASH_PALAVRA_PASSE, USERNAME, PAÍS, MORADA) VALUES
(1, 'user1@example.com', $2y$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu, 'user1', 'Portugal', 'Rua A, Lisboa'),
(2, 'user2@example.com', $2y$10$nHHvLbf7kOt58njAXGjqye0nJfwjeSsjYirAnjWk0rTL0UyEtH8Ta, 'user2', 'Espanha', 'Calle B, Madrid'),
(3, 'user3@example.com', $2y$10$iS24JINeJlOuh7yLv.HnouVLh.JO9lFKcN5bVenKQtLT1ubuqxYsu, 'user3', 'França', 'Rue C, Paris');

INSERT INTO CLIENTE (ID, PREFERÊNCIAS) VALUES
(1, 'Carros compactos'),
(2, 'SUVs'),
(3, 'Motociclos desportivos');

INSERT INTO VENDEDOR (ID, HISTÓRICO, MARCA_ASSOCIADA) VALUES
(1, '5 anos de experiência', NULL),
(2, 'Especialista em veículos elétricos', NULL),
(3, 'Consultor de veículos de luxo', NULL),
(4, 'Consultor de veículos elétricos de luxo', 'Rivian');


INSERT INTO MARCA (ID_MARCA, NOME, PAÍS_ORIGEM) VALUES 
(1,'McLaren', 'UK'),
(2,'Porsche', 'Germany'),
(3,'Land Rover', 'UK'),
(4,'Ferrari', 'Italy'),
(5,'Toyota', 'Japan'),
(6,'Chevrolet', 'USA'),
(7,'Ford', 'USA'),
(8,'BMW', 'Germany'),
(9,'Infiniti', 'Japan'),
(10,'Rivian', 'USA'),
(11,'Audi', 'Germany'),
(12,'Lamborghini', 'Italy'),
(13,'Mercedes-Benz', 'Germany'),
(14,'Plymouth', 'USA'),
(15,'Lexus', 'Japan'),
(16,'Yamaha','Japan'),
(17,'Honda','Japan'),
(18, 'Ducati', 'Italy');


INSERT INTO MODELO (ID_MODELO_CARRO, ID_MODELO_MOTOCICLO, ID_MOTOR, NOME, DATA_LANÇAMENTO, VARIANTE, ID_MARCA) VALUES
(1,NULL,37,'i8', '2014', 'subcompact car', 8),
(2,NULL,1,'p1', '2014', 'two seater', 1),
(3,NULL,2,'918 spyder', '2015', 'two seater', 2),
(4,NULL,3,'range rover velar', '2018', 'small sport utility vehicle', 3),
(5,NULL,4,'f430', '2005', 'two seater', 4),
(6,NULL,5,'488 gtb', '2016', 'two seater', 4),
(7,NULL,6,'458 italia', '2010', 'two seater', 4),
(8,NULL,7,'camry', '1993', 'midsize car', 5),
(9,NULL,8,'corolla', '1993', 'compact car', 5),
(10,NULL,9,'yaris', '2007', 'subcompact car', 5),
(11,NULL,10,'camaro', '1994', 'subcompact car', 6),
(12,NULL,11,'mustang', '1994', 'subcompact car', 7),
(13,NULL,12,'m3', '1995', 'subcompact car', 8),
(14,NULL,13,'5 series', '1986', 'compact car', 8),
(15,NULL,14,'taycan turbo', '2020', 'large car', 2),
(16,NULL,15,'r1t', '2022', 'standard pickup truck', 10),
(17,NULL,16,'f150 pickup 2wd', '1993', 'standard pickup truck', 7),
(18,NULL,17,'rs6', '2003', 'midsize car', 11),
(19,NULL,18,'a3', '2006', 'small station wagon', 11),
(20,NULL,19,'x5', '2000', 'sport utility vehicle', 8),
(21,NULL,20,'m235i', '2014', 'subcompact car', 8),
(22,NULL,21,'cayenne s', '2003', 'special purpose vehicle', 2),
(23,NULL,22,'carrera 2 911 gt3', '2004', 'two seater', 2),
(24,NULL,23,'cayman s', '2006', 'two seater', 2),
(25,NULL,24,'civic del sol', '1994', 'two seater', 14),
(26,NULL,25,'transit connect', '2010', 'special purpose vehicle', 7),
(27,NULL,26,'sundance/duster', '1994', 'compact car', 14),
(28,NULL,27,'a4', '1996', 'compact car', 11),
(29,NULL,28,'lfa', '2012', 'two seater', 15),
(30,NULL,29,'aventador coupe', '2012', 'two seater', 12),
(31,NULL,30,'huracan', '2015', 'two seater', 12),
(32,NULL,31,'sq7', '2020', 'standard sport utility vehicle', 11),
(33,NULL,32,'r8', '2008', 'two seater', 11),
(34,NULL,33,'cla45 amg 4matic', '2014', 'compact car', 13),
(35,NULL,34,'amg cla35 4matic', '2020', 'compact car', 13),
(36,NULL,35,'cls63 amg', '2007', 'compact car', 13),
(37,NULL,36,'defender 110', '1993', 'special purpose vehicle', 3),
(NULL, 1, 38, 'R1M', '2018','Super Sport',16),
(NULL,2,39, 'MTX125R', '1984','Enduro',17),
(NULL, 3, 40,'Tenere 700','Adventure',17),
(NULL, 4, 41, 'Panigale V4R','Super Sport',18);






INSERT INTO MOTOR (ID_MOTOR, NOME, CILINDRADA, NÚMERO_DE_CILINDROS, NÚMERO_DE_VÁLVULAS, ASPIRAÇÃO, BINÁRIO, POTÊNCIA, CAIXA_DE_VELOCIDADES) VALUES
('1','Hybrid Engine 1',3.8, 8, 32, 'turbo', 900, 903, 'a'),
('2','Hybrid Engine 2',4.6, 8, 32, 'naturally aspirated', 1280, 887, 'a'),
('3','Gas Engine 1',2.0, 4, 16, 'turbo', 365, 250, 'a'),
('4','Gas Engine 2',4.3, 8, 32, 'naturally aspirated', 465, 483, 'a'),
('5','Gas Engine 3',5.0, 8, 32, 'turbo', 760, 661, 'a'),
('6','Gas Engine 4',4.5, 8, 32, 'naturally aspirated', 540, 562, 'a'),
('7','Gas Engine 5',2.0, 4, 16, 'naturally aspirated', 170, 130, 'a'),
('8','Gas Engine 6',1.6, 4, 16, 'naturally aspirated', 145, 115, 'a'),
('9','Gas Engine 7',1.5, 4, 16, 'naturally aspirated', 140, 106, 'a'),
('10','Gas Engine 8',4.7, 6, 16, 'naturally aspirated', 420, 275, 'a'),
('11','Gas Engine 9',5.0, 6, 16, 'naturally aspirated', 366, 215, 'a'),
('12','Gas Engine 10',3.0, 6, 16, 'naturally aspirated', 365, 240, 'a'),
('14','Diesel Engine 1',1.6, 6, 12, 'naturally aspirated', 240, 182, 'a'),
('15','Electric Engine 1',0, 0, 0, 'n/a', 850, 616, 'a'),
('16','Electric Engine 2',0, 0, 0, 'n/a', 1400, 835, 'a'),
('17','Gas Engine 12',4.9, 6, 16, 'naturally aspirated', 290, 185, 'a'),
('18','Gas Engine 13',4.8, 8, 40, 'turbo', 560, 444, 'a'),
('19','Gas Engine 14',1.5, 4, 16, 'turbo', 280, 200, 'm'),
('20','Gas Engine 15',2.5, 6, 16, 'naturally aspirated', 380, 282, 'a'),
('21','Gas Engine 16',4.0, 8, 32, 'naturally aspirated', 420, 340, 'a'),
('22','Gas Engine 17',3.0, 6, 24, 'naturally aspirated', 420, 381, 'm'),
('23','Gas Engine 18',3.0, 6, 24, 'naturally aspirated', 340, 295, 'a'),
('24','Gas Engine 19',2.2, 4, 16, 'naturally aspirated', 145, 125, 'a'),
('25','Gas Engine 20',2.0, 4, 16, 'naturally aspirated', 185, 136, 'a'),
('26','Gas Engine 21',3.3, 4, 16, 'naturally aspirated', 145, 100, 'a'),
('27','Gas Engine 22',1.4, 4, 20, 'turbo', 230, 190, 'a'),
('28','Gas Engine 23',3.0, 10, 32, 'naturally aspirated', 480, 552, 'a'),
('29','Gas Engine 24',2.2, 12, 48, 'naturally aspirated', 690, 690, 'a'),
('30','Gas Engine 25',2.0, 10, 40, 'naturally aspirated', 560, 602, 'a'),
('31','Gas Engine 26',2.4, 8, 32, 'turbo', 770, 500, 'a'),
('32','Gas Engine 27',4.0, 10, 32, 'naturally aspirated', 430, 420, 'm'),
('33','Gas Engine 28',2.4, 4, 16, 'turbo', 475, 375, 'a'),
('34','Gas Engine 29',2.0, 4, 16, 'turbo', 400, 302, 'a'),
('35','Gas Engine 30',4.0, 8, 32, 'turbo', 650, 507, 'a'),
('36','Diesel Engine 2',2.5,  3, 12, 'turbo', 500, 369, 'a'), 
('37','Hybrid Engine 3',1.5, 3, 12, 'turbo', 500, 340, 'a'),
('38','Gas Engine 32',1.0,  4, 16, 'naturally aspirated', 100, 205, 'm'),
('39','Gas Engine 33',0.125,  4, 16, 'naturally aspirated', 15, 18, 'm'),
('40','Gas Engine 34',0.7,  4, 16, 'naturally aspirated', 80, 80, 'm'),
('41','Gas Engine 35',1.1,  4, 16, 'naturally aspirated', 100, 215, 'm'),

;

INSERT INTO COMBUSTÍVEL (ID_COMBUSTÍVEL, TIPO) VALUES 
(1, 'Gas'),
(2, 'Electricity'),
(3, 'Diesel')
(4, 'Hybrid(Gas Electricity)')
(5, 'GPL')
;

-- Insert vehicles
INSERT INTO VEÍCULO (ID_VEICULO, ID_MODELO, CONSUMO, COR, ANO, PESO, PREÇO, TRAÇÃO, NÚMERO_DE_ASSENTOS, ESTADO, TOP_SPEED, DESCRIÇÃO, ID_VENDEDOR) VALUES
(1, 3, 10.69, 'Orange', 2015, 1678, 1350000, 'AWD', 2, 'Used', 340, '17000 km, no damage, warranty expired', 2),
(2, 3, 10.69, 'Silver', 2015, 1678, 1400000, 'AWD', 2, 'Used', 340, '15000 km, no damage, 1 year warranty left', 2),
(3, 3, 11.2, 'Black', 2016, 1678, 1000000, 'AWD', 2, 'New', 340, '0 km, factory warranty included', 1),
(4, 3, 11.5, 'Red', 2017, 1825, 980000, 'AWD', 2, 'Used', 315, '12000 km, minor scratches, warranty expired', 2),
(5, 8, 6.7, 'White', 2019, 1500, 30000, 'RWD', 5, 'New', 180, '0 km, includes roadside assistance', 3),
(6, 8, 6.9, 'Blue', 2018, 1480, 28000, 'RWD', 5, 'Used', 175, '12000 km, minor interior wear', 1),
(7, 11, 5.8, 'Gray', 2020, 1400, 45000, 'AWD', 5, 'New', 220, '0 km, top trim package', 3),
(8, 16, 0, 'Silver', 2023, 2400, 110000, 'AWD', 4, 'New', 260, 'Electric car, zero emissions, top trim', 4),
(9, 12, 12.3, 'Yellow', 2018, 1800, 150000, 'RWD', 2, 'Used', 300, '15000 km, excellent condition, sporty design', 1),
(10, 12, 12.1, 'Orange', 2019, 1820, 155000, 'RWD', 2, 'Used', 305, '12000 km, sports seats, warranty expired', 2);

;



INSERT INTO FUNCIONA_A (ID_VEICULO, ID_COMBUSTÍVEL) VALUES
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

;