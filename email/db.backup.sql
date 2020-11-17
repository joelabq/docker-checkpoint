--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.4 (Ubuntu 12.4-0ubuntu0.20.04.1)

-- Started on 2020-11-16 09:42:04 MST

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
-- TOC entry 204 (class 1259 OID 18127)
-- Name: email; Type: TABLE; Schema: public; Owner: joel
--

CREATE TABLE public.email (
    id integer NOT NULL,
    sender text,
    recipient text,
    subject text,
    message text,
    date text
);


ALTER TABLE public.email OWNER TO joel;

--
-- TOC entry 203 (class 1259 OID 18125)
-- Name: email_id_seq; Type: SEQUENCE; Schema: public; Owner: joel
--

CREATE SEQUENCE public.email_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.email_id_seq OWNER TO joel;

--
-- TOC entry 2973 (class 0 OID 0)
-- Dependencies: 203
-- Name: email_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: joel
--

ALTER SEQUENCE public.email_id_seq OWNED BY public.email.id;


--
-- TOC entry 202 (class 1259 OID 17060)
-- Name: imported_data; Type: TABLE; Schema: public; Owner: joel
--

CREATE UNLOGGED TABLE public.imported_data (
    doc json
);


ALTER TABLE public.imported_data OWNER TO joel;

--
-- TOC entry 2836 (class 2604 OID 18130)
-- Name: email id; Type: DEFAULT; Schema: public; Owner: joel
--

ALTER TABLE ONLY public.email ALTER COLUMN id SET DEFAULT nextval('public.email_id_seq'::regclass);


--
-- TOC entry 2967 (class 0 OID 18127)
-- Dependencies: 204
-- Data for Name: email; Type: TABLE DATA; Schema: public; Owner: joel
--

COPY public.email (id, sender, recipient, subject, message, date) FROM stdin;
1	katie@galvanize.com	jane@galvanize.com	Standup meeting	Mr. and Mrs. Dursley, of number four, Privet Drive, wereproud to say that they were perfectly normal, thankyou very much.	2020-08-23T18:25:43.511Z
2	jean-marc@galvanize.com	jane@galvanize.com	Retro meeting	They were the last people you’d expect to be involved in anything strange or mysterious, because they just didn’thold with such nonsense.	2020-04-23T18:25:43.511Z
3	mattias@galvanize.com	jane@galvanize.com	Last week's reports	 Mrs. Dursley was thin and blonde and had nearly twice the usual amount of neck, which came in very useful as she spent so much of her time craning over garden fences, spying on the neighbors.	2020-06-23T18:25:43.511Z
4	maddie@galvanize.com	jane@galvanize.com	Happy hour next Friday!	 Mrs. Potter was Mrs. Dursley’s sister, but they hadn’t met for several years; in fact, Mrs. Dursley pretended she didn’t have a sister	2019-12-23T18:25:43.511Z
5	jeff@galvanize.com	jane@galvanize.com	1 on 1 meeting	 ey didn’t think they could bear it if anyone found out about thePotters. 	2020-02-23T18:25:43.511Z
6	tanner@galvanize.com	jane@galvanize.com	Holiday schedule	The Dursleys had a small son called Dudley and in their opinion there was no finer boy anywhere.	2020-03-23T18:25:43.511Z
7	jarret@galvanize.com	jane@galvanize.com	All hands meeting	 is boy was another good reason for keeping the Potters away; they didn’t want Dudley mixing with a child like that.	2019-07-23T18:25:43.511Z
8	becky@galvanize.com	jane@galvanize.com	Vacation Request	  e Dursleys shudderedto think what the neighbors would say if the Potters arrived in the street.	2020-01-23T18:25:43.511Z
9	ash@galvanize.com	jane@galvanize.com	New employee next week	Mr. Dursley was the director of a fi rm called Grunnings, whichmade drills. He was a big, beefy man with hardly any neck, although he did have a very large mustache. 	2019-01-23T18:25:43.511Z
10	rich@galvanize.com	jane@galvanize.com	Standup meeting	  e Dursleys knew that the Potters had a small son, too, butthey had never even seen him.	2020-03-23T18:25:43.511Z
11	erin@galvanize.com	jane@galvanize.com	New hire orientation assistance needed	When Mr. and Mrs. Dursley woke up on the dull, gray Tuesday our story starts, there was nothing about the cloudy sky outside tosuggest that strange and mysterious things would soon be happening all over the country	2020-04-23T18:25:43.511Z
12	charlie@galvanize.com	jane@galvanize.com	Expense reports due!	 Mr. Dursley hummed as he picked out his most boring tie for work, and Mrs. Dursley gossiped away happily as she wrestled a screaming Dudley into his high chair.	2018-05-23T18:25:43.511Z
13	jacob@galvanize.com	jane@galvanize.com	Updated travel policy information	None of them noticed a large, tawny owl fl utter past the window	2018-05-23T18:25:43.511Z
14	louise@galvanize.com	jane@galvanize.com	Cat videos	At half past eight, Mr. Dursley picked up his briefcase, pecked  Mrs. Dursley on the cheek, and tried to kiss Dudley good-bye but missed, because Dudley was now having a tantrum and throwing his cereal at the walls. 	2020-02-23T18:25:43.511Z
15	ash@galavnize.com	jane@galvanize.com	I need help	 “Little tyke,” chortled Mr. Dursley as he left  the house. 	2019-04-23T18:25:43.511Z
16	ash@galvanize.com	jane@galvanize.com	Blocked on React issue	He got into his car and backed out of number four’s drive	2020-03-23T18:25:43.511Z
17	katie@galvanize.com	jane@galvanize.com	Happy hour this Thursday!	It was on the corner of the street that he noticed the fi rst sign of something peculiar — a cat reading a map	2020-03-23T18:25:43.511Z
18	brandon@galvanize.com	jane@galvanize.com	Standup Notes	For a second, Mr.  Dursley didn’t realize what he had seen — then he jerked his head  around to look again.	2020-03-23T18:25:43.511Z
19	brandon@galvanize.com	jane@galvanize.com	Managers meeting	The Dursleys had everything they wanted, but they also had a secret, and their greatest fear was that somebody would discover it. 	2020-02-23T18:25:43.511Z
\.


--
-- TOC entry 2965 (class 0 OID 17060)
-- Dependencies: 202
-- Data for Name: imported_data; Type: TABLE DATA; Schema: public; Owner: joel
--

COPY public.imported_data (doc) FROM stdin;
\.


--
-- TOC entry 2974 (class 0 OID 0)
-- Dependencies: 203
-- Name: email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: joel
--

SELECT pg_catalog.setval('public.email_id_seq', 19, true);


--
-- TOC entry 2838 (class 2606 OID 18135)
-- Name: email email_pkey; Type: CONSTRAINT; Schema: public; Owner: joel
--

ALTER TABLE ONLY public.email
    ADD CONSTRAINT email_pkey PRIMARY KEY (id);


-- Completed on 2020-11-16 09:42:04 MST

--
-- PostgreSQL database dump complete
--

