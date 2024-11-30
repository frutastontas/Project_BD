


INSERT INTO MARCA (NOME, PAÍS_ORIGEM) VALUES 
('McLaren', 'UK'),
('Porsche', 'Germany'),
('Land Rover', 'UK'),
('Ferrari', 'Italy'),
('Toyota', 'Japan'),
('Chevrolet', 'USA'),
('Ford', 'USA'),
('BMW', 'Germany'),
('Infiniti', 'Japan'),
('Rivian', 'USA'),
('Audi', 'Germany'),
('Lamborghini', 'Italy'),
('Mercedes-Benz', 'Germany'),
('Plymouth', 'USA'),
('Lexus', 'Japan');


INSERT INTO MODELO (NOME, DATA_LANÇAMENTO, VARIANTE, ID_MARCA) VALUES
('i8', '2014', 'subcompact car', (SELECT ID FROM MARCA WHERE NOME='bmw')),
('p1', '2014', 'two seater', (SELECT ID FROM MARCA WHERE NOME='mclaren automotive')),
('918 spyder', '2015', 'two seater', (SELECT ID FROM MARCA WHERE NOME='porsche')),
('range rover velar', '2018', 'small sport utility vehicle', (SELECT ID FROM MARCA WHERE NOME='land rover')),
('f430', '2005', 'two seater', (SELECT ID FROM MARCA WHERE NOME='ferrari')),
('488 gtb', '2016', 'two seater', (SELECT ID FROM MARCA WHERE NOME='ferrari')),
('458 italia', '2010', 'two seater', (SELECT ID FROM MARCA WHERE NOME='ferrari')),
('camry', '1993', 'midsize car', (SELECT ID FROM MARCA WHERE NOME='toyota')),
('corolla', '1993', 'compact car', (SELECT ID FROM MARCA WHERE NOME='toyota')),
('yaris', '2007', 'subcompact car', (SELECT ID FROM MARCA WHERE NOME='toyota')),
('camaro', '1994', 'subcompact car', (SELECT ID FROM MARCA WHERE NOME='chevrolet')),
('mustang', '1994', 'subcompact car', (SELECT ID FROM MARCA WHERE NOME='ford')),
('m3', '1995', 'subcompact car', (SELECT ID FROM MARCA WHERE NOME='bmw')),
('m45', '2003', 'compact car', (SELECT ID FROM MARCA WHERE NOME='infiniti')),
('5 series', '1986', 'compact car', (SELECT ID FROM MARCA WHERE NOME='bmw')),
('taycan turbo', '2020', 'large car', (SELECT ID FROM MARCA WHERE NOME='porsche')),
('r1t', '2022', 'standard pickup truck', (SELECT ID FROM MARCA WHERE NOME='rivian')),
('f150 pickup 2wd', '1993', 'standard pickup truck', (SELECT ID FROM MARCA WHERE NOME='ford')),
('rs6', '2003', 'midsize car', (SELECT ID FROM MARCA WHERE NOME='audi')),
('a3', '2006', 'small station wagon', (SELECT ID FROM MARCA WHERE NOME='audi')),
('x5', '2000', 'sport utility vehicle', (SELECT ID FROM MARCA WHERE NOME='bmw')),
('m235i', '2014', 'subcompact car', (SELECT ID FROM MARCA WHERE NOME='bmw')),
('cayenne s', '2003', 'special purpose vehicle', (SELECT ID FROM MARCA WHERE NOME='porsche')),
('carrera 2 911 gt3', '2004', 'two seater', (SELECT ID FROM MARCA WHERE NOME='porsche')),
('cayman s', '2006', 'two seater', (SELECT ID FROM MARCA WHERE NOME='porsche')),
('civic del sol', '1994', 'two seater', (SELECT ID FROM MARCA WHERE NOME='honda')),
('transit connect', '2010', 'special purpose vehicle', (SELECT ID FROM MARCA WHERE NOME='ford')),
('sundance/duster', '1994', 'compact car', (SELECT ID FROM MARCA WHERE NOME='plymouth')),
('a4', '1996', 'compact car', (SELECT ID FROM MARCA WHERE NOME='audi')),
('lfa', '2012', 'two seater', (SELECT ID FROM MARCA WHERE NOME='lexus')),
('aventador coupe', '2012', 'two seater', (SELECT ID FROM MARCA WHERE NOME='lamborghini')),
('huracan', '2015', 'two seater', (SELECT ID FROM MARCA WHERE NOME='lamborghini')),
('sq7', '2020', 'standard sport utility vehicle', (SELECT ID FROM MARCA WHERE NOME='audi')),
('r8', '2008', 'two seater', (SELECT ID FROM MARCA WHERE NOME='audi')),
('cla45 amg 4matic', '2014', 'compact car', (SELECT ID FROM MARCA WHERE NOME='mercedes-benz')),
('amg cla35 4matic', '2020', 'compact car', (SELECT ID FROM MARCA WHERE NOME='mercedes-benz')),
('cls63 amg', '2007', 'compact car', (SELECT ID FROM MARCA WHERE NOME='mercedes-benz')),
('defender 110', '1993', 'special purpose vehicle', (SELECT ID FROM MARCA WHERE NOME='land rover'))



-- Insert engines
INSERT INTO MOTOR (NOME, CILINDRADA, NÚMERO_DE_CILINDROS, NÚMERO_DE_VÁLVULAS, ASPIRAÇÃO, BINÁRIO, POTÊNCIA, CAIXA_DE_VELOCIDADES) VALUES
('Hybrid Engine 1',1395, 8, 32, 'turbo', 900, 903, 'a'),
('Hybrid Engine 2',1678, 8, 32, 'naturally aspirated', 1280, 887, 'a'),
('Gas Engine 1',1950, 4, 16, 'turbo', 365, 250, 'a'),
('Gas Engine 2',1475, 8, 32, 'naturally aspirated', 465, 483, 'a'),
('Gas Engine 3',1451, 8, 32, 'turbo', 760, 661, 'a'),
('Gas Engine 4',1485, 8, 32, 'naturally aspirated', 540, 562, 'a'),
('Gas Engine 5',1361, 4, 16, 'naturally aspirated', 170, 130, 'a'),
('Gas Engine 6',1134, 4, 16, 'naturally aspirated', 145, 115, 'a'),
('Gas Engine 7',1043, 4, 16, 'naturally aspirated', 140, 106, 'a'),
('Gas Engine 8',1542, 6, 16, 'naturally aspirated', 420, 275, 'a'),
('Gas Engine 9',1542, 6, 16, 'naturally aspirated', 366, 215, 'a'),
('Gas Engine 10',1361, 6, 16, 'naturally aspirated', 365, 240, 'a'),
('Gas Engine 11',1814, 8, 32, 'naturally aspirated', 450, 340, 'a'),
('Diesel Engine 1',1588, 6, 12, 'naturally aspirated', 240, 182, 'a'),
('Electric Engine 1',2322, 0, 0, 'n/a', 850, 616, 'a'),
('Electric Engine 2',3175, 0, 0, 'n/a', 1400, 835, 'a'),
('Gas Engine 12',2087, 6, 16, 'naturally aspirated', 290, 185, 'a'),
('Gas Engine 13',1905, 8, 40, 'turbo', 560, 444, 'a'),
('Gas Engine 14',1406, 4, 16, 'turbo', 280, 200, 'm'),
('Gas Engine 15',2223, 6, 16, 'naturally aspirated', 380, 282, 'a'),
('Gas Engine 16',2041, 8, 32, 'naturally aspirated', 420, 340, 'a'),
('Gas Engine 17',1361, 6, 24, 'naturally aspirated', 420, 381, 'm'),
('Gas Engine 18',1451, 6, 24, 'naturally aspirated', 340, 295, 'a'),
('Gas Engine 19',1089, 4, 16, 'naturally aspirated', 145, 125, 'a'),
('Gas Engine 20',1588, 4, 16, 'naturally aspirated', 185, 136, 'a'),
('Gas Engine 21',1134, 4, 16, 'naturally aspirated', 145, 100, 'a'),
('Gas Engine 22',1451, 4, 20, 'turbo', 230, 190, 'a'),
('Gas Engine 23',1588, 10, 32, 'naturally aspirated', 480, 552, 'a'),
('Gas Engine 24',1723, 12, 48, 'naturally aspirated', 690, 690, 'a'),
('Gas Engine 25',1542, 10, 40, 'naturally aspirated', 560, 602, 'a'),
('Gas Engine 26',2359, 8, 32, 'turbo', 770, 500, 'a'),
('Gas Engine 27',1633, 10, 32, 'naturally aspirated', 430, 420, 'm'),
('Gas Engine 28',1542, 4, 16, 'turbo', 475, 375, 'a'),
('Gas Engine 29',1588, 4, 16, 'turbo', 400, 302, 'a'),
('Gas Engine 30',1905, 8, 32, 'turbo', 650, 507, 'a'),
('Gas Engine 31',1950,  4, 16, 'turbo', 500, 180, 'm'),
('Hybrid Engine 3',1497,  3, 12, 'turbo', 500, 369, 'a'),

;

-- Insert vehicles
INSERT INTO VEÍCULO (CONSUMO, COR, ANO, PESO, PREÇO, TRAÇÃO, NÚMERO_DE_ASSENTOS, ESTADO, AUTONOMIA, TOP_SPEED, DESCRIÇÃO_DA_CONDIÇÃO, SÉRIE, ID_VENDEDOR) VALUES
(13.84, 'Orange', 2014, 1395, 1300000, 'RWD', 2, 'Used', 13.84, 338, '17000 km, no damage, warranty expired', NULL, NULL),
(10.69, 'Silver', 2015, 1678, 1400000, 'AWD', 2, 'Used', 10.69, 340, '15000 km, no damage, 1 year warranty left', NULL, NULL),
-- Add more as needed
;

-- Insert fuel types
INSERT INTO COMBUSTÍVEL (TIPO) VALUES 
('Gas'),
('Electricity'),
('Diesel')
('Hybrid(Gas, Electricity)');

-- Map fuel types to vehicles
INSERT INTO FUNCIONA_A (ID_VEÍCULO, ID_COMBUSTÍVEL) VALUES
((SELECT ID FROM VEÍCULO WHERE COR = 'Orange'), (SELECT ID FROM COMBUSTÍVEL WHERE TIPO = 'Hybrid(Gas, Electricity)')),
((SELECT ID FROM VEÍCULO WHERE COR = 'Silver'), (SELECT ID FROM COMBUSTÍVEL WHERE TIPO = 'Hybrid(Gas, Electricity)')),
-- Add more as needed
;