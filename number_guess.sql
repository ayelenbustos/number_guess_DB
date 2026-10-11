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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 184);
INSERT INTO public.games VALUES (2, 1, 869);
INSERT INTO public.games VALUES (3, 2, 561);
INSERT INTO public.games VALUES (4, 2, 198);
INSERT INTO public.games VALUES (5, 1, 595);
INSERT INTO public.games VALUES (6, 1, 489);
INSERT INTO public.games VALUES (7, 1, 480);
INSERT INTO public.games VALUES (8, 3, 47);
INSERT INTO public.games VALUES (9, 3, 526);
INSERT INTO public.games VALUES (10, 4, 591);
INSERT INTO public.games VALUES (11, 4, 367);
INSERT INTO public.games VALUES (12, 3, 206);
INSERT INTO public.games VALUES (13, 3, 236);
INSERT INTO public.games VALUES (14, 3, 370);
INSERT INTO public.games VALUES (15, 5, 920);
INSERT INTO public.games VALUES (16, 5, 942);
INSERT INTO public.games VALUES (17, 6, 472);
INSERT INTO public.games VALUES (18, 6, 416);
INSERT INTO public.games VALUES (19, 5, 680);
INSERT INTO public.games VALUES (20, 5, 16);
INSERT INTO public.games VALUES (21, 5, 308);
INSERT INTO public.games VALUES (22, 7, 887);
INSERT INTO public.games VALUES (23, 7, 281);
INSERT INTO public.games VALUES (24, 8, 373);
INSERT INTO public.games VALUES (25, 8, 352);
INSERT INTO public.games VALUES (26, 7, 550);
INSERT INTO public.games VALUES (27, 7, 803);
INSERT INTO public.games VALUES (28, 7, 158);
INSERT INTO public.games VALUES (29, 9, 16);
INSERT INTO public.games VALUES (30, 10, 679);
INSERT INTO public.games VALUES (31, 10, 671);
INSERT INTO public.games VALUES (32, 11, 449);
INSERT INTO public.games VALUES (33, 11, 519);
INSERT INTO public.games VALUES (34, 10, 309);
INSERT INTO public.games VALUES (35, 10, 60);
INSERT INTO public.games VALUES (36, 10, 577);
INSERT INTO public.games VALUES (37, 12, 546);
INSERT INTO public.games VALUES (38, 12, 781);
INSERT INTO public.games VALUES (39, 13, 620);
INSERT INTO public.games VALUES (40, 13, 201);
INSERT INTO public.games VALUES (41, 12, 803);
INSERT INTO public.games VALUES (42, 12, 139);
INSERT INTO public.games VALUES (43, 12, 604);
INSERT INTO public.games VALUES (44, 14, 534);
INSERT INTO public.games VALUES (45, 14, 340);
INSERT INTO public.games VALUES (46, 15, 140);
INSERT INTO public.games VALUES (47, 15, 1000);
INSERT INTO public.games VALUES (48, 14, 970);
INSERT INTO public.games VALUES (49, 14, 416);
INSERT INTO public.games VALUES (50, 14, 723);
INSERT INTO public.games VALUES (51, 16, 263);
INSERT INTO public.games VALUES (52, 16, 722);
INSERT INTO public.games VALUES (53, 17, 663);
INSERT INTO public.games VALUES (54, 17, 171);
INSERT INTO public.games VALUES (55, 16, 148);
INSERT INTO public.games VALUES (56, 16, 42);
INSERT INTO public.games VALUES (57, 16, 74);
INSERT INTO public.games VALUES (58, 18, 883);
INSERT INTO public.games VALUES (59, 18, 627);
INSERT INTO public.games VALUES (60, 19, 301);
INSERT INTO public.games VALUES (61, 19, 12);
INSERT INTO public.games VALUES (62, 18, 508);
INSERT INTO public.games VALUES (63, 18, 381);
INSERT INTO public.games VALUES (64, 18, 98);
INSERT INTO public.games VALUES (65, 20, 135);
INSERT INTO public.games VALUES (66, 20, 561);
INSERT INTO public.games VALUES (67, 21, 38);
INSERT INTO public.games VALUES (68, 21, 303);
INSERT INTO public.games VALUES (69, 20, 409);
INSERT INTO public.games VALUES (70, 20, 268);
INSERT INTO public.games VALUES (71, 20, 56);
INSERT INTO public.games VALUES (72, 22, 643);
INSERT INTO public.games VALUES (73, 22, 586);
INSERT INTO public.games VALUES (74, 23, 382);
INSERT INTO public.games VALUES (75, 23, 447);
INSERT INTO public.games VALUES (76, 22, 487);
INSERT INTO public.games VALUES (77, 22, 890);
INSERT INTO public.games VALUES (78, 22, 381);
INSERT INTO public.games VALUES (79, 24, 919);
INSERT INTO public.games VALUES (80, 24, 251);
INSERT INTO public.games VALUES (81, 25, 592);
INSERT INTO public.games VALUES (82, 25, 59);
INSERT INTO public.games VALUES (83, 24, 301);
INSERT INTO public.games VALUES (84, 24, 30);
INSERT INTO public.games VALUES (85, 24, 566);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1791761014074');
INSERT INTO public.users VALUES (2, 'user_1791761014073');
INSERT INTO public.users VALUES (3, 'user_1791761195987');
INSERT INTO public.users VALUES (4, 'user_1791761195986');
INSERT INTO public.users VALUES (5, 'user_1791761395377');
INSERT INTO public.users VALUES (6, 'user_1791761395376');
INSERT INTO public.users VALUES (7, 'user_1791761531534');
INSERT INTO public.users VALUES (8, 'user_1791761531533');
INSERT INTO public.users VALUES (9, 'ayefreecode');
INSERT INTO public.users VALUES (10, 'user_1791761759759');
INSERT INTO public.users VALUES (11, 'user_1791761759758');
INSERT INTO public.users VALUES (12, 'user_1791761785342');
INSERT INTO public.users VALUES (13, 'user_1791761785341');
INSERT INTO public.users VALUES (14, 'user_1791761861780');
INSERT INTO public.users VALUES (15, 'user_1791761861779');
INSERT INTO public.users VALUES (16, 'user_1791761895135');
INSERT INTO public.users VALUES (17, 'user_1791761895134');
INSERT INTO public.users VALUES (18, 'user_1791762018690');
INSERT INTO public.users VALUES (19, 'user_1791762018689');
INSERT INTO public.users VALUES (20, 'user_1791762133885');
INSERT INTO public.users VALUES (21, 'user_1791762133884');
INSERT INTO public.users VALUES (22, 'user_1791762172689');
INSERT INTO public.users VALUES (23, 'user_1791762172688');
INSERT INTO public.users VALUES (24, 'user_1791762189441');
INSERT INTO public.users VALUES (25, 'user_1791762189440');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 85, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

