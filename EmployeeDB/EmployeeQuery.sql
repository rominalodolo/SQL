BEGIN;


CREATE TABLE "Department"
(
    depart_id bigserial NOT NULL,
    depart_name character varying(50),
    depart_city character varying(50),
    CONSTRAINT "Department_pkey" PRIMARY KEY (depart_id)
);

CREATE TABLE "Employees"
(
    emp_id bigserial NOT NULL,
    first_name character varying(50),
    surname character varying(50),
    gender character varying(25),
    address character varying(50),
    email character varying(50),
    depart_id int REFERENCES "Department"(depart_id),
    role_id int REFERENCES "Roles"(role_id),
    salary_id int REFERENCES "Salaries"(salaries_id),
    overtime_id int REFERENCES "OvertimeHours"(overtime_id),
    CONSTRAINT employee_id PRIMARY KEY (emp_id)
);

CREATE TABLE "OvertimeHours"
(
    overtime_id bigserial NOT NULL,
    overtime_hours integer,
    CONSTRAINT "OvertimeHours_pkey" PRIMARY KEY (overtime_id)
);

CREATE TABLE "Roles"
(
    role_id bigserial NOT NULL,
    role character varying(25) COLLATE pg_catalog."default",
    CONSTRAINT "Roles_pkey" PRIMARY KEY (role_id)
);

CREATE TABLE "Salaries"
(
    salaries_id bigserial NOT NULL,
    salary_pa money,
    CONSTRAINT salaries_pkey PRIMARY KEY (salaries_id)
);

INSERT INTO "OvertimeHours" (overtime_hours)
VALUES 
  (5),
  (7),
  (1),
  (8),
  (3),
  (5),
  (7),
  (4),
  (2),
  (13);

INSERT INTO "Roles" (role)
VALUES 
  ('HR'),
  ('PR'),
  ('Admin'),
  ('Security'),
  ('IT'),
  ('Design'),
  ('CEO'),
  ('COO'),
  ('Accounting'),
  ('Marketing');

INSERT INTO "Salaries" (salary_pa)
VALUES 
  (5000),
  (12000),
  (4000),
  (2000),
  (30200),
  (21000),
  (50000),
  (43000),
  (32000),
  (18000);


INSERT INTO "Department" (depart_name, depart_city)
VALUES 
  ('Human Resource', 'Joburg'),
  ('Public Relations', 'Joburg'),
  ('Administrater', 'Joburg'),
  ('Security', 'Joburg'),
  ('Software and Tech', 'Joburg'),
  ('Marketing', 'Joburg'),
  ('Leaders', 'Pretoria'),
  ('Leaders', 'Joburg'),
  ('Accounting', 'Joburg'),
  ('Marketing', 'Pretoria');


INSERT INTO "Employees" (first_name, surname, gender, address, email, depart_id, role_id, salary_id, overtime_id)
VALUES
  ('Tasha','Kline', 'Female','1451 A St.','sit.amet.consectetuer@yahoo.ca', 1, 1, 1, 1),
  ('Jamal','Watts', 'Female', '556-9451 In St.','in.molestie.tortor@protonmail.com', 2, 2, 2, 2),
  ('Shana','Ramos', 'Female', '177-9008 Curabitur St.','sed.pede@google.org', 3, 3, 3, 3),
  ('Rooney','Hicks', 'Male', '6615 Massa. St.','luctus.vulputate.nisi@aol.couk', 4, 4, 4, 4),
  ('Perry','Pace', 'Male', 'P.O. Box 171, 7471 Phasellus Av','pede.nonummy.ut@yahoo.net', 5, 5, 5, 5),
  ('Cecilia','Hubbard', 'Female', '206-9948 Pellentesque Avenue','donec@aol.edu', 6, 6, 6, 6),
  ('Jerome', 'Flynn', 'Male', 'Ap #557-1255 Tincidunt Ave','cursus.integer@yahoo.ca', 7, 7, 7, 7),
  ('Minerva','Spencer', 'Male', 'Ap #996-3155 Eu St.','montes.nascetur@protonmail.net', 8, 8, 8, 8),
  ('Channing','Robinson', 'Male', 'P.O. Box 229, 3397 Quam Ave','diam@icloud.net', 9, 9, 9, 9),
  ('Wing','Calhoun', 'Female', 'Ap #640-3599 Lorem St','ipsum@yahoo.net', 10, 10, 10, 10);


ALTER TABLE IF EXISTS public."Employees"
    ADD CONSTRAINT overtime_id FOREIGN KEY (overtime_id)
    REFERENCES public."OvertimeHours" (overtime_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE
    NOT VALID;


ALTER TABLE IF EXISTS public."Employees"
    ADD CONSTRAINT role_id FOREIGN KEY (role_id)
    REFERENCES public."Roles" (role_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Employees"
    ADD CONSTRAINT depart_id FOREIGN KEY (depart_id)
    REFERENCES public."Department" (depart_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public."Employees"
    ADD CONSTRAINT salary_id FOREIGN KEY (salary_id)
    REFERENCES public.salaries (salaries_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;




SELECT emp.first_name, emp.surname, emp.gender, emp.address, emp.email,
depart.depart_name, depart.depart_city, 
role.role,
sal.salary_pa,
ot.overtime_hours
FROM "Employees" AS emp LEFT JOIN "Department" AS depart
ON emp.depart_id = depart.depart_id
LEFT JOIN "Roles" AS role
ON emp.role_id = role.role_id
LEFT JOIN "Salaries" AS sal
ON emp.salary_id = sal.salaries_id
LEFT JOIN "OvertimeHours" AS ot
ON emp.overtime_id = ot.overtime_id;

drop table "Department";
drop table "Roles";
drop table "OvertimeHours";
drop table "salaries";
drop table "Employees";

END;