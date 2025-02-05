--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4
-- Dumped by pg_dump version 13.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    "userEmail" text NOT NULL,
    "userName" text,
    "userPassword" text,
    "userId" integer NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_userId_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."users_userId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."users_userId_seq" OWNER TO postgres;

--
-- Name: users_userId_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."users_userId_seq" OWNED BY public.users."userId";


--
-- Name: users userId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN "userId" SET DEFAULT nextval('public."users_userId_seq"'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users ("userEmail", "userName", "userPassword", "userId") FROM stdin;
nuevousuario6@gmail.com	NuevoUsuario2	$2b$10$v4N9bCLd5sfTVNblJoJoTeYrC7OIpkgQ0F33klSS9pkWWbDfLxMUS	8
nuevousuario7@gmail.com	NuevoUsuario7	$2b$10$Zj1fOTmDqmIpDAW8YsXN6eL/6dYtHdqfx8slWtGOvio1IrtFS/7h2	9
nuevousuario8@gmail.com	NuevoUsuario8	$2b$10$sF4XF3tWLkW3v/1ip/1uD.gx2B4uXfJkE55P0f3Z/.plr56KqRcQG	10
\.


--
-- Name: users_userId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users_userId_seq"', 10, true);


--
-- PostgreSQL database dump complete
--

