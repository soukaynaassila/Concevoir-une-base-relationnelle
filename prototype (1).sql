/*create database*/
CREATE DATABASE prototype;
USE prototype;
/*creat Deparetment table */
CREATE TABLE Department (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL
);
/*creat Employee table */
CREATE TABLE Employee (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  prenom VARCHAR(100) NOT NULL,
  salaire DECIMAL(10,2) NOT NULL CHECK (salaire >= 0),
  id_department INT,
  FOREIGN KEY (id_department) REFERENCES Department(id)
);
/*creat Project table */
CREATE TABLE Project (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100) NOT NULL,
  id_employee INT,
  FOREIGN KEY (id_employee) REFERENCES Employee(id)
);
