-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TYPE types AS ENUM ('boss', 'employee');

CREATE TABLE employee_department(
  id serial PRIMARY KEY,
  name VARCHAR (255) UNIQUE NOT NULL,
  description text
    
); 
CREATE TABLE employee(
  id serial PRIMARY KEY,
  firs_name VARCHAR (50) NOT NULL,
  last_name VARCHAR (50) NOT NULL,
  department_id integer NOT NULL,
  type types NOT NULL,
  boss_id integer NULL,

  FOREIGN KEY (department_id) REFERENCES employee_department
      ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (boss_id) REFERENCES employee
      ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE employee_hobby(
  id serial PRIMARY KEY,
  name VARCHAR (255) UNIQUE NOT NULL,
  description text
    
);

CREATE TABLE employee_employee_hobby(

  employee_id serial ,
  employee_hobby_id serial,
 

  FOREIGN KEY (employee_id) REFERENCES employee
  ON DELETE CASCADE ON UPDATE CASCADE,
  FOREIGN KEY (employee_hobby_id) REFERENCES employee_hobby
  ON DELETE CASCADE ON UPDATE CASCADE,

  PRIMARY KEY (employee_id, employee_hobby_id)
);


INSERT INTO employee_department (name,description) VALUES ('Recursos Humanos', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO employee_department (name,description) VALUES ('Administracion', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO employee_department (name,description) VALUES ('Gerencia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO employee_department (name,description) VALUES ('Ventas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO employee_department (name,description) VALUES ('Estrategia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO employee_department (name,description) VALUES ('Garantias', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');

INSERT INTO employee  (firs_name, last_name, department_id,"type") VALUES ('Delia', 'Larez',6,'boss');
INSERT INTO employee  (firs_name, last_name, department_id, "type", boss_id ) VALUES ('Erika', 'Pinedo',5,'employee',1);
INSERT INTO employee  (firs_name, last_name, department_id, "type", boss_id ) VALUES ('Oriana', 'Castillo',4,'employee',1);
INSERT INTO employee  (firs_name, last_name, department_id, "type", boss_id ) VALUES ('Cesar', 'Rodriguez',3,'employee',1);
INSERT INTO employee  (firs_name, last_name, department_id, "type", boss_id ) VALUES ('Luis', 'Garcia',6,'employee',1);

INSERT INTO employee_hobby (name,description) VALUES ('Crossfit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO employee_hobby (name,description) VALUES ('TRX', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO employee_hobby (name,description) VALUES ('Salsa Casino', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');


INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('1','1');
INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('1','2');

INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('2','3');
INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('2','1');

INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('3','2');
INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('3','3');

INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('4','1');
INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('4','2');

INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('5','3');
INSERT INTO employee_employee_hobby (employee_id,employee_hobby_id) VALUES ('5','1');



