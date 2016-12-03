CREATE TABLE employee_department(
 	id serial PRIMARY KEY,
 	name VARCHAR (255) UNIQUE NOT NULL,
	description VARCHAR (150) NOT NULL
	  
);
CREATE TABLE employee(
	 id serial PRIMARY KEY,
	 firs_name VARCHAR (50) UNIQUE NOT NULL,
	 last_name VARCHAR (50) NOT NULL,
 	 department_id integer NOT NULL,
 	 CONSTRAINT employee_belongs_to_a_department_department_id_fkey FOREIGN KEY (department_id)
      REFERENCES employee_department (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
);

INSERT INTO public.employee_department VALUES ('1', 'Recursos Humanos', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO public.employee_department VALUES ('2', 'Administracion', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO public.employee_department VALUES ('3', 'Gerencia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO public.employee_department VALUES ('4', 'Ventas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO public.employee_department VALUES ('5', 'Estrategia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');
INSERT INTO public.employee_department VALUES ('6', 'Garantias', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim');

INSERT INTO public.employee_department VALUES (1, 'Luis', 'Garcia',6);
INSERT INTO public.employee_department VALUES (2, 'Erika', 'Pinedo',5);
INSERT INTO public.employee_department VALUES (3, 'Oriana', 'Castillo',4);
INSERT INTO public.employee_department VALUES (4, 'Cesar', 'Rodriguez',3);

--1 to many relationship between employee and employee_department