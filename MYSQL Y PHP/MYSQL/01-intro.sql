--MYSQL -U ROOT ---> XAMP
--MYSQL -U ROOT -P -->SERVIDORES DE PRODUCCIÓN

-- COMANDOS INICIALES
-- MOSTRAR BASES DE DATOS

SHOW DATABASES;

CREATE DATABASE esfuerzo_propio;



DROP DATABASE esfuerzo_propio;

USE esfuerso_propio;
-- PRIMARY KEY --> FOREIGN KEY --> METADATOS
-- CREACION DE TABLAS
-- BASE DE DATOS RELACIONALES
-- DATE -> 2021-10-10
--DATETIME ->2021-10-10 15:00:12
CREATE TABLE persona(
		per_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
		per_nombre VARCHAR(50) NOT NULL, 
		per_apellidos VARCHAR(255) NOT NULL,
		per_dire VARCHAR(255) NOT NULL,
		per_fecha_nac DATE NOT NULL,
		per_dni CHAR(8) NOT NULL
)

SHOW TABLES;

DESC persona;

-- AGREGAR CAMPOS
ALTER TABLE persona ADD COLUMN per_genero VARCHAR(25) NOT NULL

ALTER TABLE persona CHANGE COLUMN per_genero per_genero CHAR(1)

ALTER TABLE persona ADD COLUMN per_fecha_creacion DATETIME NOT NULL AFTER per_fecha_nac

ALTER TABLE persona DROP COLUMN per_genero

--INSERTAR DATOS
INSERT INTO persona (per_nombre, per_apellidos, per_dire, per_fecha_nac, per_fecha_creacion, per_dni,
per_genero) VALUES ("David", "Carhuamaca Huarcaya", "prolongacion tarapaca #301", "1981-02-15", "2021-10-14", "40805518", "masculino")

SELECT * FROM persona

DELETE FROM persona WHERE per_id = 2

INSERT INTO persona (per_nombre, per_apellidos, per_dire, per_fecha_nac, per_fecha_creacion, per_dni,
per_genero) VALUES ('sofia', 'Rodrigues', 'AV. Centenario 2000', '1999-08-16', '2021-08-05','22222222', 'Femenino')

--BORRA TAMBIEN LOS METADATOS
TRUNCATE persona --PARA QUE EL ID INCREMENTADO REPITA DESDE EL INCIO ES MAS PODEROSO QUE UN DELETE

--BORRAR TABLA
DROP TABLE persona;

--BORRAR DATABASE
DROP DATABASE propio_esfuerzo;

------*******************************
CREATE TABLE peliculas(
peli_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
peli_nombre VARCHAR(255) NOT NULL,
peli_genero VARCHAR(255) NOT NULL,
peli_estreno DATE NOT NULL,
peli_restriciones VARCHAR(50)
)

INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restriciones) VALUES
('Deadpool 2','ciencia ficcion', '2018-01-30', 'PG-18')

SELECT peli_nombre FROM peliculas

INSERT INTO peliculas (peli_nombre, peli_genero, peli_estreno, peli_restriciones) VALUES
('Star wars: The last jedi','ciencia ficcion', '2019-12-30', 'PG'),
('Interestellar', 'Ciencia ficcion', '2015-02-89', 'PG-14'),
('Masacre en texas', 'Terror', '2000-09-05', 'PG-16'),
('Back to the foture', 'Ciencia ficcion', '1985-12-12', 'PG'),
('Kill Bill', 'Accion', '2011-11-11', 'PG-16'),
('Asu Mare', 'Comedia', '2014-02-02', 'PG')

