PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS VEÍCULO;
CREATE TABLE VEÍCULO
(
    ID INT PRIMARY KEY AUTOINCREMENT,
    CONSUMO INT NOT NULL,
    COR TEXT NOT NULL,
    ANO DATE NOT NULL,
    PESO INT NOT NULL,
    PREÇO INT NOT NULL,
    TRAÇÃO TEXT NOT NULL,
    NÚMERO_DE_ASSENTOS INT NOT NULL,
    ESTADO TEXT NOT NULL,
    SÉRIE INT,
    ID_VENDEDOR INT,
    FOREIGN KEY (SÉRIE) REFERENCES MOTOR(NÚMERO_SÉRIE) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDOR(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS MOTOR;
CREATE TABLE MOTOR
(
    NÚMERO_SÉRIE INT PRIMARY KEY AUTOINCREMENT,
    NOME TEXT NOT NULL,
    CILINDRADA INT NOT NULL,
    NÚMERO_DE_CILINDROS INT NOT NULL,
    NÚMERO_DE_VÁLVULAS INT NOT NULL,
    ASPIRAÇÃO TEXT NOT NULL,
    BINÁRIO INT NOT NULL,
    POTÊNCIA INT NOT NULL,
);

DROP TABLE IF EXISTS COMBUSTÍVEL;
CREATE TABLE COMBUSTÍVEL 
(
    ID INT PRIMARY KEY AUTOINCREMENT,
    TIPO TEXT NOT NULL
);

DROP TABLE IF EXISTS FUNCIONA_A;
CREATE TABLE FUNCIONA_A
(
    ID_VEÍCULO INT,
    ID_COMBUSTÍVEL INT,
    PRIMARY KEY (ID_VEÍCULO,ID_COMBUSTÍVEL),
    FOREIGN KEY (ID_VEÍCULO) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_COMBUSTÍVEL) REFERENCES COMBUSTÍVEL(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS UTILIZADOR;
CREATE TABLE UTILIZADOR
(
    ID INT PRIMARY KEY AUTOINCREMENT,
    EMAIL TEXT NOT NULL,
    HASH_PALAVRA_PASSE INT NOT NULL UNIQUE,
    USERNAME TEXT NOT NULL UNIQUE,
    PAÍS TEXT NOT NULL,
    MORADA TEXT NOT NULL
);

DROP TABLE IF EXISTS CLIENTE;
CREATE TABLE CLIENTE
(
    ID INT PRIMARY KEY,
    PREFERÊNCIAS TEXT,
    FOREIGN KEY (ID) REFERENCES UTILIZADOR(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS VENDEDOR;
CREATE TABLE VENDEDOR
(
    ID INT PRIMARY KEY,
    HISTÓRICO TEXT,
    MARCA_ASSOCIADA TEXT,
    FOREIGN KEY (ID) REFERENCES UTILIZADOR(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS ANÚNCIO;
CREATE TABLE ANÚNCIO
(
    ID INT PRIMARY KEY AUTOINCREMENT,
    DATA DATE NOT NULL,
    ID_VEÍCULO INT UNIQUE,
    ID_VENDEDOR INT,
    FOREIGN KEY (ID_VEÍCULO) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDOR(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS INTERAGIU;
CREATE TABLE INTERAGIU
(
    ID_ANÚNCIO INT,
    ID_VEÍCULO INT,
    PRIMARY KEY (ID_ANÚNCIO,ID_VEÍCULO),
    FOREIGN KEY (ID_VEÍCULO) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_ANÚNCIO) REFERENCES ANÚNCIO(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS MARCA;
CREATE TABLE MARCA
(
    ID INT PRIMARY KEY AUTOINCREMENT,
    NOME TEXT NOT NULL,
    PAÍS_ORIGEM TEXT NOT NULL,
    ID_VENDEDOR INT,
    FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDOR(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS CARRO;
CREATE TABLE CARRO
(
    ID INT PRIMARY KEY,
    CATEGORIA TEXT NOT NULL,
    NÚMERO_PORTAS INT NOT NULL,
    FOREIGN KEY (ID) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    CONSTRAINT Número_portas CHECK(NÚMERO_PORTAS>1)
);

DROP TABLE IF EXISTS MOTOCICLO;
CREATE TABLE MOTOCICLO
(
    ID INT PRIMARY KEY,
    CATEGORIA TEXT NOT NULL,
    FOREIGN KEY (ID) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

DROP TABLE IF EXISTS MODELO;
CREATE TABLE MODELO
(
    ID INT PRIMARY KEY AUTOINCREMENT,
    NOME TEXT NOT NULL,
    DATA_LANÇAMENTO DATE NOT NULL,
    VARIANTE TEXT NOT NULL,
    ID_CARRO  DEFAULT NULL,
    ID_MOTOCICLO INT DEFAULT NULL,
    ID_MARCA INT,
    FOREIGN KEY (ID_CARRO) REFERENCES CARRO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_MOTOCICLO) REFERENCES MOTOCICLO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_MARCA) REFERENCES MARCA(ID) ON UPDATE CASCADE ON DELETE SET NULL
);
