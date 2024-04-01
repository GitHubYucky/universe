--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num integer,
    area integer,
    info character varying(40)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    hoge integer,
    foo integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    isblack boolean,
    isempty boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: songs; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.songs (
    songs_id integer NOT NULL,
    name character varying(40) NOT NULL,
    info character varying(30)
);


ALTER TABLE public.songs OWNER TO freecodecamp;

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songs_id_seq OWNER TO freecodecamp;

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.songs_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    num numeric,
    info text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: songs songs_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.songs ALTER COLUMN songs_id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'hoge', 30, 900, NULL);
INSERT INTO public.galaxy VALUES (2, 'foo', 60, 600, NULL);
INSERT INTO public.galaxy VALUES (3, 'moge', 90, 900, NULL);
INSERT INTO public.galaxy VALUES (4, 'a', 120, 1200, NULL);
INSERT INTO public.galaxy VALUES (5, 'b', 150, 1500, NULL);
INSERT INTO public.galaxy VALUES (6, 'c', 180, 1800, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'hoge', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moge', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'foo', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'c', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'c', 1, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'c', 1, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'c', 1, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'c', 1, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'c', 1, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'c', 1, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'a', 1, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'b', 1, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'c', 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'hoge', false, false, 1);
INSERT INTO public.planet VALUES (2, 'moge', false, false, 1);
INSERT INTO public.planet VALUES (3, 'foo', false, false, 1);
INSERT INTO public.planet VALUES (4, 'a', false, true, 1);
INSERT INTO public.planet VALUES (5, 'a', false, true, 1);
INSERT INTO public.planet VALUES (6, 'a', false, true, 1);
INSERT INTO public.planet VALUES (7, 'a', false, true, 1);
INSERT INTO public.planet VALUES (8, 'a', false, true, 1);
INSERT INTO public.planet VALUES (9, 'a', false, true, 1);
INSERT INTO public.planet VALUES (10, 'a', false, true, 1);
INSERT INTO public.planet VALUES (11, 'a', false, true, 1);
INSERT INTO public.planet VALUES (12, 'a', false, true, 1);
INSERT INTO public.planet VALUES (13, 'a', false, true, 1);
INSERT INTO public.planet VALUES (14, 'a', false, true, 1);
INSERT INTO public.planet VALUES (15, 'a', false, true, 1);
INSERT INTO public.planet VALUES (16, 'a', false, true, 1);


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.songs VALUES (1, 'hoge', NULL);
INSERT INTO public.songs VALUES (2, 'hoge', NULL);
INSERT INTO public.songs VALUES (3, 'hoge', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'hoge', 30, 'hogehogefoo', 1);
INSERT INTO public.star VALUES (2, 'moge', 50, 'foo', 1);
INSERT INTO public.star VALUES (3, 'moge', 50, 'foo', 1);
INSERT INTO public.star VALUES (4, 'moge', 50, 'foo', 1);
INSERT INTO public.star VALUES (5, 'a', 70, 'moge', 1);
INSERT INTO public.star VALUES (6, 'b', 80, 'foo', 1);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 27, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 16, true);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.songs_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (songs_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: songs uni; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT uni UNIQUE (songs_id);


--
-- Name: star uni2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uni2 UNIQUE (star_id);


--
-- Name: planet uni3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uni3 UNIQUE (planet_id);


--
-- Name: moon uni4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uni4 UNIQUE (moon_id);


--
-- Name: galaxy uni5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uni5 UNIQUE (galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

