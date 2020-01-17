--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "Guest";

--
-- Name: products; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying,
    cost integer,
    country character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.products OWNER TO "Guest";

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO "Guest";

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    name character varying,
    body character varying,
    product_id integer,
    rating integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.reviews OWNER TO "Guest";

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: Guest
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO "Guest";

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Guest
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: Guest
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "Guest";

--
-- Name: products id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2020-01-17 17:00:58.227701	2020-01-17 17:00:58.227701
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.products (id, name, cost, country, created_at, updated_at) FROM stdin;
111	Sedan	300	good ol' usa!	2020-01-17 21:38:36.554301	2020-01-17 21:38:36.554301
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.reviews (id, name, body, product_id, rating, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: Guest
--

COPY public.schema_migrations (version) FROM stdin;
20200117165203
20200117165644
20200117165853
\.


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.products_id_seq', 111, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Guest
--

SELECT pg_catalog.setval('public.reviews_id_seq', 6, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: reviews fk_rails_bedd9094d4; Type: FK CONSTRAINT; Schema: public; Owner: Guest
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT fk_rails_bedd9094d4 FOREIGN KEY (product_id) REFERENCES public.products(id);


--
-- PostgreSQL database dump complete
--

