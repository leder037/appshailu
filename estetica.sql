CREATE DATABASE SHAILU;

USE SHAILU;

CREATE TABLE USUARIOS(
id int(11) not null primary key auto_increment,
nombre varchar(60),
apellido varchar(60),
email varchar(30),
password varchar(60),
telefono varchar(10),
admin tinyint(1),
confirmado tinyint(1),
token varchar(15)
);

CREATE TABLE SERVICIOS(
id int(11) not null primary key auto_increment,
nombre varchar(60),
precio decimal(10,2)
);

CREATE TABLE CITAS(
id int(11) not null primary key auto_increment,
fecha date,
hora time,
usuarioId int(11),
FOREIGN KEY (usuarioId) REFERENCES USUARIOS(id)
);


CREATE TABLE CITASSERVICIOS(
id int(11)not null primary key auto_increment,
citaId int(11),
FOREIGN KEY (citaId) REFERENCES CITAS(id),
servicioId int(11),
FOREIGN KEY (servicioId) REFERENCES SERVICIOS(id)
);



INSERT INTO SERVICIOS VALUES(1, 'MICROPIGMENTACION DE LABIOS', 10),
(2, 'MICROPIGMENTACION DE CEJAS', 5),
(3, 'MASAJE CORPORAL', 3),
(4, 'EXFOLIASION FACIAL', 3),
(5, 'PLANCHADO DE CABELLO', 2);