CREATE SCHEMA reto;

CREATE TABLE reto.employee_department(
 	id serial PRIMARY KEY,
 	name VARCHAR (255) UNIQUE NOT NULL,
	description VARCHAR (350) NOT NULL
	  
);
CREATE TABLE reto.employee(
	 id serial PRIMARY KEY,
	 firs_name VARCHAR (50) NOT NULL,
	 last_name VARCHAR (50) NOT NULL,
 	 department_id integer NOT NULL,
 	 CONSTRAINT employee_belongs_to_a_department_department_id_fkey FOREIGN KEY (department_id)
      REFERENCES reto.employee_department (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO reto.employee_department VALUES ('1', 'Recursos Humanos', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO reto.employee_department VALUES ('2', 'Administracion', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO reto.employee_department VALUES ('3', 'Gerencia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO reto.employee_department VALUES ('4', 'Ventas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO reto.employee_department VALUES ('5', 'Estrategia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO reto.employee_department VALUES ('6', 'Garantias', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');

INSERT INTO reto.employee VALUES (1, 'Luis', 'Garcia',6);
INSERT INTO reto.employee VALUES (2, 'Erika', 'Pinedo',5);
INSERT INTO reto.employee VALUES (3, 'Oriana', 'Castillo',4);
INSERT INTO reto.employee VALUES (4, 'Cesar', 'Rodriguez',3);


--

CREATE TABLE reto.hobbies(
 	id serial PRIMARY KEY,
 	name VARCHAR (255) UNIQUE NOT NULL,
	description VARCHAR (350) NOT NULL
	  
);

CREATE TABLE reto.employee_performs_hobbies
(
  employee_id integer NOT NULL,
  hobbies_id integer NOT NULL,
  PRIMARY KEY (employee_id, hobbies_id),
  CONSTRAINT employee_performs_hobbies_id_fkey FOREIGN KEY (hobbies_id)
      REFERENCES reto.hobbies (id) MATCH SIMPLE
       ON UPDATE CASCADE ON DELETE CASCADE,
  CONSTRAINT employee_performs_hobbies_employee_id_fkey FOREIGN KEY (employee_id)
      REFERENCES reto.employee (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO reto.hobbies VALUES ('1', 'Crossfit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO reto.hobbies VALUES ('2', 'TRX', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO reto.hobbies VALUES ('3', 'Salsa Casino', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');



INSERT INTO reto.employee_performs_hobbies VALUES (1,1);
INSERT INTO reto.employee_performs_hobbies VALUES (1,2);

INSERT INTO reto.employee_performs_hobbies VALUES (2,3);
INSERT INTO reto.employee_performs_hobbies VALUES (2,1);

INSERT INTO reto.employee_performs_hobbies VALUES (3,2);
INSERT INTO reto.employee_performs_hobbies VALUES (3,3);

INSERT INTO reto.employee_performs_hobbies VALUES (4,1);
INSERT INTO reto.employee_performs_hobbies VALUES (4,2);