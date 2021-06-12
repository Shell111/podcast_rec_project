--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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
-- Name: podcast_shows; Type: TABLE; Schema: public; Owner: shell
--

CREATE TABLE public.podcast_shows (
    id integer NOT NULL,
    title text,
    genre text,
    image_url text,
    about text,
    show_url text
);


ALTER TABLE public.podcast_shows OWNER TO shell;

--
-- Name: podcast_shows_id_seq; Type: SEQUENCE; Schema: public; Owner: shell
--

CREATE SEQUENCE public.podcast_shows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.podcast_shows_id_seq OWNER TO shell;

--
-- Name: podcast_shows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shell
--

ALTER SEQUENCE public.podcast_shows_id_seq OWNED BY public.podcast_shows.id;


--
-- Name: podcasts; Type: TABLE; Schema: public; Owner: shell
--

CREATE TABLE public.podcasts (
    id integer NOT NULL,
    podcast_title text,
    genre text,
    image_url text,
    about text,
    show_url text
);


ALTER TABLE public.podcasts OWNER TO shell;

--
-- Name: podcasts_id_seq; Type: SEQUENCE; Schema: public; Owner: shell
--

CREATE SEQUENCE public.podcasts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.podcasts_id_seq OWNER TO shell;

--
-- Name: podcasts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shell
--

ALTER SEQUENCE public.podcasts_id_seq OWNED BY public.podcasts.id;


--
-- Name: podcast_shows id; Type: DEFAULT; Schema: public; Owner: shell
--

ALTER TABLE ONLY public.podcast_shows ALTER COLUMN id SET DEFAULT nextval('public.podcast_shows_id_seq'::regclass);


--
-- Name: podcasts id; Type: DEFAULT; Schema: public; Owner: shell
--

ALTER TABLE ONLY public.podcasts ALTER COLUMN id SET DEFAULT nextval('public.podcasts_id_seq'::regclass);


--
-- Data for Name: podcast_shows; Type: TABLE DATA; Schema: public; Owner: shell
--

COPY public.podcast_shows (id, title, genre, image_url, about, show_url) FROM stdin;
\.


--
-- Data for Name: podcasts; Type: TABLE DATA; Schema: public; Owner: shell
--

COPY public.podcasts (id, podcast_title, genre, image_url, about, show_url) FROM stdin;
1	The Daily	Politics	https://res.cloudinary.com/shell-shell/image/upload/v1623462518/Screen_Shot_2021-06-12_at_11.48.22_am_ejysjm.png	This is what the news should sound like. The biggest stories of our time, told by the best journalists in the world. Hosted by Michael Barbaro. Twenty minutes a day, five days a week, ready by 6 a.m	https://podcasts.apple.com/us/podcast/the-daily/id1200361736
2	You are wrong about	Pop culture	https://res.cloudinary.com/shell-shell/image/upload/v1623461569/Screen_Shot_2021-06-12_at_11.32.27_am_usbhbv.png	Mike and Sarah are journalists obsessed with the past. Every week they reconsider a person or event that has been miscast in the public imagination.	https://podcasts.apple.com/us/podcast/youre-wrong-about/id1380008439
\.


--
-- Name: podcast_shows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shell
--

SELECT pg_catalog.setval('public.podcast_shows_id_seq', 1, false);


--
-- Name: podcasts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shell
--

SELECT pg_catalog.setval('public.podcasts_id_seq', 2, true);


--
-- Name: podcast_shows podcast_shows_pkey; Type: CONSTRAINT; Schema: public; Owner: shell
--

ALTER TABLE ONLY public.podcast_shows
    ADD CONSTRAINT podcast_shows_pkey PRIMARY KEY (id);


--
-- Name: podcasts podcasts_pkey; Type: CONSTRAINT; Schema: public; Owner: shell
--

ALTER TABLE ONLY public.podcasts
    ADD CONSTRAINT podcasts_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

