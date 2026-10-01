--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_in_ly numeric(4,0),
    petname text,
    has_life boolean,
    has_magic boolean,
    age integer DEFAULT 0 NOT NULL,
    gravity integer DEFAULT 10 NOT NULL
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_in_ly numeric(4,0),
    petname text,
    has_life boolean,
    has_magic boolean,
    age integer DEFAULT 0 NOT NULL,
    gravity integer DEFAULT 10 NOT NULL
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
    name character varying(30) NOT NULL,
    distance_in_ly numeric(4,0),
    petname text,
    has_life boolean,
    has_magic boolean,
    planet_id integer,
    age integer DEFAULT 0 NOT NULL,
    gravity integer DEFAULT 10 NOT NULL
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
    name character varying(30) NOT NULL,
    distance_in_ly numeric(4,0),
    petname text,
    has_life boolean,
    has_magic boolean,
    star_id integer,
    age integer DEFAULT 0 NOT NULL,
    gravity integer DEFAULT 10 NOT NULL
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
    name character varying(30) NOT NULL,
    distance_in_ly numeric(4,0),
    petname text,
    has_life boolean,
    has_magic boolean,
    galaxy_id integer,
    age integer DEFAULT 0 NOT NULL,
    gravity integer DEFAULT 10 NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'blue earth', NULL, NULL, true, NULL, 0, 10);
INSERT INTO public.earth VALUES (2, 'red earth', NULL, NULL, false, NULL, 0, 10);
INSERT INTO public.earth VALUES (3, 'sky earth', NULL, NULL, true, NULL, 0, 10);
INSERT INTO public.earth VALUES (4, 'pink earth', NULL, NULL, false, NULL, 0, 10);
INSERT INTO public.earth VALUES (5, 'yellow earth', NULL, NULL, false, NULL, 0, 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky-way', NULL, NULL, NULL, NULL, 0, 10);
INSERT INTO public.galaxy VALUES (2, 'fluffy-way', NULL, NULL, NULL, NULL, 0, 10);
INSERT INTO public.galaxy VALUES (3, 'osiron', NULL, NULL, NULL, NULL, 0, 10);
INSERT INTO public.galaxy VALUES (4, 'two-way', NULL, NULL, NULL, NULL, 0, 10);
INSERT INTO public.galaxy VALUES (5, 'this way', NULL, NULL, NULL, NULL, 0, 10);
INSERT INTO public.galaxy VALUES (6, 'max-way', NULL, NULL, NULL, NULL, 0, 10);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'onemoon', 20, 'mr moon', NULL, NULL, 1, 0, 10);
INSERT INTO public.moon VALUES (2, 'ascaris', 20, 'mr moon', NULL, NULL, 2, 0, 10);
INSERT INTO public.moon VALUES (3, 'sacaris', 20, 'mr moon', NULL, NULL, 3, 0, 10);
INSERT INTO public.moon VALUES (4, 'dracars', 20, 'mr moon', NULL, NULL, 4, 0, 10);
INSERT INTO public.moon VALUES (5, 'macaris', 20, 'mr moon', NULL, NULL, 5, 0, 10);
INSERT INTO public.moon VALUES (6, 'trakaris', 20, 'mr moon', NULL, NULL, 6, 0, 10);
INSERT INTO public.moon VALUES (7, 'aura', 20, 'mr moon', NULL, NULL, 7, 0, 10);
INSERT INTO public.moon VALUES (8, 'laura', 20, 'mr moon', NULL, NULL, 8, 0, 10);
INSERT INTO public.moon VALUES (9, 'gora', 20, 'mr moon', NULL, NULL, 9, 0, 10);
INSERT INTO public.moon VALUES (10, 'sora', 20, 'mr moon', NULL, NULL, 10, 0, 10);
INSERT INTO public.moon VALUES (11, 'bora', 20, 'mr moon', NULL, NULL, 11, 0, 10);
INSERT INTO public.moon VALUES (12, 'dora', 20, 'mr moon', NULL, NULL, 12, 0, 10);
INSERT INTO public.moon VALUES (13, 'lora', 20, 'mr moon', NULL, NULL, 1, 0, 10);
INSERT INTO public.moon VALUES (14, 'mora', 20, 'mr moon', NULL, NULL, 2, 0, 10);
INSERT INTO public.moon VALUES (15, 'zora', 20, 'mr moon', NULL, NULL, 3, 0, 10);
INSERT INTO public.moon VALUES (16, 'tora', 20, 'mr moon', NULL, NULL, 4, 0, 10);
INSERT INTO public.moon VALUES (17, 'fora', 20, 'mr moon', NULL, NULL, 5, 0, 10);
INSERT INTO public.moon VALUES (18, 'rora', 20, 'mr moon', NULL, NULL, 6, 0, 10);
INSERT INTO public.moon VALUES (19, 'kova', 20, 'mr moon', NULL, NULL, 7, 0, 10);
INSERT INTO public.moon VALUES (20, 'nova', 20, 'mr moon', NULL, NULL, 8, 0, 10);
INSERT INTO public.moon VALUES (21, 'vova', 20, 'mr moon', NULL, NULL, 9, 0, 10);
INSERT INTO public.moon VALUES (22, 'rova', 20, 'mr moon', NULL, NULL, 10, 0, 10);
INSERT INTO public.moon VALUES (23, 'lova', 20, 'mr moon', NULL, NULL, 11, 0, 10);
INSERT INTO public.moon VALUES (24, 'sova', 20, 'mr moon', NULL, NULL, 12, 0, 10);
INSERT INTO public.moon VALUES (25, 'pova', 20, 'mr moon', NULL, NULL, 1, 0, 10);
INSERT INTO public.moon VALUES (26, 'mova', 20, 'mr moon', NULL, NULL, 2, 0, 10);
INSERT INTO public.moon VALUES (27, 'tova', 20, 'mr moon', NULL, NULL, 3, 0, 10);
INSERT INTO public.moon VALUES (28, 'zova', 20, 'mr moon', NULL, NULL, 4, 0, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'jupiter', NULL, NULL, NULL, NULL, 5, 0, 10);
INSERT INTO public.planet VALUES (6, 'saturn', NULL, NULL, NULL, NULL, 6, 0, 10);
INSERT INTO public.planet VALUES (7, 'neptune', NULL, NULL, NULL, NULL, 1, 0, 10);
INSERT INTO public.planet VALUES (8, 'pluto', NULL, NULL, NULL, NULL, 2, 0, 10);
INSERT INTO public.planet VALUES (9, 'asgard', NULL, NULL, NULL, NULL, 3, 0, 10);
INSERT INTO public.planet VALUES (10, 'midgard', NULL, NULL, NULL, NULL, 4, 0, 10);
INSERT INTO public.planet VALUES (11, 'swarg', NULL, NULL, NULL, NULL, 5, 0, 10);
INSERT INTO public.planet VALUES (12, 'paatallok', NULL, NULL, NULL, NULL, 6, 0, 10);
INSERT INTO public.planet VALUES (1, 'mercury', NULL, NULL, NULL, NULL, 1, 0, 10);
INSERT INTO public.planet VALUES (2, 'venus', NULL, NULL, NULL, NULL, 2, 0, 10);
INSERT INTO public.planet VALUES (3, 'earth', NULL, NULL, NULL, NULL, 3, 0, 10);
INSERT INTO public.planet VALUES (4, 'mars', NULL, NULL, NULL, NULL, 4, 0, 10);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'aone', NULL, NULL, NULL, NULL, 1, 0, 10);
INSERT INTO public.star VALUES (2, 'bone', NULL, NULL, NULL, NULL, 2, 0, 10);
INSERT INTO public.star VALUES (3, 'cone', NULL, NULL, NULL, NULL, 3, 0, 10);
INSERT INTO public.star VALUES (4, 'trione', NULL, NULL, NULL, NULL, 4, 0, 10);
INSERT INTO public.star VALUES (5, 'jeon', NULL, NULL, NULL, NULL, 5, 0, 10);
INSERT INTO public.star VALUES (6, 'neon', NULL, NULL, NULL, NULL, 6, 0, 10);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


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

