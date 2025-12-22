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

/*INSERT OF DEPARTMENT */
INSERT INTO Department (nom) VALUES /*7ITE DERENA  AUTO_INCREMENT */
('Dev web'),
('Dev Mobile'),
('IT');
 /*INSERT OF Employee */
INSERT INTO Employee (nom, prenom, salaire, id_department) VALUES
('Soukayna', 'Assila', 5000.00, 3),
('Sara', 'Alaoui', 4500.00, 2),
('Taha', 'Mahir', 4000.00, 1);

/*INSERT OF Project*/
INSERT INTO Project (nom, id_employee) VALUES
('Website Redesign', 1),
('App Mobile', 3),
('Website with js', 2);

