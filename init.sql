--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--






--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ConfigurationSet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."ConfigurationSet" (
    id bigint NOT NULL,
    fqdn text NOT NULL,
    subdomainname text NOT NULL,
    outboundipv4 text NOT NULL,
    outboundipv6 text NOT NULL,
    sshusername text NOT NULL,
    sshprivatekey text NOT NULL,
    hostname text NOT NULL,
    mailcowapikey text NOT NULL,
    mailusername text NOT NULL,
    mailuserpassword text NOT NULL,
    maildisplayname text NOT NULL
);


ALTER TABLE public."ConfigurationSet" OWNER TO postgres;

--
-- Name: ConfigurationSet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."ConfigurationSet_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ConfigurationSet_id_seq" OWNER TO postgres;

--
-- Name: ConfigurationSet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."ConfigurationSet_id_seq" OWNED BY public."ConfigurationSet".id;


--
-- Name: RightSet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RightSet" (
    id bigint NOT NULL,
    name text NOT NULL,
    fk_userid bigint
);


ALTER TABLE public."RightSet" OWNER TO postgres;

--
-- Name: RightSet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RightSet_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RightSet_id_seq" OWNER TO postgres;

--
-- Name: RightSet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RightSet_id_seq" OWNED BY public."RightSet".id;


--
-- Name: TenantSet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."TenantSet" (
    id bigint NOT NULL,
    name text NOT NULL,
    createdon date NOT NULL
);


ALTER TABLE public."TenantSet" OWNER TO postgres;

--
-- Name: TenantSet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."TenantSet_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."TenantSet_id_seq" OWNER TO postgres;

--
-- Name: TenantSet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."TenantSet_id_seq" OWNED BY public."TenantSet".id;


--
-- Name: UserSet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserSet" (
    id bigint NOT NULL,
    firstname text NOT NULL,
    lastname text NOT NULL,
    email text NOT NULL,
    passwordhash text NOT NULL,
    passwordsalt text NOT NULL,
    createdon date NOT NULL,
    fk_tenantid bigint NOT NULL
);


ALTER TABLE public."UserSet" OWNER TO postgres;

--
-- Name: UserSet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserSet_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."UserSet_id_seq" OWNER TO postgres;

--
-- Name: UserSet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserSet_id_seq" OWNED BY public."UserSet".id;


--
-- Name: ConfigurationSet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ConfigurationSet" ALTER COLUMN id SET DEFAULT nextval('public."ConfigurationSet_id_seq"'::regclass);


--
-- Name: RightSet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RightSet" ALTER COLUMN id SET DEFAULT nextval('public."RightSet_id_seq"'::regclass);


--
-- Name: TenantSet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TenantSet" ALTER COLUMN id SET DEFAULT nextval('public."TenantSet_id_seq"'::regclass);


--
-- Name: UserSet id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserSet" ALTER COLUMN id SET DEFAULT nextval('public."UserSet_id_seq"'::regclass);


--
-- Name: ConfigurationSet ConfigurationSet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."ConfigurationSet"
    ADD CONSTRAINT "ConfigurationSet_pkey" PRIMARY KEY (id);


--
-- Name: RightSet RightSet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RightSet"
    ADD CONSTRAINT "RightSet_pkey" PRIMARY KEY (id);


--
-- Name: TenantSet TenantSet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."TenantSet"
    ADD CONSTRAINT "TenantSet_pkey" PRIMARY KEY (id);


--
-- Name: UserSet UserSet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserSet"
    ADD CONSTRAINT "UserSet_pkey" PRIMARY KEY (id);


--
-- Name: RightSet right_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RightSet"
    ADD CONSTRAINT right_user FOREIGN KEY (fk_userid) REFERENCES public."UserSet"(id);


--
-- Name: UserSet user_tenant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserSet"
    ADD CONSTRAINT user_tenant FOREIGN KEY (fk_tenantid) REFERENCES public."TenantSet"(id);


--
-- PostgreSQL database dump complete
--



INSERT INTO public."ConfigurationSet" (fqdn, subdomainname, outboundipv4, outboundipv6, sshusername, sshprivatekey, hostname, mailcowapikey, mailusername, mailuserpassword, maildisplayname)
	VALUES ({FQDN}, {SUBDOMAIN}, {IPV4}, {IPV6}, {SSHUSER}, {SSHKEY}, {HOSTNAME}, {MAIL_COWAPIKEY}, {MAIL_USER}, {MAIL_PASSWORD}, {MAIL_DISPLAYNAME});
