BEGIN;


CREATE TABLE IF NOT EXISTS public.contact_interest
(
    contact_id bigserial NOT NULL,
    interest_id bigserial NOT NULL
);

CREATE TABLE IF NOT EXISTS public.contact_seeking
(
    contact_id bigserial NOT NULL,
    seeking_id bigserial NOT NULL
);

CREATE TABLE IF NOT EXISTS public.interests
(
    interest_id serial NOT NULL,
    interest text COLLATE pg_catalog."default",
    CONSTRAINT interests_pkey PRIMARY KEY (interest_id)
);

CREATE TABLE IF NOT EXISTS public.my_contacts
(
    contact_id int NOT NULL,
    last_name character varying COLLATE pg_catalog."default",
    first_name character varying COLLATE pg_catalog."default",
    phone character(10) COLLATE pg_catalog."default",
    email character varying COLLATE pg_catalog."default",
    gender character varying COLLATE pg_catalog."default",
    birthday date,
    prof_id int REFERENCES "profession"(prof_id),
    zip_code int REFERENCES "zip_code"(zip_code),
    status_id int REFERENCES "status"(status_id),
    CONSTRAINT my_contacts_pkey PRIMARY KEY (contact_id)
);

CREATE TABLE IF NOT EXISTS public.seeking
(
    seeking_id bigserial NOT NULL,
    seeking text COLLATE pg_catalog."default",
    CONSTRAINT seeking_pkey PRIMARY KEY (seeking_id)
);

CREATE TABLE IF NOT EXISTS public.status
(
    status_id bigserial NOT NULL,
    status character varying(25) COLLATE pg_catalog."default",
    CONSTRAINT status_pkey PRIMARY KEY (status_id)
);

CREATE TABLE IF NOT EXISTS public.zip_code
(
    zip_code int,
    city character varying(40) COLLATE pg_catalog."default",
    "province" character varying(40) COLLATE pg_catalog."default",
    CONSTRAINT zip_code_pkey PRIMARY KEY (zip_code)
);

CREATE TABLE IF NOT EXISTS public.profession
(
    prof_id bigserial NOT NULL,
    profession character varying COLLATE pg_catalog."default",
    CONSTRAINT profession_pkey PRIMARY KEY (prof_id)
);

-- inserting data

INSERT INTO "zip_code"(zip_code, city, province)
VALUES  (3174,'Biloxi','Sinaloa'),
  (4123,'Bauchi','Basilicata'),
  (4998,'Cork','Limburg'),
  (4773,'Itanagar','North Island'),
  (2848,'Shimla','Massachusetts');

INSERT INTO "interests"(interest)
VALUES('fittness'),
      ('volunteering'),
	  ('adventure sports'),
	  ('travel'),
	  ('blogging');

INSERT INTO "profession"(profession)
VALUES('plumber'),
	('accountant'),
	('hair stylist'),
	('director'),
	('influencer');

INSERT INTO seeking(seeking)
VALUES('steady relationship'),
      ('hook-up'),
	  ('friends'),
	  ('partner'),
	  ('friends');
	  
INSERT INTO status(status)
VALUES('single'),
	  ('devorced'),
	  ('married'),
      ('widowed'),
	  ('single');

INSERT INTO my_contacts(contact_id, last_name, first_name, phone, email, gender, birthday, prof_id, zip_code, status_id)
VALUES(01, 'Armand', 'Petty','3333835121','dui@protonmail.edu','male', '2005-02-03', 1, 3174, 1),
  (02, 'Kay', 'Montgomery','9218324364','malesuada@google.ca', 'Female', '2005-09-02', 2, 4123, 2),
  (03, 'Aaron', 'Casey','3217354555','amet.faucibus.ut@yahoo.ca','Female', '2004-12-13', 3, 4998, 3 ),
  (04, 'Hillary', 'Hinton','5034735218','nibh.sit@icloud.com','Female', '2004-07-04', 4, 4773, 4),
  (05, 'Louis', 'Langley','4823416349','faucibus.morbi.vehicula@yahoo.edu','Male', '2003-10-19', 5, 2848, 5);
 	  

INSERT INTO contact_interest(contact_id, interest_id)
VALUES(01, 4),
      (02, 1),
	  (03, 2),
	  (04, 5),
	  (05, 3);
	 

INSERT INTO contact_seeking(contact_id, seeking_id)
VALUES(01, 1),
	(02, 3),
	(03, 1),
	(04, 2),
	(05, 1);
	

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

SELECT cont.contact_id, cont.last_name, cont.first_name, cont.phone, cont.email, cont.gender, cont.birthday,
prof.profession,
zip.city, zip.province,
status.status
FROM my_contacts AS cont LEFT JOIN profession AS prof
ON cont.prof_id = prof.prof_id
LEFT JOIN zip_code AS zip
ON cont.zip_code= zip.zip_code
LEFT JOIN status
ON cont.status_id = status.status_id;


END;