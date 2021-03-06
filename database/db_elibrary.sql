--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

-- Started on 2018-12-26 17:07:17

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 16721)
-- Name: buku; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.buku (
    id integer NOT NULL,
    id_kategori integer,
    judul_buku text,
    no_buku integer,
    penerbit text,
    pengarang text,
    tahun_terbit date,
    tgl_upload date,
    gambar text
);


ALTER TABLE public.buku OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16719)
-- Name: buku_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.buku ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.buku_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 201 (class 1259 OID 16741)
-- Name: detail_peminjaman; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detail_peminjaman (
    id integer NOT NULL,
    id_peminjaman integer,
    id_buku integer,
    jumlah integer
);


ALTER TABLE public.detail_peminjaman OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16739)
-- Name: detail_peminjaman_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.detail_peminjaman ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.detail_peminjaman_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 203 (class 1259 OID 16755)
-- Name: detail_peminjaman_temp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.detail_peminjaman_temp (
    id integer NOT NULL,
    id_buku integer,
    jumlah integer
);


ALTER TABLE public.detail_peminjaman_temp OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16753)
-- Name: detail_peminjaman_temp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.detail_peminjaman_temp ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.detail_peminjaman_temp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 199 (class 1259 OID 16731)
-- Name: peminjaman; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peminjaman (
    id integer NOT NULL,
    nama_peminjam text,
    tgl_pinjam date,
    tgl_pengembalian date
);


ALTER TABLE public.peminjaman OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16729)
-- Name: peminjaman_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.peminjaman ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.peminjaman_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 2835 (class 0 OID 16721)
-- Dependencies: 197
-- Data for Name: buku; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.buku (id, id_kategori, judul_buku, no_buku, penerbit, pengarang, tahun_terbit, tgl_upload, gambar) FROM stdin;
1	1	Belajar PHP & JQuery Pemula\n	911111233	PT. Erlangga	Samsam MN	2018-01-01	2018-12-26	http://img.bukabuku.net/product/d/b/db24634dea80499939c6a4a881ba90fd.jpg
2	1	Pengenalan Bahasa Pemograman Python	992222123	PT. Erlangga	Samsam MN	2017-03-02	2018-12-25	https://toko.baliwae.com/images/logika-python.jpg
5	\N	Belajar Vue.js 2 dan Laravel	51231111	PT. Erlangga	Samsam MN	2018-12-27	\N	https://www.packtpub.com/sites/default/files/B07332.png
\.


--
-- TOC entry 2839 (class 0 OID 16741)
-- Dependencies: 201
-- Data for Name: detail_peminjaman; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detail_peminjaman (id, id_peminjaman, id_buku, jumlah) FROM stdin;
\.


--
-- TOC entry 2841 (class 0 OID 16755)
-- Dependencies: 203
-- Data for Name: detail_peminjaman_temp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.detail_peminjaman_temp (id, id_buku, jumlah) FROM stdin;
14	2	2
15	5	2
\.


--
-- TOC entry 2837 (class 0 OID 16731)
-- Dependencies: 199
-- Data for Name: peminjaman; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peminjaman (id, nama_peminjam, tgl_pinjam, tgl_pengembalian) FROM stdin;
\.


--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 196
-- Name: buku_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.buku_id_seq', 5, true);


--
-- TOC entry 2848 (class 0 OID 0)
-- Dependencies: 200
-- Name: detail_peminjaman_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detail_peminjaman_id_seq', 1, false);


--
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 202
-- Name: detail_peminjaman_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.detail_peminjaman_temp_id_seq', 15, true);


--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 198
-- Name: peminjaman_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.peminjaman_id_seq', 1, false);


--
-- TOC entry 2706 (class 2606 OID 16728)
-- Name: buku buku_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.buku
    ADD CONSTRAINT buku_pkey PRIMARY KEY (id);


--
-- TOC entry 2710 (class 2606 OID 16745)
-- Name: detail_peminjaman detail_peminjaman_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_peminjaman
    ADD CONSTRAINT detail_peminjaman_pkey PRIMARY KEY (id);


--
-- TOC entry 2712 (class 2606 OID 16759)
-- Name: detail_peminjaman_temp detail_peminjaman_temp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.detail_peminjaman_temp
    ADD CONSTRAINT detail_peminjaman_temp_pkey PRIMARY KEY (id);


--
-- TOC entry 2708 (class 2606 OID 16738)
-- Name: peminjaman peminjaman_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peminjaman
    ADD CONSTRAINT peminjaman_pkey PRIMARY KEY (id);


-- Completed on 2018-12-26 17:07:18

--
-- PostgreSQL database dump complete
--

