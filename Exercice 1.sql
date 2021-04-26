DROP DATABASE IF EXISTS Exercice1;

CREATE DATABASE Exercice1;

USE Exercice1;

CREATE TABLE Client (
  cli_num int NOT NULL AUTO_INCREMENT,
  cli_nom varchar(50) NOT NULL INDEX,
  cli_adresse varchar(50) NOT NULL,
  cli_tel varchar(30) NOT NULL,
  PRIMARY KEY (cli_num)
);

CREATE TABLE Commande (
  com_num int NOT NULL AUTO_INCREMENT,
  cli_num int NOT NULL,
  com_date datetime NOT NULL,
  com_obs varchar (50) NOT NULL,
  PRIMARY KEY (com_num),
  CONSTRAINT Commande FOREIGN KEY (cli_num) REFERENCES Client (cli_num)
) ;

CREATE TABLE Produit (
  pro_num int NOT NULL AUTO_INCREMENT,
  pro_libelle varchar(50) NOT NULL,
  pro_description varchar(50) NOT NULL ,
  PRIMARY KEY (pro_num)

);

CREATE TABLE est_compose (
 com_num int NOT NULL,
 pro_num int NOT NULL,
 est_qte int NOT NULL,
  PRIMARY KEY (com_num, pro_num),
  CONSTRAINT est_compose FOREIGN KEY (com_num) REFERENCES Commande (com_num),
  CONSTRAINT est_compose FOREIGN KEY (pro_num) REFERENCES Produit (pro_num)
);
