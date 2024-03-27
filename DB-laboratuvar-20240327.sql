--
-- PostgreSQL database cluster dump
--

-- Started on 2024-03-27 12:13:08

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;

--
-- User Configurations
--








--
-- Databases
--

--
-- Database "template1" dump
--

\connect template1

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2024-03-27 12:13:08

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

-- Completed on 2024-03-27 12:13:08

--
-- PostgreSQL database dump complete
--

--
-- Database "laboratuvar" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2024-03-27 12:13:08

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

--
-- TOC entry 3472 (class 1262 OID 106782)
-- Name: laboratuvar; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE laboratuvar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_Turkey.1254';


ALTER DATABASE laboratuvar OWNER TO postgres;

\connect laboratuvar

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

--
-- TOC entry 6 (class 2615 OID 106783)
-- Name: ahi_lab; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ahi_lab;


ALTER SCHEMA ahi_lab OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 228 (class 1259 OID 106845)
-- Name: tbl_analizler; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_analizler (
    analiz_id integer NOT NULL,
    analiz_adi character varying,
    malzeme character varying,
    metod character varying,
    ucret character varying,
    laboratuvar_id integer,
    ana_sorumlu_id integer,
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_analizler OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 228
-- Name: COLUMN tbl_analizler.ana_sorumlu_id; Type: COMMENT; Schema: ahi_lab; Owner: postgres
--

COMMENT ON COLUMN ahi_lab.tbl_analizler.ana_sorumlu_id IS 'silinebilir';


--
-- TOC entry 227 (class 1259 OID 106844)
-- Name: tbl_analizler_analiz_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_analizler_analiz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_analizler_analiz_id_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 227
-- Name: tbl_analizler_analiz_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_analizler_analiz_id_seq OWNED BY ahi_lab.tbl_analizler.analiz_id;


--
-- TOC entry 220 (class 1259 OID 106805)
-- Name: tbl_birimler; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_birimler (
    birim_id integer NOT NULL,
    birim_adi character varying,
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_birimler OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 106804)
-- Name: tbl_birimler_birim_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_birimler_birim_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_birimler_birim_id_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 219
-- Name: tbl_birimler_birim_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_birimler_birim_id_seq OWNED BY ahi_lab.tbl_birimler.birim_id;


--
-- TOC entry 222 (class 1259 OID 106814)
-- Name: tbl_bolumler; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_bolumler (
    bolum_id integer NOT NULL,
    bolum_adi character varying,
    birim_id integer,
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_bolumler OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 106813)
-- Name: tbl_bolumler_bolum_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_bolumler_bolum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_bolumler_bolum_id_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 221
-- Name: tbl_bolumler_bolum_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_bolumler_bolum_id_seq OWNED BY ahi_lab.tbl_bolumler.bolum_id;


--
-- TOC entry 236 (class 1259 OID 106885)
-- Name: tbl_cihaz_resimleri; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_cihaz_resimleri (
    c_resim_id integer NOT NULL,
    resim_adi character varying,
    cihaz_id integer,
    yukleme_tarihi timestamp without time zone DEFAULT now(),
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_cihaz_resimleri OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 106884)
-- Name: tbl_cihaz_resimleri_c_resim_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_cihaz_resimleri_c_resim_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_cihaz_resimleri_c_resim_id_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 235
-- Name: tbl_cihaz_resimleri_c_resim_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_cihaz_resimleri_c_resim_id_seq OWNED BY ahi_lab.tbl_cihaz_resimleri.c_resim_id;


--
-- TOC entry 218 (class 1259 OID 106795)
-- Name: tbl_cihazlar; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_cihazlar (
    cihaz_id integer NOT NULL,
    cihaz_adi character varying NOT NULL,
    marka character varying,
    model character varying,
    demirbas_sicil_no character varying,
    durumu boolean DEFAULT true,
    adet integer,
    laboratuvar_id integer,
    ozellikler character varying,
    c_sorumlu_id integer,
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_cihazlar OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 218
-- Name: COLUMN tbl_cihazlar.c_sorumlu_id; Type: COMMENT; Schema: ahi_lab; Owner: postgres
--

COMMENT ON COLUMN ahi_lab.tbl_cihazlar.c_sorumlu_id IS 'silinebilir';


--
-- TOC entry 217 (class 1259 OID 106794)
-- Name: tbl_cihazlar_cihaz_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_cihazlar_cihaz_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_cihazlar_cihaz_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 217
-- Name: tbl_cihazlar_cihaz_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_cihazlar_cihaz_id_seq OWNED BY ahi_lab.tbl_cihazlar.cihaz_id;


--
-- TOC entry 230 (class 1259 OID 106855)
-- Name: tbl_kullanicilar; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_kullanicilar (
    kullanici_id integer NOT NULL,
    ad character varying,
    soyad character varying,
    kullanici_adi character varying,
    sifre character varying,
    ekleyen_kullanici_id integer,
    yetki_id integer,
    aktif_mi boolean DEFAULT true,
    silindi_mi boolean DEFAULT false,
    ekleme_tarihi timestamp without time zone DEFAULT now()
);


ALTER TABLE ahi_lab.tbl_kullanicilar OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 106854)
-- Name: tbl_kullanicilar_kullanici_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_kullanicilar_kullanici_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_kullanicilar_kullanici_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 229
-- Name: tbl_kullanicilar_kullanici_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_kullanicilar_kullanici_id_seq OWNED BY ahi_lab.tbl_kullanicilar.kullanici_id;


--
-- TOC entry 238 (class 1259 OID 106903)
-- Name: tbl_lab_resimleri; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_lab_resimleri (
    l_resim_id integer NOT NULL,
    resim_adi character varying,
    laboratuvar_id integer,
    yukleme_tarihi timestamp without time zone DEFAULT now(),
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_lab_resimleri OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 106902)
-- Name: tbl_lab_resimleri_l_resim_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_lab_resimleri_l_resim_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_lab_resimleri_l_resim_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 237
-- Name: tbl_lab_resimleri_l_resim_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_lab_resimleri_l_resim_id_seq OWNED BY ahi_lab.tbl_lab_resimleri.l_resim_id;


--
-- TOC entry 224 (class 1259 OID 106823)
-- Name: tbl_lab_turleri; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_lab_turleri (
    tur_id integer NOT NULL,
    lab_turu character varying,
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_lab_turleri OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 106822)
-- Name: tbl_lab_turleri_tur_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_lab_turleri_tur_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_lab_turleri_tur_id_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbl_lab_turleri_tur_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_lab_turleri_tur_id_seq OWNED BY ahi_lab.tbl_lab_turleri.tur_id;


--
-- TOC entry 216 (class 1259 OID 106785)
-- Name: tbl_laboratuvarlar; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_laboratuvarlar (
    laboratuvar_id integer NOT NULL,
    lab_adi character varying NOT NULL,
    birim_id integer,
    bolum_id integer,
    sorumlu_id integer,
    tur_id integer,
    silindi_mi boolean DEFAULT false,
    l_ozellik character varying
);


ALTER TABLE ahi_lab.tbl_laboratuvarlar OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 106784)
-- Name: tbl_laboratuvar_laboratuvari_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_laboratuvar_laboratuvari_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_laboratuvar_laboratuvari_id_seq OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 215
-- Name: tbl_laboratuvar_laboratuvari_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_laboratuvar_laboratuvari_id_seq OWNED BY ahi_lab.tbl_laboratuvarlar.laboratuvar_id;


--
-- TOC entry 226 (class 1259 OID 106835)
-- Name: tbl_sorumlular; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_sorumlular (
    sorumlu_id integer NOT NULL,
    ad character varying,
    soyad character varying,
    telefon character varying,
    dahili character varying,
    e_posta character varying,
    unvan_id integer,
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_sorumlular OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 106834)
-- Name: tbl_sorumlular_sorumlu_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_sorumlular_sorumlu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_sorumlular_sorumlu_id_seq OWNER TO postgres;

--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbl_sorumlular_sorumlu_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_sorumlular_sorumlu_id_seq OWNED BY ahi_lab.tbl_sorumlular.sorumlu_id;


--
-- TOC entry 232 (class 1259 OID 106866)
-- Name: tbl_unvanlar; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_unvanlar (
    unvan_id integer NOT NULL,
    unvan_adi character varying,
    silindi_mi boolean DEFAULT false
);


ALTER TABLE ahi_lab.tbl_unvanlar OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 106865)
-- Name: tbl_unvan_unvan_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_unvan_unvan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_unvan_unvan_id_seq OWNER TO postgres;

--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 231
-- Name: tbl_unvan_unvan_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_unvan_unvan_id_seq OWNED BY ahi_lab.tbl_unvanlar.unvan_id;


--
-- TOC entry 234 (class 1259 OID 106876)
-- Name: tbl_yetkiler; Type: TABLE; Schema: ahi_lab; Owner: postgres
--

CREATE TABLE ahi_lab.tbl_yetkiler (
    yetki_id integer NOT NULL,
    yetki_adi character varying
);


ALTER TABLE ahi_lab.tbl_yetkiler OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 106875)
-- Name: tbl_yetki_yetki_id_seq; Type: SEQUENCE; Schema: ahi_lab; Owner: postgres
--

CREATE SEQUENCE ahi_lab.tbl_yetki_yetki_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ahi_lab.tbl_yetki_yetki_id_seq OWNER TO postgres;

--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 233
-- Name: tbl_yetki_yetki_id_seq; Type: SEQUENCE OWNED BY; Schema: ahi_lab; Owner: postgres
--

ALTER SEQUENCE ahi_lab.tbl_yetki_yetki_id_seq OWNED BY ahi_lab.tbl_yetkiler.yetki_id;


--
-- TOC entry 239 (class 1259 OID 106920)
-- Name: vw_c_resim; Type: VIEW; Schema: ahi_lab; Owner: postgres
--

CREATE VIEW ahi_lab.vw_c_resim AS
 SELECT count(*) AS resim_sayisi,
    r.cihaz_id
   FROM ahi_lab.tbl_cihaz_resimleri r
  GROUP BY r.cihaz_id;


ALTER TABLE ahi_lab.vw_c_resim OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 106924)
-- Name: vw_l_resim; Type: VIEW; Schema: ahi_lab; Owner: postgres
--

CREATE VIEW ahi_lab.vw_l_resim AS
 SELECT count(*) AS resim_sayisi,
    r.laboratuvar_id
   FROM ahi_lab.tbl_lab_resimleri r
  WHERE (r.silindi_mi = false)
  GROUP BY r.laboratuvar_id;


ALTER TABLE ahi_lab.vw_l_resim OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 115123)
-- Name: vw_search; Type: VIEW; Schema: ahi_lab; Owner: postgres
--

CREATE VIEW ahi_lab.vw_search AS
 SELECT l.laboratuvar_id,
    l.lab_adi,
    b.birim_adi,
    o.bolum_adi,
    t.lab_turu,
    c.cihaz_adi,
    c.cihaz_id,
    a.analiz_id,
    a.analiz_adi
   FROM (((((ahi_lab.tbl_laboratuvarlar l
     FULL JOIN ahi_lab.tbl_lab_turleri t ON ((l.tur_id = t.tur_id)))
     FULL JOIN ahi_lab.tbl_birimler b ON ((b.birim_id = l.birim_id)))
     FULL JOIN ahi_lab.tbl_bolumler o ON ((o.bolum_id = l.bolum_id)))
     FULL JOIN ahi_lab.tbl_cihazlar c ON ((c.laboratuvar_id = l.laboratuvar_id)))
     FULL JOIN ahi_lab.tbl_analizler a ON ((a.laboratuvar_id = l.laboratuvar_id)))
  WHERE ((c.silindi_mi = false) AND (l.silindi_mi = false) AND (a.silindi_mi = false));


ALTER TABLE ahi_lab.vw_search OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 115131)
-- Name: vw_search_l; Type: VIEW; Schema: ahi_lab; Owner: postgres
--

CREATE VIEW ahi_lab.vw_search_l AS
 SELECT l.laboratuvar_id,
    l.lab_adi,
    b.birim_adi,
    o.bolum_adi,
    t.lab_turu
   FROM (((ahi_lab.tbl_laboratuvarlar l
     FULL JOIN ahi_lab.tbl_lab_turleri t ON ((l.tur_id = t.tur_id)))
     FULL JOIN ahi_lab.tbl_birimler b ON ((b.birim_id = l.birim_id)))
     FULL JOIN ahi_lab.tbl_bolumler o ON ((o.bolum_id = l.bolum_id)))
  WHERE (l.silindi_mi = false);


ALTER TABLE ahi_lab.vw_search_l OWNER TO postgres;

--
-- TOC entry 3258 (class 2604 OID 106848)
-- Name: tbl_analizler analiz_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_analizler ALTER COLUMN analiz_id SET DEFAULT nextval('ahi_lab.tbl_analizler_analiz_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 106808)
-- Name: tbl_birimler birim_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_birimler ALTER COLUMN birim_id SET DEFAULT nextval('ahi_lab.tbl_birimler_birim_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 106817)
-- Name: tbl_bolumler bolum_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_bolumler ALTER COLUMN bolum_id SET DEFAULT nextval('ahi_lab.tbl_bolumler_bolum_id_seq'::regclass);


--
-- TOC entry 3267 (class 2604 OID 106888)
-- Name: tbl_cihaz_resimleri c_resim_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_cihaz_resimleri ALTER COLUMN c_resim_id SET DEFAULT nextval('ahi_lab.tbl_cihaz_resimleri_c_resim_id_seq'::regclass);


--
-- TOC entry 3247 (class 2604 OID 106798)
-- Name: tbl_cihazlar cihaz_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_cihazlar ALTER COLUMN cihaz_id SET DEFAULT nextval('ahi_lab.tbl_cihazlar_cihaz_id_seq'::regclass);


--
-- TOC entry 3260 (class 2604 OID 106858)
-- Name: tbl_kullanicilar kullanici_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_kullanicilar ALTER COLUMN kullanici_id SET DEFAULT nextval('ahi_lab.tbl_kullanicilar_kullanici_id_seq'::regclass);


--
-- TOC entry 3270 (class 2604 OID 106906)
-- Name: tbl_lab_resimleri l_resim_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_lab_resimleri ALTER COLUMN l_resim_id SET DEFAULT nextval('ahi_lab.tbl_lab_resimleri_l_resim_id_seq'::regclass);


--
-- TOC entry 3254 (class 2604 OID 106826)
-- Name: tbl_lab_turleri tur_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_lab_turleri ALTER COLUMN tur_id SET DEFAULT nextval('ahi_lab.tbl_lab_turleri_tur_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 106788)
-- Name: tbl_laboratuvarlar laboratuvar_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_laboratuvarlar ALTER COLUMN laboratuvar_id SET DEFAULT nextval('ahi_lab.tbl_laboratuvar_laboratuvari_id_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 106838)
-- Name: tbl_sorumlular sorumlu_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_sorumlular ALTER COLUMN sorumlu_id SET DEFAULT nextval('ahi_lab.tbl_sorumlular_sorumlu_id_seq'::regclass);


--
-- TOC entry 3264 (class 2604 OID 106869)
-- Name: tbl_unvanlar unvan_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_unvanlar ALTER COLUMN unvan_id SET DEFAULT nextval('ahi_lab.tbl_unvan_unvan_id_seq'::regclass);


--
-- TOC entry 3266 (class 2604 OID 106879)
-- Name: tbl_yetkiler yetki_id; Type: DEFAULT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_yetkiler ALTER COLUMN yetki_id SET DEFAULT nextval('ahi_lab.tbl_yetki_yetki_id_seq'::regclass);


--
-- TOC entry 3456 (class 0 OID 106845)
-- Dependencies: 228
-- Data for Name: tbl_analizler; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_analizler (analiz_id, analiz_adi, malzeme, metod, ucret, laboratuvar_id, ana_sorumlu_id, silindi_mi) FROM stdin;
1	Bilgisayar analizi	şeyler	şey	300	1	1	f
5	test 13	malzeme			3	1	f
2	Test bilgisayarla				3	1	f
4	Analiz Test				2	\N	f
3	Analiz 22				2	1	t
\.


--
-- TOC entry 3448 (class 0 OID 106805)
-- Dependencies: 220
-- Data for Name: tbl_birimler; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_birimler (birim_id, birim_adi, silindi_mi) FROM stdin;
1	Mühendislik Fakültesi	f
2	Fen-Edebiyat Fakültesi	f
\.


--
-- TOC entry 3450 (class 0 OID 106814)
-- Dependencies: 222
-- Data for Name: tbl_bolumler; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_bolumler (bolum_id, bolum_adi, birim_id, silindi_mi) FROM stdin;
2	Elektrik-Elektronik Müh.	1	f
1	Bilgisayar Mühendisliği	1	f
3	Makine Mühendisliği	1	f
4	Eğitim Bölümü	2	f
\.


--
-- TOC entry 3464 (class 0 OID 106885)
-- Dependencies: 236
-- Data for Name: tbl_cihaz_resimleri; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_cihaz_resimleri (c_resim_id, resim_adi, cihaz_id, yukleme_tarihi, silindi_mi) FROM stdin;
4	2024-03-23T_13-58-18Z_5097000.jpg	51	2024-03-23 13:58:18.510977	f
5	2024-03-23T_13-58-18Z_5132630.png	51	2024-03-23 13:58:18.514635	f
6	2024-03-23T_13-58-18Z_5153640.jpg	51	2024-03-23 13:58:18.516877	f
1	2024-03-23T_13-43-43Z_4884140.jpg	4	2024-03-23 13:43:43.48989	f
3	2024-03-23T_13-43-43Z_5895520.png	4	2024-03-23 13:43:43.590907	t
2	2024-03-23T_13-43-43Z_5877270.jpg	4	2024-03-23 13:43:43.588892	f
\.


--
-- TOC entry 3446 (class 0 OID 106795)
-- Dependencies: 218
-- Data for Name: tbl_cihazlar; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_cihazlar (cihaz_id, cihaz_adi, marka, model, demirbas_sicil_no, durumu, adet, laboratuvar_id, ozellikler, c_sorumlu_id, silindi_mi) FROM stdin;
33	Diğer Cihaz			vvv	t	\N	3		\N	f
1	Bilgisayar Kasası	asus	43	25834	t	23	1	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, tempora. Numquam corrupti id incidunt quae quidem, ullam fuga esse quaerat odio tenetur quas!	\N	f
3	Bilgisayar Kasası	asus	43	25834	t	23	1	Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, tempora. Numquam corrupti id incidunt quae quidem, ullam fuga esse quaerat odio tenetur quas!	\N	f
2	Bilgisayar Ekranı	asus	56	25823	f	23	1	Lorem ipsum dolor sit amet consectetur, adipisicing elit. Tenetur veniam perspiciatis recusandae cum odit nostrum reiciendis hic?	\N	f
4	Osiloskop			24b394	t	2	2	Osiloskop kullandığımız tüm elektrikli aletlerin elektriksel değerlerini ölçmeye yarayan bir alettir.	\N	f
6	Dijital multimetre			34c82	f	6	2	Dijital multimetre, iki veya daha fazla elektriksel değeri [temel olarak gerilim (volt), akım (amper) ve direnç (ohm)] ölçmek için kullanılan bir test aracıdır. 	\N	f
7	Dijital multimetre			34c82	f	6	2	Dijital multimetre, iki veya daha fazla elektriksel değeri [temel olarak gerilim (volt), akım (amper) ve direnç (ohm)] ölçmek için kullanılan bir test aracıdır. 	\N	f
8	Dijital multimetre			34c82	f	6	2	Dijital multimetre, iki veya daha fazla elektriksel değeri [temel olarak gerilim (volt), akım (amper) ve direnç (ohm)] ölçmek için kullanılan bir test aracıdır. 	\N	f
9	Dijital multimetre			34c82	f	6	2	Dijital multimetre, iki veya daha fazla elektriksel değeri [temel olarak gerilim (volt), akım (amper) ve direnç (ohm)] ölçmek için kullanılan bir test aracıdır. 	\N	f
10	Dijital multimetre			2847z2	t	6	2	Dijital multimetre, iki veya daha fazla elektriksel değeri [temel olarak gerilim (volt), akım (amper) ve direnç (ohm)] ölçmek için kullanılan bir test aracıdır. 	1	f
11	Dijital multimetre			2847z2	t	6	2	Dijital multimetre, iki veya daha fazla elektriksel değeri [temel olarak gerilim (volt), akım (amper) ve direnç (ohm)] ölçmek için kullanılan bir test aracıdır. 	1	f
12	Dijital multimetre			2847z2	t	6	2	Dijital multimetre, iki veya daha fazla elektriksel değeri [temel olarak gerilim (volt), akım (amper) ve direnç (ohm)] ölçmek için kullanılan bir test aracıdır. 	1	f
13	Bir cihaz			22	f	\N	3		\N	f
14	Bir cihaz			222	t	\N	3		\N	f
15	Bir cihaz			3442	t	14	3		\N	f
16	Bir cihaz			3442	t	14	3		\N	f
17	Bir cihaz			3442	t	14	3		\N	f
18	Bir cihaz			3442	t	14	3		\N	f
19	Bir cihaz			3442	t	14	3		\N	f
20	Bir cihaz			3442	t	14	3		\N	f
21	Bir cihaz			324245	t	2	3		\N	f
22	Diğer Cihaz			www	f	1	3		\N	f
23	Diğer Cihaz			www	f	1	3		\N	f
24	Diğer Cihaz			www	f	1	3		\N	f
25	Diğer Cihaz			www	f	1	3		\N	f
26	Diğer Cihaz			33	t	3	2		\N	f
27	Diğer Cihaz			33	t	3	2		\N	f
28	Diğer Cihaz			111	t	1	3		\N	f
29	Diğer Cihaz			rrrr	f	\N	1		\N	f
30	Diğer Cihaz			3333	f	3	4		1	f
31	Diğer Cihaz			3333	f	3	4		1	f
32	Diğer Cihaz			vvv	t	\N	3		\N	f
34	Diğer Cihaz			vvv	t	\N	3		\N	f
35	Diğer Cihaz			vvv	t	\N	3		\N	f
36	Diğer Cihaz			244	t	\N	4		\N	f
37	Diğer Cihaz			d2e	t	2	2		2	f
38	Diğer Cihaz			d2e	t	2	2		2	f
39	Diğer Cihaz			d2e	t	2	2		2	f
40	Diğer Cihaz			d2e	t	2	2		2	f
41	Diğer Cihaz			d2e	t	2	2		2	f
42	Diğer Cihaz			yyy	t	5	4		2	f
43	Diğer Cihaz			yyy	t	5	4		2	f
44	Diğer Cihaz			yyy	t	5	4		2	f
45	Diğer Cihaz			yyy	t	5	4		2	f
46	Diğer Cihaz			yyy	t	5	4		2	f
47	Diğer Cihaz			yyy	t	5	4		2	f
48	Diğer Cihaz			yyy	t	5	4		2	f
49	Diğer Cihaz			yyy	t	5	4		2	f
50	Diğer Cihaz			yyy	t	5	4		2	f
51	Diğer Cihaz			www	t	\N	1		\N	f
\.


--
-- TOC entry 3458 (class 0 OID 106855)
-- Dependencies: 230
-- Data for Name: tbl_kullanicilar; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_kullanicilar (kullanici_id, ad, soyad, kullanici_adi, sifre, ekleyen_kullanici_id, yetki_id, aktif_mi, silindi_mi, ekleme_tarihi) FROM stdin;
1	Sara	Bonja	admin.smb	28b97d5b0b6845d62382a38711601af2	\N	1	t	f	2024-02-17 01:11:57.322697
2	Mustafa 	Yağcı	m.yagci	416cde067807b97a3c40f3e4999d5ae2	1	1	t	f	2024-03-26 23:44:31.397667
\.


--
-- TOC entry 3466 (class 0 OID 106903)
-- Dependencies: 238
-- Data for Name: tbl_lab_resimleri; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_lab_resimleri (l_resim_id, resim_adi, laboratuvar_id, yukleme_tarihi, silindi_mi) FROM stdin;
1	2024-02-22_11-45-51_2345890.png	1	2024-02-22 13:45:51.259117	f
3	2024-02-22_11-50-40_9624210.png	1	2024-02-22 13:50:40.990729	f
4	20240222T135140Z_1675010.png	1	2024-02-22 13:51:40.171407	f
5	20240222T-135216Z-_7014150.png	1	2024-02-22 13:52:16.704342	f
6	20240222T-135237Z_3199930.png	1	2024-02-22 13:52:37.321455	f
7	2024-02-22T_135259Z_1268670.png	1	2024-02-22 13:52:59.128663	f
8	2024-02-22T_13-53-13Z_1764550.png	1	2024-02-22 13:53:13.185849	f
9	2024-02-22T_13-54-24Z_4591700.jpg	1	2024-02-22 13:54:24.463138	f
11	2024-02-22T_13-54-55Z_3874250.jpg	1	2024-02-22 13:54:55.38895	f
12	2024-02-22T_13-54-55Z_3960520.jpeg	1	2024-02-22 13:54:55.397631	f
14	2024-02-22T_14-04-45Z_2332360.jpeg	1	2024-02-22 14:04:45.234653	f
15	2024-02-22T_14-08-31Z_7795410.jpg	1	2024-02-22 14:08:31.783344	f
16	2024-02-22T_14-08-31Z_8301670.jpeg	1	2024-02-22 14:08:31.833476	f
17	2024-02-22T_14-08-45Z_4603400.jpg	1	2024-02-22 14:08:45.461896	f
19	2024-02-22T_14-31-52Z_1305680.jpg	1	2024-02-22 14:31:52.131474	f
20	2024-02-22T_14-31-52Z_1346120.jpeg	1	2024-02-22 14:31:52.136399	f
21	2024-02-22T_14-32-40Z_2986650.jpg	1	2024-02-22 14:32:40.299839	f
22	2024-02-22T_14-32-40Z_3089220.jpeg	1	2024-02-22 14:32:40.309754	f
23	2024-02-22T_14-34-51Z_4983040.jpg	1	2024-02-22 14:34:51.500082	f
25	2024-02-22T_14-52-24Z_8557870.jpg	1	2024-02-22 14:52:24.859138	f
26	2024-02-22T_14-52-24Z_8710080.jpeg	1	2024-02-22 14:52:24.873811	f
27	2024-02-22T_14-53-34Z_1437110.jpg	1	2024-02-22 14:53:34.145537	f
28	2024-02-22T_14-53-34Z_1514310.jpeg	1	2024-02-22 14:53:34.15343	f
29	2024-02-22T_16-56-38Z_9836770.jpg	1	2024-02-22 16:56:38.984994	f
24	2024-02-22T_14-34-51Z_5054230.jpeg	1	2024-02-22 14:34:51.507402	t
30	2024-02-22T_16-57-34Z_6465280.jpg	1	2024-02-22 16:57:34.650147	t
10	2024-02-22T_13-54-24Z_4746470.jpeg	1	2024-02-22 13:54:24.478723	\N
13	2024-02-22T_14-04-45Z_2244770.jpg	1	2024-02-22 14:04:45.225496	\N
18	2024-02-22T_14-08-45Z_4665260.jpeg	1	2024-02-22 14:08:45.468274	\N
32	2024-03-23T_11-56-04Z_5013310.jpg	1	2024-03-23 11:56:04.514396	f
33	2024-03-23T_11-56-04Z_5332270.jpg	1	2024-03-23 11:56:04.535364	f
34	2024-03-23T_11-56-04Z_5363130.jpg	1	2024-03-23 11:56:04.538575	f
35	2024-03-23T_12-20-00Z_2083200.jpg	1	2024-03-23 12:20:00.209575	f
36	2024-03-23T_12-20-00Z_2117190.jpg	1	2024-03-23 12:20:00.252899	f
37	2024-03-23T_12-20-00Z_2534860.png	1	2024-03-23 12:20:00.25476	f
2	2024-02-22_11-47-20_5253320.png	1	2024-02-22 13:47:20.528882	t
38	2024-03-23T_13-59-04Z_6707940.jpg	1	2024-03-23 13:59:04.671886	f
39	2024-03-23T_13-59-04Z_6735300.jpg	1	2024-03-23 13:59:04.674636	f
40	2024-03-23T_14-13-57Z_3658020.jpg	6	2024-03-23 14:13:57.366734	f
41	2024-03-23T_14-13-57Z_3684150.jpeg	6	2024-03-23 14:13:57.369531	f
42	2024-03-23T_14-35-42Z_8752710.jpg	6	2024-03-23 14:35:42.877909	f
43	2024-03-23T_14-35-42Z_8820050.jpeg	6	2024-03-23 14:35:42.884138	f
44	2024-03-23T_14-35-42Z_8855320.jpg	6	2024-03-23 14:35:42.887467	f
46	2024-03-23T_14-38-09Z_3823400.jpg	4	2024-03-23 14:38:09.384434	f
45	2024-03-23T_14-38-09Z_3756490.jpg	4	2024-03-23 14:38:09.37832	t
\.


--
-- TOC entry 3452 (class 0 OID 106823)
-- Dependencies: 224
-- Data for Name: tbl_lab_turleri; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_lab_turleri (tur_id, lab_turu, silindi_mi) FROM stdin;
3	Merkezi Araştırma Laboratuvarları	f
2	Eğitim Laboratuvarları	f
1	Araştırma-Geliştirme Laboratuvarları	f
\.


--
-- TOC entry 3444 (class 0 OID 106785)
-- Dependencies: 216
-- Data for Name: tbl_laboratuvarlar; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_laboratuvarlar (laboratuvar_id, lab_adi, birim_id, bolum_id, sorumlu_id, tur_id, silindi_mi, l_ozellik) FROM stdin;
1	Bilgisayar Laboratuvarı	1	1	1	2	f	
4	İnşaat Bina Laboratuvarı	1	3	2	1	f	
2	Elektrik Laboratuvarı	1	2	2	2	f	
5	Lab2	1	2	1	2	f	
6	Lab1	1	2	1	2	\N	
3	Lab3	2	4	1	1	f	
\.


--
-- TOC entry 3454 (class 0 OID 106835)
-- Dependencies: 226
-- Data for Name: tbl_sorumlular; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_sorumlular (sorumlu_id, ad, soyad, telefon, dahili, e_posta, unvan_id, silindi_mi) FROM stdin;
1	Sara	Bonja	63673553	2342	sara@ahi.com	1	f
2	Yasemin	Yılmaz				1	f
\.


--
-- TOC entry 3460 (class 0 OID 106866)
-- Dependencies: 232
-- Data for Name: tbl_unvanlar; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_unvanlar (unvan_id, unvan_adi, silindi_mi) FROM stdin;
1	Dr. Öğr. Üyesi	f
\.


--
-- TOC entry 3462 (class 0 OID 106876)
-- Dependencies: 234
-- Data for Name: tbl_yetkiler; Type: TABLE DATA; Schema: ahi_lab; Owner: postgres
--

COPY ahi_lab.tbl_yetkiler (yetki_id, yetki_adi) FROM stdin;
1	superuser
2	user
\.


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 227
-- Name: tbl_analizler_analiz_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_analizler_analiz_id_seq', 5, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 219
-- Name: tbl_birimler_birim_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_birimler_birim_id_seq', 2, true);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 221
-- Name: tbl_bolumler_bolum_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_bolumler_bolum_id_seq', 4, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 235
-- Name: tbl_cihaz_resimleri_c_resim_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_cihaz_resimleri_c_resim_id_seq', 6, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 217
-- Name: tbl_cihazlar_cihaz_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_cihazlar_cihaz_id_seq', 51, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 229
-- Name: tbl_kullanicilar_kullanici_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_kullanicilar_kullanici_id_seq', 2, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 237
-- Name: tbl_lab_resimleri_l_resim_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_lab_resimleri_l_resim_id_seq', 46, true);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 223
-- Name: tbl_lab_turleri_tur_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_lab_turleri_tur_id_seq', 3, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 215
-- Name: tbl_laboratuvar_laboratuvari_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_laboratuvar_laboratuvari_id_seq', 6, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 225
-- Name: tbl_sorumlular_sorumlu_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_sorumlular_sorumlu_id_seq', 2, true);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 231
-- Name: tbl_unvan_unvan_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_unvan_unvan_id_seq', 1, true);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 233
-- Name: tbl_yetki_yetki_id_seq; Type: SEQUENCE SET; Schema: ahi_lab; Owner: postgres
--

SELECT pg_catalog.setval('ahi_lab.tbl_yetki_yetki_id_seq', 2, true);


--
-- TOC entry 3280 (class 2606 OID 106821)
-- Name: tbl_bolumler newtable_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_bolumler
    ADD CONSTRAINT newtable_pk PRIMARY KEY (bolum_id);


--
-- TOC entry 3286 (class 2606 OID 106853)
-- Name: tbl_analizler tbl_analizler_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_analizler
    ADD CONSTRAINT tbl_analizler_pk PRIMARY KEY (analiz_id);


--
-- TOC entry 3278 (class 2606 OID 106812)
-- Name: tbl_birimler tbl_birimler_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_birimler
    ADD CONSTRAINT tbl_birimler_pk PRIMARY KEY (birim_id);


--
-- TOC entry 3294 (class 2606 OID 106893)
-- Name: tbl_cihaz_resimleri tbl_cihaz_resimleri_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_cihaz_resimleri
    ADD CONSTRAINT tbl_cihaz_resimleri_pk PRIMARY KEY (c_resim_id);


--
-- TOC entry 3276 (class 2606 OID 106803)
-- Name: tbl_cihazlar tbl_cihazlar_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_cihazlar
    ADD CONSTRAINT tbl_cihazlar_pk PRIMARY KEY (cihaz_id);


--
-- TOC entry 3288 (class 2606 OID 106864)
-- Name: tbl_kullanicilar tbl_kullanicilar_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_kullanicilar
    ADD CONSTRAINT tbl_kullanicilar_pk PRIMARY KEY (kullanici_id);


--
-- TOC entry 3296 (class 2606 OID 106911)
-- Name: tbl_lab_resimleri tbl_lab_resimleri_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_lab_resimleri
    ADD CONSTRAINT tbl_lab_resimleri_pk PRIMARY KEY (l_resim_id);


--
-- TOC entry 3282 (class 2606 OID 106830)
-- Name: tbl_lab_turleri tbl_lab_turleri_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_lab_turleri
    ADD CONSTRAINT tbl_lab_turleri_pk PRIMARY KEY (tur_id);


--
-- TOC entry 3274 (class 2606 OID 106790)
-- Name: tbl_laboratuvarlar tbl_laboratuvar_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_laboratuvarlar
    ADD CONSTRAINT tbl_laboratuvar_pk PRIMARY KEY (laboratuvar_id);


--
-- TOC entry 3284 (class 2606 OID 106840)
-- Name: tbl_sorumlular tbl_sorumlular_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_sorumlular
    ADD CONSTRAINT tbl_sorumlular_pk PRIMARY KEY (sorumlu_id);


--
-- TOC entry 3290 (class 2606 OID 106874)
-- Name: tbl_unvanlar tbl_unvan_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_unvanlar
    ADD CONSTRAINT tbl_unvan_pk PRIMARY KEY (unvan_id);


--
-- TOC entry 3292 (class 2606 OID 106883)
-- Name: tbl_yetkiler tbl_yetki_pk; Type: CONSTRAINT; Schema: ahi_lab; Owner: postgres
--

ALTER TABLE ONLY ahi_lab.tbl_yetkiler
    ADD CONSTRAINT tbl_yetki_pk PRIMARY KEY (yetki_id);


-- Completed on 2024-03-27 12:13:09

--
-- PostgreSQL database dump complete
--

-- Completed on 2024-03-27 12:13:09

--
-- PostgreSQL database cluster dump complete
--

