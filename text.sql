CREATE TABLE VEÍCULO
(
    ID INT PRIMARY KEY CHECK(ID>=0 AND ID<=1000),
    CONSUMO INT,
    COR TEXT,
    ANO DATE,
    PESO INT,
    PREÇO INT,
    TRAÇÃO TEXT,
    NÚMERO_DE_ASSENTOS INT,
    ESTADO TEXT,
    SÉRIE INT,
    ID_VENDEDOR INT,
    FOREIGN KEY SÉRIE REFERENCES MOTOR(NÚMERO_SÉRIE),
    FOREIGN KEY ID_VENDEDOR REFERENCES VENDEDOR(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE MOTOR
(
    NÚMERO_SÉRIE INT PRIMARY KEY,
    NOME TEXT,
    CILINDRADA INT,
    NÚMERO_DE_CILINDROS INT,
    NÚMERO_DE_VÁLVULAS INT,
    ASPIRAÇÃO TEXT,
    BINÁRIO INT,
    POTÊNCIA INT,
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE COMBUSTÍVEL 
(
    ID INT PRIMARY KEY,
    TIPO TEXT CHECK(TIPO != NULL),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE FUNCIONA_A
(
    ID_VEÍCULO INT,
    ID_COMBUSTÍVEL INT,
    PRIMARY KEY (ID_VEÍCULO,ID_COMBUSTÍVEL),
    FOREIGN KEY ID_VEÍCULO REFERENCES VEÍCULO(ID),
    FOREIGN KEY ID_COMBUSTÍVEL REFERENCES COMBUSTÍVEL(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE UTILIZADOR
(
    ID INT PRIMARY KEY,
    EMAIL TEXT CHECK(EMAIL != NULL),
    HASH_PALAVRA_PASSE INT CHECK(HASH_PALAVRA_PASSE != NULL),
    USERNAME TEXT CHECK(USERNAME != NULL),
    PAÍS TEXT CHECK(PAÍS != NULL),
    MORADA TEXT CHECK(MORADA != NULL),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE CLIENTE
(
    ID INT PRIMARY KEY,
    PREFERÊNCIAS TEXT,
    FOREIGN KEY ID REFERENCES UTILIZADOR(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE VENDEDOR
(
    ID INT PRIMARY KEY,
    HISTÓRICO TEXT,
    MARCA_ASSOCIADA TEXT,
    FOREIGN KEY ID REFERENCES UTILIZADOR(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE ANÚNCIO
(
    ID INT PRIMARY KEY,
    DATA DATE CHECK(DATE != NULL),
    ID_VEÍCULO INT UNIQUE KEY,
    ID_VENDEDOR INT,
    FOREIGN KEY ID_VEÍCULO REFERENCES VEÍCULO(ID),
    FOREIGN KEY ID_VENDEDOR REFERENCES VENDEDOR(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE INTERAGIU
(
    ID_ANÚNCIO INT,
    ID_VEÍCULO INT,
    PRIMARY KEY (ID_ANÚNCIO,ID_VEÍCULO),
    FOREIGN KEY ID_VEÍCULO REFERENCES VEÍCULO(ID),
    FOREIGN KEY ID_ANÚNCIO REFERENCES ANÚNCIO(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE MARCA
(
    ID INT PRIMARY KEY,
    NOME TEXT,
    PAÍS_ORIGEM TEXT,
    ID_VENDEDOR INT,
    FOREIGN KEY ID_VENDEDOR REFERENCES VENDEDOR(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE CARRO
(
    ID INT PRIMARY KEY,
    CATEGORIA TEXT,
    NÚMERO_PORTAS INT,
    FOREIGN KEY ID REFERENCES VEÍCULO(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE MOTOCICLO
(
    ID INT PRIMARY KEY,
    CATEGORIA TEXT,
    FOREIGN KEY ID REFERENCES VEÍCULO(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);

CREATE TABLE MODELO
(
    ID INT PRIMARY KEY,
    NOME TEXT,
    DATA_LANÇAMENTO DATE,
    VARIANTE TEXT,
    ID_CARRO INT,
    ID_MOTOCICLO INT,
    ID_MARCA INT,
    FOREIGN KEY ID_CARRO REFERENCES CARRO(ID),
    FOREIGN KEY ID_MOTOCICLO REFERENCES MOTOCICLO(ID),
    FOREIGN KEY ID_MARCA REFERENCES MARCA(ID),
    ON DELETE SET NULL
    ON UPDATE CASCADE
);
