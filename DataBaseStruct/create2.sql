
PRAGMA foreign_keys = ON;

-- Tabela VEÍCULO
DROP TABLE IF EXISTS VEÍCULO;
CREATE TABLE VEÍCULO (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    CONSUMO INTEGER NOT NULL CHECK (CONSUMO >= 0),
    COR TEXT NOT NULL,
    ANO DATE NOT NULL, 
    PESO INTEGER NOT NULL CONSTRAINT Peso CHECK (PESO > 0),
    PREÇO INTEGER NOT NULL CONSTRAINT Preço CHECK (PREÇO > 0),
    TRAÇÃO TEXT NOT NULL,
    NÚMERO_DE_ASSENTOS INTEGER NOT NULL CONSTRAINT Assentos CHECK (NÚMERO_DE_ASSENTOS > 0),
    ESTADO TEXT NOT NULL,
    TOP_SPEED INTEGER NOT NULL,
    DESCRIÇÃO TEXT NOT NULL,
    SÉRIE INTEGER,
    ID_VENDEDOR INTEGER,
    FOREIGN KEY (SÉRIE) REFERENCES MOTOR(NÚMERO_SÉRIE) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDOR(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

-- Tabela MOTOR
DROP TABLE IF EXISTS MOTOR;
CREATE TABLE MOTOR (
    NÚMERO_SÉRIE INTEGER PRIMARY KEY,
    NOME TEXT NOT NULL,
    CILINDRADA INTEGER NOT NULL CONSTRAINT Cilindrada CHECK (CILINDRADA >= 0),
    NÚMERO_DE_CILINDROS INTEGER NOT NULL CONSTRAINT Cilindros CHECK (NÚMERO_DE_CILINDROS >= 0),
    NÚMERO_DE_VÁLVULAS INTEGER NOT NULL CONSTRAINT Válvulas CHECK (NÚMERO_DE_VÁLVULAS >= 0),
    ASPIRAÇÃO TEXT NOT NULL,
    BINÁRIO INTEGER NOT NULL CONSTRAINT Binário CHECK (BINÁRIO > 0),
    POTÊNCIA INTEGER NOT NULL CONSTRAINT Potència CHECK (POTÊNCIA > 0),
    CAIXA_DE_VELOCIDADES TEXT NOT NULL CONSTRAINT Caixa CHECK(CAIXA_DE_VELOCIDADES IN ('a','m'))
);

-- Tabela COMBUSTÍVEL
DROP TABLE IF EXISTS COMBUSTÍVEL;
CREATE TABLE COMBUSTÍVEL (
    ID INTEGER PRIMARY KEY,
    TIPO TEXT NOT NULL UNIQUE
);

-- Tabela FUNCIONA_A
DROP TABLE IF EXISTS FUNCIONA_A;
CREATE TABLE FUNCIONA_A (
    ID_VEÍCULO INTEGER,
    ID_COMBUSTÍVEL INTEGER,
    PRIMARY KEY (ID_VEÍCULO, ID_COMBUSTÍVEL),
    FOREIGN KEY (ID_VEÍCULO) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ID_COMBUSTÍVEL) REFERENCES COMBUSTÍVEL(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela UTILIZADOR
DROP TABLE IF EXISTS UTILIZADOR;
CREATE TABLE UTILIZADOR (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    EMAIL TEXT NOT NULL UNIQUE,
    HASH_PALAVRA_PASSE INTEGER NOT NULL,
    USERNAME TEXT NOT NULL UNIQUE,
    PAÍS TEXT NOT NULL,
    MORADA TEXT NOT NULL
);

-- Tabela CLIENTE
DROP TABLE IF EXISTS CLIENTE;
CREATE TABLE CLIENTE (
    ID INTEGER PRIMARY KEY,
    PREFERÊNCIAS TEXT,
    FOREIGN KEY (ID) REFERENCES UTILIZADOR(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela VENDEDOR
DROP TABLE IF EXISTS VENDEDOR;
CREATE TABLE VENDEDOR (
    ID INTEGER PRIMARY KEY,
    HISTÓRICO TEXT,
    MARCA_ASSOCIADA TEXT,
    FOREIGN KEY (ID) REFERENCES UTILIZADOR(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela ANÚNCIO
DROP TABLE IF EXISTS ANÚNCIO;
CREATE TABLE ANÚNCIO (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    DATA DATE NOT NULL,
    ID_VEÍCULO INTEGER UNIQUE,
    ID_VENDEDOR INTEGER,
    FOREIGN KEY (ID_VEÍCULO) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDOR(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela INTERAGIU
DROP TABLE IF EXISTS INTERAGIU;
CREATE TABLE INTERAGIU (
    ID_ANÚNCIO INTEGER,
    ID_CLIENTE INTEGER,
    PRIMARY KEY (ID_ANÚNCIO, ID_CLIENTE),
    FOREIGN KEY (ID_ANÚNCIO) REFERENCES ANÚNCIO(ID) ON UPDATE CASCADE ON DELETE CASCADE,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela MARCA
DROP TABLE IF EXISTS MARCA;
CREATE TABLE MARCA (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NOME TEXT NOT NULL UNIQUE,
    PAÍS_ORIGEM TEXT NOT NULL,
    ID_VENDEDOR INTEGER,
    FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDOR(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela CARRO
DROP TABLE IF EXISTS CARRO;
CREATE TABLE CARRO (
    ID INTEGER PRIMARY KEY,
    CATEGORIA TEXT NOT NULL,
    NÚMERO_PORTAS INTEGER NOT NULL CHECK (NÚMERO_PORTAS > 1),
    FOREIGN KEY (ID) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela MOTOCICLO
DROP TABLE IF EXISTS MOTOCICLO;
CREATE TABLE MOTOCICLO (
    ID INTEGER PRIMARY KEY,
    CATEGORIA TEXT NOT NULL,
    FOREIGN KEY (ID) REFERENCES VEÍCULO(ID) ON UPDATE CASCADE ON DELETE CASCADE
);

-- Tabela MODELO
DROP TABLE IF EXISTS MODELO;
CREATE TABLE MODELO (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NOME TEXT NOT NULL,
    DATA_LANÇAMENTO DATE NOT NULL,
    VARIANTE TEXT NOT NULL,
    ID_CARRO INTEGER DEFAULT NULL,
    ID_MOTOCICLO INTEGER DEFAULT NULL,
    ID_MARCA INTEGER,
    FOREIGN KEY (ID_CARRO) REFERENCES CARRO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_MOTOCICLO) REFERENCES MOTOCICLO(ID) ON UPDATE CASCADE ON DELETE SET NULL,
    FOREIGN KEY (ID_MARCA) REFERENCES MARCA(ID) ON UPDATE CASCADE ON DELETE SET NULL
);

