set SERVEROUTPUT on;
-----CREACION DE TABLAS
CREATE TABLE gerente(
    idGerente NUMBER(20) primary key,
    descGerente varchar(50),
    fechaRegistro DATE

);
CREATE TABLE condicion(
    idCondicion NUMBER(20) PRIMARY KEY,
    descCondicion varchar(50),
    fechaRegistro DATE

);
CREATE TABLE hospital(
    idHospital NUMBER PRIMARY KEY,
    idDistrito NUMBER(20),
    Nombre varchar(30),
    Antiguedad NUMBER(30),
    Area NUMBER(5,2),
    idSede NUMBER(30),
    idGerente NUMBER(30)UNIQUE,
    idCondicion NUMBER(30),
    fechaRegistro DATE,
    FOREIGN KEY (idDistrito) REFERENCES distrito(idDistrito),
    FOREIGN KEY (idGerente) REFERENCES gerente(idGerente),
    FOREIGN KEY (idCondicion) REFERENCES condicion(idCondicion)
);
CREATE TABLE distrito(
    idDistrito NUMBER(30) PRIMARY KEY,
    idProvincia NUMBER(30),
    descDistrito varchar(30),
    fechaRegistro DATE,
    FOREIGN KEY (idProvincia) REFERENCES provincia(idProvincia)
);
CREATE TABLE provincia(
    idProvincia NUMBER(30) PRIMARY KEY ,
    descProvincia VARCHAR(50),
    fechaRegsitro DATE
);



---------------------- INSERTAR VALORES -----------------------
select * from provincia
INSERT INTO provincia (idProvincia, descProvincia, fechaRegsitro) 
VALUES (1, 'Lima', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO provincia (idProvincia, descProvincia, fechaRegsitro) 
VALUES (2, 'Arequipa', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO provincia (idProvincia, descProvincia, fechaRegsitro) 
VALUES (3, 'Cusco', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO provincia (idProvincia, descProvincia, fechaRegsitro) 
VALUES (4, 'Trujillo', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

SELECT * FROM distrito

INSERT INTO distrito (idDistrito, idProvincia, descDistrito, fechaRegistro) 
VALUES (1, 1, 'Miraflores', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO distrito (idDistrito, idProvincia, descDistrito, fechaRegistro) 
VALUES (2, 1, 'San Isidro', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO distrito (idDistrito, idProvincia, descDistrito, fechaRegistro) 
VALUES (3, 2, 'Cayma', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO distrito (idDistrito, idProvincia, descDistrito, fechaRegistro) 
VALUES (4, 2, 'Socabaya', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO distrito (idDistrito, idProvincia, descDistrito, fechaRegistro) 
VALUES (5, 1, 'CALLAO', TO_DATE('2024-04-17', 'YYYY-MM-DD'));


select * from gerente

INSERT INTO gerente (idGerente, descGerente, fechaRegistro) 
VALUES (1, 'Juan Pérez', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO gerente (idGerente, descGerente, fechaRegistro) 
VALUES (2, 'María González', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO gerente (idGerente, descGerente, fechaRegistro) 
VALUES (3, 'Carlos López', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO gerente (idGerente, descGerente, fechaRegistro) 
VALUES (4, 'Ana Rodríguez', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO gerente (idGerente, descGerente, fechaRegistro) 
VALUES (5, 'Jhon Mallcco', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO gerente (idGerente, descGerente, fechaRegistro) 
VALUES (6, 'Diego Mallcco', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO gerente (idGerente, descGerente, fechaRegistro) 
VALUES (7, 'Pedrito Mallcco', sysdate);



select * from condicion

INSERT INTO condicion (idCondicion, descCondicion, fechaRegistro) 
VALUES (1, 'Bueno', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO condicion (idCondicion, descCondicion, fechaRegistro) 
VALUES (2, 'Regular', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO condicion (idCondicion, descCondicion, fechaRegistro) 
VALUES (3, 'Malo', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO condicion (idCondicion, descCondicion, fechaRegistro) 
VALUES (4, 'Muy bueno', TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO condicion (idCondicion, descCondicion, fechaRegistro) 
VALUES (5, 'Probando Condicion', SYSDATE);


select * from hospital 

INSERT INTO hospital (idHospital, idDistrito, Nombre, Antiguedad, Area, idSede, idGerente, idCondicion, fechaRegistro) 
VALUES (1, 1, 'Hospital Central', 20, 500.50, 1, 1, 1, TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO hospital (idHospital, idDistrito, Nombre, Antiguedad, Area, idSede, idGerente, idCondicion, fechaRegistro) 
VALUES (2, 2, 'Hospital San Isidro', 15, 400.75, 1, 2, 2, TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO hospital (idHospital, idDistrito, Nombre, Antiguedad, Area, idSede, idGerente, idCondicion, fechaRegistro) 
VALUES (3, 3, 'Hospital Regional de Arequipa', 25, 800.20, 1, 3, 3, TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO hospital (idHospital, idDistrito, Nombre, Antiguedad, Area, idSede, idGerente, idCondicion, fechaRegistro) 
VALUES (4, 4, 'Hospital Belén de Trujillo', 30, 700.40, 1, 4, 4, TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO hospital (idHospital, idDistrito, Nombre, Antiguedad, Area, idSede, idGerente, idCondicion, fechaRegistro) 
VALUES (5, 5, 'Nacional', 10, 300.00, 1, 5, 5, TO_DATE('2024-04-17', 'YYYY-MM-DD'));

INSERT INTO hospital (idHospital, idDistrito, Nombre, Antiguedad, Area, idSede, idGerente, idCondicion, fechaRegistro) 
VALUES (6, 5, 'Nacional Prueba', 10, 300.00, 1, 7, 5, SYSDATE);

---------------------- PREGUNTAS -----------------------
--NUMERO 3--
UPDATE hospital SET idGerente = 2 WHERE idHospital = 1;
--NUMERO 4---
DELETE FROM hospital WHERE idHospital = 1;
--NUMERO 5 --
--Realizar las siguientes listas:
--a. Listar los hospitales que se encuentran en la provincia xxxx.
SELECT idHospital,Nombre FROM hospital h
JOIN distrito d ON h.idDistrito = d.idDistrito
JOIN provincia p ON d.idProvincia = p.idProvincia
WHERE p.descProvincia = 'Lima';

--b. Listar los hospitales que tengan como nombre ‘Nacional’.
SELECT * FROM hospital WHERE Nombre LIKE 'Nacional%';

--c. Listar los hospitales que terminen con la letra ‘a’.
SELECT * FROM hospital WHERE Nombre LIKE '%a';

--d. Listar todos los hospitales, pero en mayúscula.
SELECT UPPER(Nombre) AS Lista_Hospitales_Mayus FROM hospital;

--e. Listar las provincias y contabilizar cuantos hospitales existen por provincia. 
SELECT p.descProvincia,
COUNT(h.idHospital) AS Total_Hospitales
FROM hospital h
JOIN distrito d ON h.idDistrito = d.idDistrito
JOIN provincia p ON d.idProvincia = p.idProvincia
GROUP BY p.descProvincia;





