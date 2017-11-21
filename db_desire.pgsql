--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tb_desire; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tb_desire (
    name character varying(100) NOT NULL,
    uname character varying(100) NOT NULL,
    pass character varying(256) NOT NULL
);


ALTER TABLE tb_desire OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    name character varying(100) NOT NULL,
    username character varying(100) NOT NULL,
    pass character varying(300) NOT NULL
);


ALTER TABLE users OWNER TO postgres;

--
-- Data for Name: tb_desire; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tb_desire (name, uname, pass) FROM stdin;
de	des@ire	12345
mashine	gd@ddh	cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
des	desi@re	cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
s	gd@ddh	cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
d	e@s	cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
q	w@e	3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
		cf83e1357eefb8bdf1542850d66d8007d620e4050b5715dc83f4a921d36ce9ce47d0d13c5d85f2b0ff8318d2877eec2f63b931bd47417a81a538327af927da3e
qe	w@e	3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2
desir	gd@ddho	3190862beb8c1d3628e48946f5d154798707a97e829be5c51db208f6baf46d98561a15c2811822eeedc028ed890cbd1d070ee794ceabea8b9ae848c21861b203
fg	gd@ddh	96caaca04d8a2a211511b69d78297974887925124c4ce029c7f5682e65d47a5d1f23a832c995b98e1311adb6be84be0a40a7d31758c65cfe23e3a4a274e8dde7
gk	gd@ddh	7c7748ef141fef9aa7e96162e17c62d1d9633e3166e04e0d8138ea95deeb2ab0b51e99cbacb8793cede21bc0d77aa07404d2079da9e92360eb2ca43d2f8c1ad7
		
		
hj	gd@ddh	ft2
		
h	gd@ddh	ft
d	s@r	123
		
ddd	de@hd	ft
G	gd@ddh	ft
hu	gd@ddh	ft
		
		
gg	gd@ddh	ft
		
		
name	username	12
name	username	12
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (name, username, pass) FROM stdin;
name	user	ft
name	user	ft
name1	user1	12
name2	user2	9a1c2b8d8111bc54bec29101a8a07bb542fa1102cc334526b2d2a701aeae2b726916f9b9b45280f493b0c1ae2df8a623e66cfa74f48efb5b08335b2503645e21
name3	user3	3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2
\.


--
-- PostgreSQL database dump complete
--

