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
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    text character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


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
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: users userId; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN "userId" SET DEFAULT nextval('public."users_userId_seq"'::regclass);


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, text, username, created_at) FROM stdin;
1	1+1=2	matthew	2021-09-26 17:19:57.271349
2	2+2=4	blake	2021-09-26 17:19:57.271349
3	3+3=6	julie	2021-09-26 17:19:57.271349
4	4+4=8	courtney	2021-09-26 17:19:57.271349
5	5+5=10	brian	2021-09-26 17:19:57.271349
6	6+6=12	michael	2021-09-26 17:19:57.271349
7	7+7=14	edward	2021-09-26 17:19:57.271349
8	1+1=2	matthew	2021-09-26 17:19:57.271349
9	2+2=4	blake	2021-09-26 17:19:57.271349
10	3+3=6	julie	2021-09-26 17:19:57.271349
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users ("userEmail", "userName", "userPassword", "userId") FROM stdin;
carol@chat.com	Carol	\N	1
ana@gmail.com	Ana	\N	2
ana@gmail.com	Ana	\N	3
nuevousuario@gmail.com	NuevoUsuario	\N	4
nuevousuario2@gmail.com	NuevoUsuario2	\N	5
nuevousuario4@gmail.com	NuevoUsuario2	\N	6
nuevousuario5@gmail.com	NuevoUsuario2	\N	7
nuevousuario6@gmail.com	NuevoUsuario2	$2b$10$v4N9bCLd5sfTVNblJoJoTeYrC7OIpkgQ0F33klSS9pkWWbDfLxMUS	8
nuevousuario7@gmail.com	NuevoUsuario7	$2b$10$Zj1fOTmDqmIpDAW8YsXN6eL/6dYtHdqfx8slWtGOvio1IrtFS/7h2	9
nuevousuario8@gmail.com	NuevoUsuario8	$2b$10$sF4XF3tWLkW3v/1ip/1uD.gx2B4uXfJkE55P0f3Z/.plr56KqRcQG	10
\.


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 10, true);


--
-- Name: users_userId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."users_userId_seq"', 10, true);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

