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
-- Name: available_color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE available_color (
    model_id integer NOT NULL,
    color_id integer NOT NULL
);


ALTER TABLE available_color OWNER TO postgres;

--
-- Name: available_storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE available_storage (
    model_id integer NOT NULL,
    storage_id integer NOT NULL
);


ALTER TABLE available_storage OWNER TO postgres;

--
-- Name: color; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE color (
    color_id integer NOT NULL,
    color character varying(255) NOT NULL
);


ALTER TABLE color OWNER TO postgres;

--
-- Name: color_color_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE color_color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE color_color_id_seq OWNER TO postgres;

--
-- Name: color_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE color_color_id_seq OWNED BY color.color_id;


--
-- Name: cpu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cpu (
    cpu_id integer NOT NULL,
    cpu_name character varying(255) NOT NULL,
    frequency_ghz real NOT NULL,
    number_of_cores integer NOT NULL,
    l2_cache_mb real,
    cpu_manufacturer_id integer NOT NULL
);


ALTER TABLE cpu OWNER TO postgres;

--
-- Name: cpu_cpu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cpu_cpu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpu_cpu_id_seq OWNER TO postgres;

--
-- Name: cpu_cpu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cpu_cpu_id_seq OWNED BY cpu.cpu_id;


--
-- Name: cpu_manufacturer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cpu_manufacturer (
    cpu_manufacturer_id integer NOT NULL,
    manufacturer_name character varying(255) NOT NULL,
    location_country character varying(255) NOT NULL,
    year_of_foundation integer NOT NULL,
    current_ceo character varying(255) NOT NULL
);


ALTER TABLE cpu_manufacturer OWNER TO postgres;

--
-- Name: cpu_manufacturer_cpu_manufacturer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cpu_manufacturer_cpu_manufacturer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cpu_manufacturer_cpu_manufacturer_id_seq OWNER TO postgres;

--
-- Name: cpu_manufacturer_cpu_manufacturer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cpu_manufacturer_cpu_manufacturer_id_seq OWNED BY cpu_manufacturer.cpu_manufacturer_id;


--
-- Name: display; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE display (
    display_id integer NOT NULL,
    screen_size_inch real NOT NULL,
    pixel_resolution character varying(255) NOT NULL,
    type_of_display character varying(255) NOT NULL,
    pixels_per_inch integer NOT NULL
);


ALTER TABLE display OWNER TO postgres;

--
-- Name: display_display_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE display_display_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE display_display_id_seq OWNER TO postgres;

--
-- Name: display_display_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE display_display_id_seq OWNED BY display.display_id;


--
-- Name: model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE model (
    model_id integer NOT NULL,
    name character varying(255) NOT NULL,
    memory_gb real NOT NULL,
    battery_capacity_mah integer NOT NULL,
    cpu_id integer NOT NULL,
    display_id integer NOT NULL
);


ALTER TABLE model OWNER TO postgres;

--
-- Name: model_model_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE model_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE model_model_id_seq OWNER TO postgres;

--
-- Name: model_model_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE model_model_id_seq OWNED BY model.model_id;


--
-- Name: storage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE storage (
    storage_id integer NOT NULL,
    storage_gb integer NOT NULL
);


ALTER TABLE storage OWNER TO postgres;

--
-- Name: storage_storage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE storage_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE storage_storage_id_seq OWNER TO postgres;

--
-- Name: storage_storage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE storage_storage_id_seq OWNED BY storage.storage_id;


--
-- Name: color color_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY color ALTER COLUMN color_id SET DEFAULT nextval('color_color_id_seq'::regclass);


--
-- Name: cpu cpu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cpu ALTER COLUMN cpu_id SET DEFAULT nextval('cpu_cpu_id_seq'::regclass);


--
-- Name: cpu_manufacturer cpu_manufacturer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cpu_manufacturer ALTER COLUMN cpu_manufacturer_id SET DEFAULT nextval('cpu_manufacturer_cpu_manufacturer_id_seq'::regclass);


--
-- Name: display display_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY display ALTER COLUMN display_id SET DEFAULT nextval('display_display_id_seq'::regclass);


--
-- Name: model model_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model ALTER COLUMN model_id SET DEFAULT nextval('model_model_id_seq'::regclass);


--
-- Name: storage storage_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY storage ALTER COLUMN storage_id SET DEFAULT nextval('storage_storage_id_seq'::regclass);


--
-- Data for Name: available_color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY available_color (model_id, color_id) FROM stdin;
1	1
2	2
2	3
3	2
3	3
4	2
4	3
5	2
5	3
6	2
6	3
7	8
7	9
7	1
8	3
8	4
8	5
8	6
8	7
9	1
9	8
9	9
9	10
10	1
11	1
10	8
11	8
10	9
11	9
12	1
13	1
12	8
13	8
12	9
13	9
12	10
13	10
14	1
14	2
15	1
15	2
14	12
15	12
14	9
14	10
15	9
15	10
14	11
15	11
16	1
17	1
16	8
16	9
17	8
17	9
18	1
18	8
\.


--
-- Data for Name: available_storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY available_storage (model_id, storage_id) FROM stdin;
1	1
1	2
1	3
2	2
2	3
3	2
3	3
3	4
4	2
4	3
4	4
5	2
5	3
5	4
5	5
6	3
6	4
6	5
7	3
7	4
7	5
8	2
8	3
8	4
9	3
9	4
9	5
9	6
10	3
10	4
10	5
10	6
11	3
11	5
11	6
12	3
12	4
12	5
12	6
13	3
13	4
13	5
13	6
14	4
14	6
14	7
15	4
15	6
15	7
16	5
16	7
17	5
17	7
18	5
18	7
\.


--
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY color (color_id, color) FROM stdin;
1	silver
2	black
3	white
4	rose
5	yellow
6	blue
7	green
8	space grey
9	gold
10	rose gold
11	(PRODUCT)RED
12	black onix
\.


--
-- Name: color_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('color_color_id_seq', 1, false);


--
-- Data for Name: cpu; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cpu (cpu_id, cpu_name, frequency_ghz, number_of_cores, l2_cache_mb, cpu_manufacturer_id) FROM stdin;
1	Samsung S3C6400 ARM	0.620000005	1	\N	1
2	Samsung S5PC100 ARM	0.833000004	1	0.256000012	1
3	Apple A4	1	1	0.512000024	1
4	Apple A5	1	2	1	2
5	Apple A6	1.29999995	2	1	1
6	Apple A7	1.39999998	2	1	1
7	Apple A8	1.39999998	2	1	3
8	Apple A9	1.79999995	2	3	3
9	Apple A10	2.33999991	4	3	3
10	Apple 11	2.74000001	6	3	3
\.


--
-- Name: cpu_cpu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cpu_cpu_id_seq', 10, true);


--
-- Data for Name: cpu_manufacturer; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cpu_manufacturer (cpu_manufacturer_id, manufacturer_name, location_country, year_of_foundation, current_ceo) FROM stdin;
1	Samsung Electronics	Republic of Korea	1969	Kwon Oh-hyun
2	Apple inc.	USA	1976	Tim Cook
3	TSMC	Taiwan	1987	C.C.Wei
\.


--
-- Name: cpu_manufacturer_cpu_manufacturer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cpu_manufacturer_cpu_manufacturer_id_seq', 3, true);


--
-- Data for Name: display; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY display (display_id, screen_size_inch, pixel_resolution, type_of_display, pixels_per_inch) FROM stdin;
1	3.5	320x480	LED	163
2	3.5	640x960	LED	326
3	4	640x1136	LED	326
4	4.69999981	750x1334	LED	326
5	5.5	1080x1920	LED	401
6	5.80000019	2436x1125	OLED	458
\.


--
-- Name: display_display_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('display_display_id_seq', 6, true);


--
-- Data for Name: model; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY model (model_id, name, memory_gb, battery_capacity_mah, cpu_id, display_id) FROM stdin;
1	iPhone 2G	0.128000006	1400	1	1
2	iPhone 3G	0.128000006	1150	1	1
3	iPhone 3GS	0.256000012	1219	2	1
4	iPhone 4	0.512000024	1420	3	2
5	iPhone 4S	0.512000024	1430	4	2
6	iPhone 5	1	1440	5	3
7	iPhone 5S	1	1560	6	3
8	iPhone 5C	1	1520	5	3
9	iPhone SE	2	1642	8	3
10	iPhone 6	1	1810	7	4
11	iPhone 6 Plus	1	2915	7	5
12	iPhone 6S	2	1715	8	4
13	iPhone 6S Plus	2	2750	8	5
14	iPhone 7	2	1960	9	4
15	iPhone 7 Plus	3	2900	9	5
16	iPhone 8	2	1821	10	4
17	iPhone 8 Plus	3	2675	10	5
18	iPhone X	3	2716	10	6
\.


--
-- Name: model_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('model_model_id_seq', 18, true);


--
-- Data for Name: storage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY storage (storage_id, storage_gb) FROM stdin;
1	4
2	8
3	16
4	32
5	64
6	128
7	256
\.


--
-- Name: storage_storage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('storage_storage_id_seq', 7, true);


--
-- Name: color color_color_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY color
    ADD CONSTRAINT color_color_key UNIQUE (color);


--
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY color
    ADD CONSTRAINT color_pkey PRIMARY KEY (color_id);


--
-- Name: cpu cpu_cpu_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cpu
    ADD CONSTRAINT cpu_cpu_name_key UNIQUE (cpu_name);


--
-- Name: cpu_manufacturer cpu_manufacturer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cpu_manufacturer
    ADD CONSTRAINT cpu_manufacturer_pkey PRIMARY KEY (cpu_manufacturer_id);


--
-- Name: cpu cpu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cpu
    ADD CONSTRAINT cpu_pkey PRIMARY KEY (cpu_id);


--
-- Name: display display_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY display
    ADD CONSTRAINT display_pkey PRIMARY KEY (display_id);


--
-- Name: model model_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model
    ADD CONSTRAINT model_name_key UNIQUE (name);


--
-- Name: model model_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);


--
-- Name: storage storage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY storage
    ADD CONSTRAINT storage_pkey PRIMARY KEY (storage_id);


--
-- Name: storage storage_storage_gb_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY storage
    ADD CONSTRAINT storage_storage_gb_key UNIQUE (storage_gb);


--
-- Name: available_color available_color_color_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY available_color
    ADD CONSTRAINT available_color_color_id_fkey FOREIGN KEY (color_id) REFERENCES color(color_id);


--
-- Name: available_color available_color_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY available_color
    ADD CONSTRAINT available_color_model_id_fkey FOREIGN KEY (model_id) REFERENCES model(model_id);


--
-- Name: available_storage available_storage_model_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY available_storage
    ADD CONSTRAINT available_storage_model_id_fkey FOREIGN KEY (model_id) REFERENCES model(model_id);


--
-- Name: available_storage available_storage_storage_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY available_storage
    ADD CONSTRAINT available_storage_storage_id_fkey FOREIGN KEY (storage_id) REFERENCES storage(storage_id);


--
-- Name: cpu cpu_cpu_manufacturer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cpu
    ADD CONSTRAINT cpu_cpu_manufacturer_id_fkey FOREIGN KEY (cpu_manufacturer_id) REFERENCES cpu_manufacturer(cpu_manufacturer_id);


--
-- Name: model model_cpu_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model
    ADD CONSTRAINT model_cpu_id_fkey FOREIGN KEY (cpu_id) REFERENCES cpu(cpu_id);


--
-- Name: model model_display_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model
    ADD CONSTRAINT model_display_id_fkey FOREIGN KEY (display_id) REFERENCES display(display_id);


--
-- PostgreSQL database dump complete
--

