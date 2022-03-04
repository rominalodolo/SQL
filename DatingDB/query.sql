-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Then, Romina has added her own data to the sql file. 
BEGIN;


CREATE TABLE IF NOT EXISTS public.contact_interest
(
    contact_id integer NOT NULL,
    interest_id integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.contact_seeking
(
    contact_id integer NOT NULL,
    seeking_id integer NOT NULL
);

CREATE TABLE IF NOT EXISTS public.interests
(
    interest_id integer NOT NULL,
    interest text COLLATE pg_catalog."default",
    CONSTRAINT interests_pkey PRIMARY KEY (interest_id)
);

CREATE TABLE IF NOT EXISTS public.my_contacts
(
    contact_id integer NOT NULL,
    last_name character varying COLLATE pg_catalog."default",
    first_name character varying COLLATE pg_catalog."default",
    phone character(10) COLLATE pg_catalog."default",
    email character varying COLLATE pg_catalog."default",
    gender character varying COLLATE pg_catalog."default",
    birthday date,
    prof_id integer,
    zip_code character varying COLLATE pg_catalog."default",
    status_id integer,
    CONSTRAINT my_contacts_pkey PRIMARY KEY (contact_id)
);

CREATE TABLE IF NOT EXISTS public.seeking
(
    seeking_id integer NOT NULL,
    seeking text COLLATE pg_catalog."default",
    CONSTRAINT seeking_pkey PRIMARY KEY (seeking_id)
);

CREATE TABLE IF NOT EXISTS public.status
(
    status_id integer NOT NULL,
    status character varying(25) COLLATE pg_catalog."default",
    CONSTRAINT status_pkey PRIMARY KEY (status_id)
);

CREATE TABLE IF NOT EXISTS public.zip_code
(
    zip_code character varying(4) COLLATE pg_catalog."default" NOT NULL,
    city character varying(40) COLLATE pg_catalog."default",
    "province/state" character varying(40) COLLATE pg_catalog."default",
    CONSTRAINT zip_code_pkey PRIMARY KEY (zip_code)
);

CREATE TABLE IF NOT EXISTS public.profession
(
    prof_id integer NOT NULL,
    profession character varying COLLATE pg_catalog."default",
    CONSTRAINT profession_pkey PRIMARY KEY (prof_id)
);

-- inserting data

INSERT INTO zip_code(zip_code, city, province)
VALUES  ('35-174','Biloxi','Sinaloa'),
  ('412357','Bauchi','Basilicata'),
  ('49966','Cork','Limburg'),
  ('477341','Itanagar','North Island'),
  ('28463','Shimla','Massachusetts');

INSERT INTO interests(interest)
VALUES('fittness'),
      ('volunteering'),
	  ('adventure sports'),
	  ('travel'),
	  ('blogging');
  

INSERT INTO seeking(seeking)
VALUES('steady relationship'),
      ('hook-up'),
	  ('friends'),
	  ('partner');
	  
INSERT INTO status(status)
VALUES('single'),
	  ('devorced'),
	  ('married'),
      ('widowed');

INSERT INTO my_contacts(last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
VALUES("Armand Petty","(333) 383-5121","dui@protonmail.edu","male", 1, "35-174", 1),
  ("Kay Montgomery","(921) 732-4364","malesuada@google.ca", "", 2, "412357", 3),
  ("Aaron Casey","(321) 735-4555","amet.faucibus.ut@yahoo.ca","49966"),
  ("Karen Hinton","(503) 473-5218","nibh.sit@icloud.com","477341"),
  ("Lucy Langley","(482) 341-6349","faucibus.morbi.vehicula@yahoo.edu","28463");
 	  

INSERT INTO contact_interest(contact_id, interest_id)
VALUES(01, 4),
      (02, 1),
	  (03, 2),
	  (04, 5),
	  (05, 3);
	 

INSERT INTO contact_seeking(contact_id, seeking_id)
VALUES(001, 1),
      (002, 3),
	  (003, 1),
	  (004, 2),
      (005, 1);
	

ALTER TABLE IF EXISTS public.contact_interest
    ADD CONSTRAINT contact_id FOREIGN KEY (contact_id)
    REFERENCES public.my_contacts (contact_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.contact_interest
    ADD CONSTRAINT interest_id FOREIGN KEY (interest_id)
    REFERENCES public.interests (interest_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.contact_seeking
    ADD CONSTRAINT contact_id FOREIGN KEY (contact_id)
    REFERENCES public.my_contacts (contact_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.contact_seeking
    ADD CONSTRAINT seeking_id FOREIGN KEY (seeking_id)
    REFERENCES public.seeking (seeking_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.my_contacts
    ADD CONSTRAINT prof_id FOREIGN KEY (prof_id)
    REFERENCES public.profession (prof_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.my_contacts
    ADD CONSTRAINT zip_code FOREIGN KEY (zip_code)
    REFERENCES public.zip_code (zip_code) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.my_contacts
    ADD CONSTRAINT status_id FOREIGN KEY (status_id)
    REFERENCES public.status (status_id) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

SELECT cont.last_name, cont.first_name, cont.phone, cont.email, cont.gender, cont.birthday,
prof.profession,
zip.city, zip.province/state,
status.status,
FROM my_contacts AS cont LEFT JOIN Profession AS prof
ON cont.prof_id = prof.prof_id
LEFT JOIN Zip_code
ON cont.zip_id = zip.zip_code
LEFT JOIN Status 
ON cont.satus_id = status.status_id


END;