--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: alien; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.alien (
	    alien_id integer NOT NULL,
	    name character varying(255),
	    needs_air boolean,
	    type character varying(255) NOT NULL
);


ALTER TABLE public.alien OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.alien_alien_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alien_alien_id_seq OWNER TO freecodecamp;

--
-- Name: alien_alien_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.alien_alien_id_seq OWNED BY public.alien.alien_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
	    galaxy_id integer NOT NULL,
	    name character varying(255) NOT NULL,
	    age_in_millions_of_years numeric,
	    galaxy_type character varying(10),
	    has_alien boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
	    moon_id integer NOT NULL,
	    name character varying(255) NOT NULL,
	    description text,
	    planet_id integer,
	    has_alien boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
	    planet_id integer NOT NULL,
	    name character varying(255) NOT NULL,
	    num_of_moon integer,
	    has_life boolean,
	    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
	    star_id integer NOT NULL,
	    name character varying(255) NOT NULL,
	    num_of_planet integer,
	    galaxy_id integer,
	    has_alien boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: alien alien_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien ALTER COLUMN alien_id SET DEFAULT nextval('public.alien_alien_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: alien; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.alien VALUES (1, 'dela', false, 'A');
INSERT INTO public.alien VALUES (2, 'bosha', false, 'B');
INSERT INTO public.alien VALUES (3, 'soroor', false, 'C');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 13.6, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'andromeda', 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'whirlpool', 700, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'sombrero', 8, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'cigar', 30, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'cartwheel', 100, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', NULL, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon 2', NULL, 1, NULL);
INSERT INTO public.moon VALUES (3, 'moon 3', NULL, 1, NULL);
INSERT INTO public.moon VALUES (4, 'moon 4', NULL, 1, NULL);
INSERT INTO public.moon VALUES (5, 'moon 5', NULL, 3, NULL);
INSERT INTO public.moon VALUES (6, 'moon 6', NULL, 3, NULL);
INSERT INTO public.moon VALUES (7, 'moon 7', NULL, 3, NULL);
INSERT INTO public.moon VALUES (8, 'moon 8', NULL, 3, NULL);
INSERT INTO public.moon VALUES (9, 'dim 1', NULL, 5, NULL);
INSERT INTO public.moon VALUES (10, 'dim 2', NULL, 5, NULL);
INSERT INTO public.moon VALUES (11, 'dim 3', NULL, 5, NULL);
INSERT INTO public.moon VALUES (12, 'dim 4', NULL, 5, NULL);
INSERT INTO public.moon VALUES (13, 'dim 5', NULL, 7, NULL);
INSERT INTO public.moon VALUES (14, 'dim 6', NULL, 7, NULL);
INSERT INTO public.moon VALUES (15, 'dim 7', NULL, 7, NULL);
INSERT INTO public.moon VALUES (16, 'dim 8', NULL, 7, NULL);
INSERT INTO public.moon VALUES (17, 'ruby 1', NULL, 9, NULL);
INSERT INTO public.moon VALUES (18, 'ruby 2', NULL, 9, NULL);
INSERT INTO public.moon VALUES (19, 'ruby 3', NULL, 9, NULL);
INSERT INTO public.moon VALUES (20, 'ruby 4', NULL, 9, NULL);
INSERT INTO public.moon VALUES (21, 'ruby 5', NULL, 11, NULL);
INSERT INTO public.moon VALUES (22, 'ruby 6', NULL, 11, NULL);
INSERT INTO public.moon VALUES (23, 'ruby 7', NULL, 11, NULL);
INSERT INTO public.moon VALUES (24, 'ruby 8', NULL, 11, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'jupiter', 79, false, 1);
INSERT INTO public.planet VALUES (2, 'earth', 1, true, 1);
INSERT INTO public.planet VALUES (3, 'andro planet 1', 20, false, 2);
INSERT INTO public.planet VALUES (4, 'andro planet 2', 1, false, 2);
INSERT INTO public.planet VALUES (5, 'whirl planet 1', 31, false, 3);
INSERT INTO public.planet VALUES (6, 'whirl planet 2', 3, false, 3);
INSERT INTO public.planet VALUES (7, 'somb planet 1', 4, false, 4);
INSERT INTO public.planet VALUES (8, 'somb planet 2', 0, false, 4);
INSERT INTO public.planet VALUES (9, 'cigar planet 1', 50, false, 5);
INSERT INTO public.planet VALUES (10, 'cigar planet 2', 54, false, 5);
INSERT INTO public.planet VALUES (11, 'cart planet 1', 16, false, 6);
INSERT INTO public.planet VALUES (12, 'chart planet 2', 2, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 8, 1, NULL);
INSERT INTO public.star VALUES (2, 'andromeda', 1, 2, NULL);
INSERT INTO public.star VALUES (3, 'messier 51', 3, 3, NULL);
INSERT INTO public.star VALUES (4, 'messier 104', 2, 4, NULL);
INSERT INTO public.star VALUES (5, 'messier 101', 3, 5, NULL);
INSERT INTO public.star VALUES (6, 'triangulum', 2, 6, NULL);


--
-- Name: alien_alien_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.alien_alien_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 6, true);


--
-- Name: alien alien_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT alien_pkey PRIMARY KEY (alien_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: alien unique_column_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.alien
    ADD CONSTRAINT unique_column_name UNIQUE (name);


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


