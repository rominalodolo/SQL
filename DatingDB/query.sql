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

END;