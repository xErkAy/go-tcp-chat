CREATE TABLE IF NOT EXISTS public.users
(
    id integer NOT NULL GENERATED BY DEFAULT AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    username text NOT NULL COLLATE pg_catalog."default",
    password text NOT NULL COLLATE pg_catalog."default",
    CONSTRAINT users_names PRIMARY KEY (username)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to admin;