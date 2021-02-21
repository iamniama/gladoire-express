--
-- PostgreSQL database dump
--

-- Dumped from database version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.5 (Ubuntu 12.5-0ubuntu0.20.04.1)

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO nzmjdapxdqpygj;

--
-- Name: categories; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    cat_name character varying(255),
    cat_desc text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO nzmjdapxdqpygj;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.comments (
    id integer NOT NULL,
    "userId" integer,
    cmnt_text text,
    cmnt_date timestamp with time zone,
    "postId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO nzmjdapxdqpygj;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.comments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: docs; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.docs (
    id integer NOT NULL,
    doc_name character varying(255),
    doc_url character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    doc_desc character varying
);


ALTER TABLE public.docs OWNER TO nzmjdapxdqpygj;

--
-- Name: docs_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.docs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.docs_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: docs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.docs_id_seq OWNED BY public.docs.id;


--
-- Name: infos; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.infos (
    id integer NOT NULL,
    info_title character varying(255),
    info_summary character varying(255),
    info_body text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    info_delta text
);


ALTER TABLE public.infos OWNER TO nzmjdapxdqpygj;

--
-- Name: infos_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.infos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.infos_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.infos_id_seq OWNED BY public.infos.id;


--
-- Name: items; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.items (
    id integer NOT NULL,
    "categoryId" integer,
    "userId" integer,
    itm_name character varying(255),
    itm_desc text,
    itm_notes text,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.items OWNER TO nzmjdapxdqpygj;

--
-- Name: items_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.items_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;


--
-- Name: posts; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.posts (
    id integer NOT NULL,
    post_title character varying(255),
    "userId" integer,
    post_note text,
    post_date timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.posts OWNER TO nzmjdapxdqpygj;

--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.posts_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;


--
-- Name: session_items; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.session_items (
    id integer NOT NULL,
    "sessionId" integer,
    "itemId" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.session_items OWNER TO nzmjdapxdqpygj;

--
-- Name: session_items_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.session_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.session_items_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: session_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.session_items_id_seq OWNED BY public.session_items.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    sess_title character varying(255),
    "userId" integer,
    sess_date timestamp with time zone,
    sess_weather text,
    sess_moon character varying(255),
    sess_moodpre integer,
    sess_moodpost integer,
    sess_energypre integer,
    sess_energypost integer,
    sess_note text,
    sess_shared integer,
    sess_public integer,
    sess_struck integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    sess_duration integer
);


ALTER TABLE public.sessions OWNER TO nzmjdapxdqpygj;

--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sessions_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE TABLE public.users (
    id integer NOT NULL,
    user_email character varying(255),
    user_name character varying(255),
    "googleId" character varying(255),
    user_town character varying(255),
    user_bio text,
    user_level integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


ALTER TABLE public.users OWNER TO nzmjdapxdqpygj;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: nzmjdapxdqpygj
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO nzmjdapxdqpygj;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: docs id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.docs ALTER COLUMN id SET DEFAULT nextval('public.docs_id_seq'::regclass);


--
-- Name: infos id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.infos ALTER COLUMN id SET DEFAULT nextval('public.infos_id_seq'::regclass);


--
-- Name: items id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);


--
-- Name: session_items id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.session_items ALTER COLUMN id SET DEFAULT nextval('public.session_items_id_seq'::regclass);


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public."SequelizeMeta" (name) FROM stdin;
20210217010622-create-user.js
20210217010838-create-user.js
20210217014616-create-info.js
20210217193849-create-doc.js
20210219211910-create-category.js
20210219212029-create-item.js
20210219213731-create-session.js
20210219213936-create-session-item.js
20210220050652-create-session-item.js
20210220220407-create-post.js
20210220220937-create-comment.js
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.categories (id, cat_name, cat_desc, "createdAt", "updatedAt") FROM stdin;
3	Practice	Meditation, ritual, and other practices	2021-02-19 14:59:51.829-07	2021-02-19 14:59:51.829-07
4	Music	Music, live or recorded	2021-02-19 14:59:51.919-07	2021-02-19 14:59:51.919-07
5	Scent	Incense, perfumes, and oils to scent the space	2021-02-19 14:59:51.92-07	2021-02-19 14:59:51.92-07
6	Enhancers	Cannabis or other entheogenic enhancers	2021-02-19 14:59:51.92-07	2021-02-19 14:59:51.92-07
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.comments (id, "userId", cmnt_text, cmnt_date, "postId", "createdAt", "updatedAt") FROM stdin;
4	3	outstanding!	2021-02-20 16:17:28.26-07	1	2021-02-20 16:17:28.261-07	2021-02-20 16:17:28.261-07
5	3	cacao is the best!	2021-02-20 16:29:36.541-07	2	2021-02-20 16:29:36.543-07	2021-02-20 16:29:36.543-07
6	1	On behalf of the whole team, welcome!	2021-02-20 16:29:58.325-07	1	2021-02-20 16:29:58.325-07	2021-02-20 16:29:58.325-07
8	1	Speaking for myself, I definitely recommend Sneha and Keith's!	2021-02-20 17:28:45.452-07	2	2021-02-20 17:28:45.452-07	2021-02-20 17:28:45.452-07
9	3	Gladoire is the best!	2021-02-20 18:31:06.689-07	1	2021-02-20 18:31:06.691-07	2021-02-20 18:31:06.691-07
\.


--
-- Data for Name: docs; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.docs (id, doc_name, doc_url, "createdAt", "updatedAt", doc_desc) FROM stdin;
2	Privacy Policy	Privacy-policy-v2-gladoire.pdf	2021-02-17 12:55:32.466-07	2021-02-17 12:55:32.466-07	Site privacy policy for OAuth and GDPR
3	Terms of Service	Terms-of-service-gladoire.pdf	2021-02-17 12:56:13.286-07	2021-02-17 12:56:13.286-07	Terms of service for site/application as required for OAuth and best practices
\.


--
-- Data for Name: infos; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.infos (id, info_title, info_summary, info_body, "createdAt", "updatedAt", info_delta) FROM stdin;
4	Privacy Policy	basic privacy policy	<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 16.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">ONLINE PRIVACY POLICY AGREEMENT</span></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><span class="saved-var"><span id="static_effective_date_cfdy"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">16 February 2021</span></span></span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com ( <span id="static_company_contact_short_name"><span class="saved-var">Gladoire</span></span>) values its users' privacy. This Privacy Policy ("Policy") will help you understand how we collect and use personal information from those who visit our website or make use of our online facilities and services, and what we will and will not do with the information we collect. Our Policy has been designed and created to ensure those affiliated with Gladoire.com of our commitment and realization of our obligation not only to meet, but to exceed, most existing privacy standards.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">We reserve the right to make changes to this Policy at any given time. If you want to make sure that you are up to date with the latest changes, we advise you to frequently visit this page. If at any point in time Gladoire.com decides to make use of any personally identifiable information on file, in a manner vastly different from that which was stated when this information was initially collected, the user or users shall be promptly notified by email. Users at that time shall have the option as to whether to permit the use of their information in this separate manner.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">This Policy applies to Gladoire.com, and it governs any and all data collection and usage by us. Through the use of http://www.gladoire.com, you are therefore consenting to the data collection procedures expressed in this Policy.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Please note that this Policy does not govern the collection and use of information by companies that Gladoire.comdoes not control, nor by individuals not employed or managed by us. If you visit a website that we mention or link to, be sure to review its privacy policy before providing the site with information. It is highly recommended and suggested that you review the privacy policies and statements of any website you choose to use or frequent to better understand the way in which websites garner, make use of and share the information collected.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Specifically, this Policy will inform you of the following</span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="margin-left: .25in; mso-add-space: auto; text-indent: -.25in; mso-list: l1 level1 lfo1;"><!-- [if !supportLists]--><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;"><span style="mso-list: Ignore;">1.<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">What personally identifiable information is collected from you through our website;</span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="margin-left: .25in; mso-add-space: auto; text-indent: -.25in; mso-list: l1 level1 lfo1;"><!-- [if !supportLists]--><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;"><span style="mso-list: Ignore;">2.<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Why we collect personally identifiable information and the legal basis for such collection;</span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="margin-left: .25in; mso-add-space: auto; text-indent: -.25in; mso-list: l1 level1 lfo1;"><!-- [if !supportLists]--><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;"><span style="mso-list: Ignore;">3.<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">How we use the collected information and with whom it may be shared;</span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="margin-left: .25in; mso-add-space: auto; text-indent: -.25in; mso-list: l1 level1 lfo1;"><!-- [if !supportLists]--><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;"><span style="mso-list: Ignore;">4.<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">What choices are available to you regarding the use of your data; and</span></p>\r\n<p class="MsoListParagraphCxSpLast" style="margin-left: .25in; mso-add-space: auto; text-indent: -.25in; mso-list: l1 level1 lfo1;"><!-- [if !supportLists]--><span style="mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;"><span style="mso-list: Ignore;">5.<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The security procedures in place to protect the misuse of your information.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Information We Collect</span></u></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">It is always up to you whether to disclose personally identifiable information to us, although if you elect not to do so, we reserve the right not to register you as a user or provide you with any products or services. This website collects various types of information, such as:</span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="text-indent: -.25in; mso-list: l3 level1 lfo2;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Voluntarily provided information which may include your name, address, email address, billing and/or credit card information etc. which may be used when you purchase products and/or services and to deliver the services you have requested. </span></p>\r\n<p class="MsoListParagraphCxSpLast" style="text-indent: -.25in; mso-list: l3 level1 lfo2;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Information automatically collected when visiting our website, which may include cookies, third party tracking technologies and server logs.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">In addition, Gladoire.com may have the occasion to collect non-personal anonymous demographic information, such as age, gender, household income, political affiliation, race and religion, as well as the type of browser you are using, IP address, or type of operating system, which will assist us in providing and maintaining superior quality service.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.commay also deem it necessary, from time to time, to follow websites that our users may frequent to gleam what types of services and products may be the most popular to customers or the general public.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Please rest assured that this site will only collect personal information that you knowingly and willingly provide to us by way of surveys, completed membership forms, and emails. It is the intent of this site to use personal information only for the purpose for which it was requested, and any additional uses specifically provided for on this Policy. <span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Why We Collect Information and For How Long</span></u></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">We are collecting your data for several reasons:</span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="text-indent: -.25in; mso-list: l3 level1 lfo2;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">To better understand your needs and provide you with the services you have requested;</span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l3 level1 lfo2;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">To fulfill our legitimate interest in improving our services and products;</span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l3 level1 lfo2;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">To send you promotional emails containing information we think you may like when we have your consent to do so;</span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l3 level1 lfo2;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">To contact you to fill out surveys or participate in other types of market research, when we have your consent to do so;</span></p>\r\n<p class="MsoListParagraphCxSpLast" style="text-indent: -.25in; mso-list: l3 level1 lfo2;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">To customize our website according to your online behavior and personal preferences.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The data we collect from you will be stored for no longer than necessary. The length of time we retain said information will be determined based upon the following criteria: the length of time your personal information remains relevant; the length of time it is reasonable to keep records to demonstrate that we have fulfilled our duties and obligations; any limitation periods within which claims might be made; any retention periods prescribed by law or recommended by regulators, professional bodies or associations; the type of contract we have with you, the existence of your consent, and our legitimate interest in keeping such information as stated in this Policy.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Use of Information Collected</span></u></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com does not now, nor will it in the future, sell, rent or lease any of its customer lists and/or names to any third parties.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com may collect and may make use of personal information to assist in the operation of our website and to ensure delivery of the services you need and request. At times, we may find it necessary to use personally identifiable information as a means to keep you informed of other possible products and/or services that may be available to you from http://www.gladoire.com</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com may also be in contact with you with regards to completing surveys and/or research questionnaires related to your opinion of current or potential future services that may be offered.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><a name="_Hlk13747140"></a><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Disclosure of Information</span></u></strong></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com may not use or disclose the information provided by you except under the following circumstances:</span></span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="text-indent: -.25in; mso-list: l2 level1 lfo3;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">as necessary to provide services or products you have ordered;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l2 level1 lfo3;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">in other ways described in this Policy or to which you have otherwise consented;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l2 level1 lfo3;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">in the aggregate with other information in such a way so that your identity cannot reasonably be determined;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l2 level1 lfo3;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">as required by law, or in response to a subpoena or search warrant;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l2 level1 lfo3;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">to outside auditors who have agreed to keep the information confidential;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l2 level1 lfo3;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">as necessary to enforce the Terms of Service;</span></span></p>\r\n<p class="MsoListParagraphCxSpLast" style="text-indent: -.25in; mso-list: l2 level1 lfo3;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">as necessary to maintain, safeguard and preserve all the rights and property of Gladoire.com.</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Non-Marketing Purposes</span></u></strong></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com greatly respects your privacy. We do maintain and reserve the right to contact you if needed for non-marketing purposes (such as bug alerts, security breaches, account issues, and/or changes in Gladoire.com products and services).<span style="mso-spacerun: yes;">&nbsp; </span>In certain circumstances, we may use our website, newspapers, or other public means to post a notice.</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Children under the age of 13</span></u></strong></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com's website is not directed to, and does not knowingly collect personal identifiable information from, children under the age of thirteen (13). If it is determined that such information has been inadvertently collected on anyone under the age of thirteen (13), we shall immediately take the necessary steps to ensure that such information is deleted from our system's database, or in the alternative, that verifiable parental consent is obtained for the use and storage of such information. Anyone under the age of thirteen (13) must seek and obtain parent or guardian permission to use this website.</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Unsubscribe or Opt-Out</span></u></strong></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">All users and visitors to our website have the option to discontinue receiving communications from us by way of email or newsletters. To discontinue or unsubscribe from our website please send an email that you wish to unsubscribe to frater_jn@thesilentsanctuary.com. If you wish to unsubscribe or opt-out from any third-party websites, you must go to that specific website to unsubscribe or opt-out. Gladoire.com will continue to adhere to this Policy with respect to any personal information previously collected.</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Links to Other Websites</span></u></strong></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Our website does contain links to affiliate and other websites. Gladoire.com does not claim nor accept responsibility for any privacy policies, practices and/or procedures of other such websites. Therefore, we encourage all users and visitors to be aware when they leave our website and to read the privacy statements of every website that collects personally identifiable information. This Privacy Policy Agreement applies only and solely to the information collected by our website.</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Notice to European Union Users</span></u></strong></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com's operations are located primarily in the United States. If you provide information to us, the information will be transferred out of the European Union (EU) and sent to the United States. (The adequacy decision on the EU-US Privacy became operational on August 1, 2016. This framework protects the fundamental rights of anyone in the EU whose personal data is transferred to the United States for commercial purposes. It allows the free transfer of data to companies that are certified in the US under the Privacy Shield.) By providing personal information to us, you are consenting to its storage and use as described in this Policy.</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Your Rights as a Data Subject</span></u></strong></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Under the regulations of the General Data Protection Regulation ("GDPR") of the EU you have certain rights as a Data Subject. These rights are as follows:</span></span></p>\r\n<p class="MsoListParagraphCxSpFirst" style="text-indent: -.25in; mso-list: l0 level1 lfo4;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The right to be informed:</span></strong></span><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> this means we must inform you of how we intend to use your personal data and we do this through the terms of this Policy.</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l0 level1 lfo4;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The right of access:</span></strong></span><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> this means you have the right to request access to the data we hold about you and we must respond to those requests within one month. You can do this by sending an email to frater_jn@thesilentsanctuary.com.</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l0 level1 lfo4;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The right to rectification:</span></strong></span><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> this means that if you believe some of the date, we hold is incorrect, you have the right to have it corrected. You can do this by logging into your account with us, or by sending us an email with your request.</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l0 level1 lfo4;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The right to erasure:</span></strong></span><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> this means you can request that the information we hold be deleted, and we will comply unless we have a compelling reason not to, in which case you will be informed of same. You can do this by sending an email to frater_jn@thesilentsanctuary.com.</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l0 level1 lfo4;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The right to restrict processing:</span></strong></span><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> this means you can change your communication preferences or opt-out of certain communications. You can do this by sending an email to frater_jn@thesilentsanctuary.com.</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle" style="text-indent: -.25in; mso-list: l0 level1 lfo4;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The right of data portability:</span></strong></span><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> this means you can obtain and use the data we hold for your own purposes without explanation. If you wish to request a copy of your information, contact us at frater_jn@thesilentsanctuary.com.</span></span></p>\r\n<p class="MsoListParagraphCxSpMiddle"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoListParagraphCxSpLast" style="text-indent: -.25in; mso-list: l0 level1 lfo4;"><span style="mso-bookmark: _Hlk13747140;"><!-- [if !supportLists]--><span style="font-family: Symbol; mso-fareast-font-family: Symbol; mso-bidi-font-family: Symbol;"><span style="mso-list: Ignore;">&middot;<span style="font: 7.0pt 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The right to object:</span></strong></span><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> this means you can file a formal objection with us regarding our use of your information with regard to third parties, or its processing where our legal basis is our legitimate interest in it. To do this, please send an email to frater_jn@thesilentsanctuary.com.</span></span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">In addition to the rights above, please rest assured that we will always aim to encrypt and anonymize your personal information whenever possible. We also have protocols in place in the unlikely event that we suffer a data breach and we will contact you if your personal information is ever at risk. For more details regarding our security protections see the section below or visit our website at http://www.gladoire.com.</span></span></p>\r\n<p class="MsoNormal"><span style="mso-bookmark: _Hlk13747140;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></span></p>\r\n<p class="MsoNormal"><a name="_Hlk13749826"></a><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Security </span></u></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com takes precautions to protect your information. When you submit sensitive information via the website, your information is protected both online and offline. Wherever we collect sensitive information (e.g. credit card information), that information is encrypted and transmitted to us in a secure way. You can verify this by looking for a lock icon in the address bar and looking for "https" at the beginning of the address of the webpage. </span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">While we use encryption to protect sensitive information transmitted online, we also protect your information offline. Only employees who need the information to perform a specific job (for example, billing or customer service) are granted access to personally identifiable information. The computers and servers in which we store personally identifiable information are kept in a secure environment. This is all done to prevent any loss, misuse, unauthorized access, disclosure or modification of the user's personal information under our control.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The company also uses Secure Socket Layer (SSL) for authentication and private communications to build users' trust and confidence in the internet and website use by providing simple and secure access and communication of credit card and personal information<span style="color: #ed7d31; mso-themecolor: accent2;">.</span></span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Acceptance of Terms</span></u></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">By using this website, you are hereby accepting the terms and conditions stipulated within the Privacy Policy Agreement. If you are not in agreement with our terms and conditions, then you should refrain from further use of our sites. In addition, your continued use of our website following the posting of any updates or changes to our terms and conditions shall mean that you agree and acceptance of such changes.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><strong><u><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">How to Contact Us</span></u></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">If you have any questions or concerns regarding the Privacy Policy Agreement related to our website, please feel free to contact us at the following email, telephone number or mailing address.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Email:</span></strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> frater_jn@thesilentsanctuary.com</span></p>\r\n<p class="MsoNormal"><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Telephone Number:</span></strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"> <span class="saved-var"><span id="static_company_contact_telephone">6024569326</span></span></span></p>\r\n<p class="MsoNormal"><strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Mailing Address:<br /></span></strong><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Gladoire.com<br /><span class="saved-var"><span id="static_company_contact_address">97 E Evelyn Ln</span></span><br /><span class="saved-var"><span id="static_company_contact_city">Tempe</span></span>, <span id="static_company_contact_state"><span class="saved-var">Arizona</span></span><br /><span class="saved-var"><span id="static_company_contact_zip_code">85284</span></span></span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">The data controller responsible for your personal information for the purposes of GDPR compliance is:</span></p>\r\n<p class="MsoNormal"><span class="saved-var"><span id="static_gdpr_controller_name"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">Jason North</span></span></span><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;"><br />Plectrumonthespectrum@gmail.com<br /><span class="saved-var"><span id="static_gdpr_controller_telephone">6024569326</span></span><br /><span class="saved-var"><span id="static_gdpr_controller_address">97 East Evelyn Lane</span></span><br style="mso-special-character: line-break;" /><!-- [if !supportLineBreakNewLine]--><br style="mso-special-character: line-break;" /><!--[endif]--></span></p>\r\n<p><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;">&nbsp;</span></p>\r\n<p class="MsoNormal" style="margin-bottom: 0in;"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><strong><span style="font-size: 10.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">GDPR Disclosure:</span></strong></p>\r\n<p class="MsoNormal"><span style="font-size: 10.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">If you answered "yes" to the question&nbsp;Does your website comply with the General Data Protection Regulation ("GDPR")?&nbsp;then the Privacy Policy above includes language that is meant to account for such compliance. Nevertheless, in order to be fully compliant with GDPR regulations your company must fulfill other requirements such as: (i) doing an assessment of data processing activities to improve security; (ii) have a data processing agreement with any third party vendors; (iii) appoint a data protection officer for the company to monitor GDPR compliance; (iv) designate a representative based in the EU under certain circumstances; and (v) have a protocol in place to handle a potential data breach. For more details on how to make sure your company is fully compliant with GDPR, please visit the official website at&nbsp;</span><a href="https://gdpr.eu/" target="_blank" rel="noopener"><span style="font-size: 10.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">https://gdpr.eu</span></a><span style="font-size: 10.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">. FormSwift and its subsidiaries are in no way responsible for determining whether or not your company is in fact compliant with GDPR and takes no responsibility for the use you make of this Privacy Policy or for any potential liability your company may face in relation to any GDPR compliance issues.</span></p>\r\n<p class="MsoNormal"><span style="font-size: 10.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="Default"><strong><span style="font-size: 10.0pt; font-family: 'Times New Roman',serif; mso-bidi-font-family: 'Arial Unicode MS'; background: white;">COPPA Compliance Disclosure:</span></strong></p>\r\n<p class="Default"><span style="font-size: 10.0pt; font-family: 'Times New Roman',serif; mso-fareast-font-family: 'Times New Roman'; background: white;">&nbsp;</span></p>\r\n<p class="Default"><span style="font-size: 10.0pt; font-family: 'Times New Roman',serif; background: white;">This Privacy Policy presumes that your website is <u>not</u> directed at children under the age of 13 and does <u>not</u> knowingly collect personal identifiable information from them or allow others to do the same through your site. If this is not true for your website or online service and you do collect such information (or allow others to do so), please be aware that you must be compliant with all COPPA regulations and guidelines in order to avoid violations which could lead to law enforcement actions, including civil penalties. </span></p>\r\n<p class="Default"><span style="font-size: 10.0pt; font-family: 'Times New Roman',serif; mso-fareast-font-family: 'Times New Roman'; background: white;">&nbsp;</span></p>\r\n<p class="Default"><span style="font-size: 10.0pt; font-family: 'Times New Roman',serif; background: white;">In order to be fully compliant with COPPA your website or online service must fulfill other requirements such as: (i) posting a privacy policy which describes not only <em>your</em> practices, but also the practices of any others collecting personal information on your site or service &acirc; for example, plug-ins or ad networks; (ii) include a prominent link to your privacy policy anywhere you collect personal information from children; (iii)&nbsp;include a description of parental rights (e.g.<span style="mso-spacerun: yes;">&nbsp; </span>that you won't require a child to disclose more information than is reasonably necessary, that they can review their child's personal information, direct you to delete it, and refuse to allow any further collection or use of the child's information, and the procedures to exercise their rights); (iv) give parents "direct notice" of your information practices before collecting information from their children; and (v) obtain the parents' "verifiable consent" before collecting, using or disclosing personal information from a child. For more information on the definition of these terms and how to make sure your website or online service is fully compliant with COPPA please visit </span><a href="https://www.ftc.gov/tips-advice/business-center/guidance/childrens-online-privacy-protection-rule-six-step-compliance"><span class="Hyperlink0"><span style="font-size: 10.0pt; font-family: 'Times New Roman',serif; background: white;">https://www.ftc.gov/tips-advice/business-center/guidance/childrens-online-privacy-protection-rule-six-step-compliance</span></span></a><span style="font-size: 10.0pt; font-family: 'Times New Roman',serif; background: white;">. FormSwift and its subsidiaries are in no way responsible for determining whether or not your company is in fact compliant with COPPA and takes no responsibility for the use you make of this Privacy Policy or for any potential liability your company may face in relation to any COPPA compliance issues. </span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>\r\n<p class="MsoNormal"><span style="font-size: 12.0pt; line-height: 106%; font-family: 'Times New Roman',serif;">&nbsp;</span></p>	2021-02-16 20:38:41.146-07	2021-02-16 22:29:15.311-07	\N
\.


--
-- Data for Name: items; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.items (id, "categoryId", "userId", itm_name, itm_desc, itm_notes, "createdAt", "updatedAt") FROM stdin;
1	3	3	sitting meditation	seated meditation	\N	2021-02-19 16:46:23.953-07	2021-02-19 16:46:23.953-07
5	4	3	Calm Whale 3rd Eye	recording by Calm Whale	https://www.youtube.com/watch?v=0Oa_YtnXCVg&t=2825s	2021-02-19 16:46:23.953-07	2021-02-19 16:46:23.953-07
6	5	3	frankincense	a traditional scent for meditation and ritual	\N	2021-02-19 16:46:23.953-07	2021-02-19 16:46:23.953-07
8	6	3	PURA Gelato	50/50 hybrid in a vape cartridge	\N	2021-02-19 16:46:23.953-07	2021-02-19 16:46:23.953-07
11	4	3	Calm Whale Solar Plexus Meditation	tones for the solar plexus	https://www.youtube.com/watch?v=x2bp-cxJf6E&list=PLChme2HTUgQcWQGIX_QH1axHnGNXKHyRe&index=9	2021-02-19 18:17:23.096-07	2021-02-19 18:17:23.096-07
2	3	3	dark meditation	seated meditation, in darkness or blindfolded	mindfold is the way to go...	2021-02-19 16:46:23.953-07	2021-02-19 18:18:56.82-07
7	6	3	Sneha Sacred Cacao	One of my favorites...Guatemalan cacao produced by mayan descendants with traditional methods	best value for efficacy and price, highly recommended	2021-02-19 16:46:23.953-07	2021-02-19 18:25:33.86-07
12	6	3	Lit Jack Herer (Sauce)	cannabis vape cartridge	sauce cartridges seem to go better	2021-02-19 18:26:40.856-07	2021-02-19 18:26:40.856-07
13	3	3	Veneration of the Three	Respect to Buddha, Ra-Hoor-Kuit, and Santisima	3 to Buddha, 3 to Thelemic symbols, 4 to Santa Muerte	2021-02-19 18:44:41.667-07	2021-02-19 18:44:41.667-07
14	4	3	Calm Whale Space Tantra	Shaman drum and tongue drum	https://www.youtube.com/watch?v=JlhrYq0W9qg&t=190s	2021-02-19 18:46:14.589-07	2021-02-19 18:46:14.589-07
15	5	3	Temple Blend	Signature blend of the Sanctuary	copal, musk, dragon's blood, frankincense	2021-02-19 18:47:38.932-07	2021-02-19 18:47:38.932-07
16	4	3	Calm Whale Shaman Tranquility	shaman drum and tones	https://www.youtube.com/watch?v=6oGqDdTQyz4&t=2735s	2021-02-20 11:57:12.548-07	2021-02-20 11:57:12.548-07
17	5	3	Eucalyptus	Essential oil/diffused	Great for when I'm stuffed up and sleepy	2021-02-20 12:37:35.168-07	2021-02-20 12:37:35.168-07
10	6	3	Keith's Cacao	guatemalan cacao with a distinct masculine energy	rare, has a masculine energy	2021-02-19 18:15:06.052-07	2021-02-20 14:11:21.396-07
18	3	1	dark meditation	meditation, but in the dark	mindfold is the way to go...	2021-02-20 14:16:09.561-07	2021-02-20 14:16:09.561-07
19	3	1	Veneration of the Three	Respect to Buddha, Ra-Hoor-Kuit, and Santisima	bowing in	2021-02-20 14:16:39.14-07	2021-02-20 14:16:39.14-07
20	6	1	Sneha Sacred Cacao	My favorite...Guatemalan cacao produced by mayan descendants with traditional methods	best value for efficacy and price, highly recommended	2021-02-20 14:17:06.174-07	2021-02-20 14:17:06.174-07
21	6	1	PURA Gelato vape	50/50 hybrid oil in a vape	tasty and effective, but a little harsh on the throat lately	2021-02-20 14:17:45.188-07	2021-02-20 14:17:45.188-07
22	4	1	Calm Whale Shaman Tranquility	shaman drum and tones	https://www.youtube.com/watch?v=6oGqDdTQyz4&t=2773s	2021-02-20 14:18:53.093-07	2021-02-20 14:18:53.093-07
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.posts (id, post_title, "userId", post_note, post_date, "createdAt", "updatedAt") FROM stdin;
2	Cacao and Meditation	1	<p>a post about how ceremonial grade cacao can be used to enhance meditation and spiritual practice, along with some recommendations of favorites from the Gladoire team.</p>	2021-02-20 15:51:37.892-07	2021-02-20 15:51:37.892-07	2021-02-20 15:51:37.892-07
1	Welcome to Gladoire!	1	<p><em><strong>Gladoire</strong></em> is a specialized journal for recording your meditation and spiritual practices.<br />Become a member today and start recording your practice, then stick around for discussions with other Gladoire users!</p>\r\n<p><strong>NOTE:</strong> The <em>phase of the moon</em> that comes up automatically is based on the current time.&nbsp; If the session that you are logging is more than a day or two old, you will probably want to set that manually, if that is important for you to record</p>	2021-02-20 15:49:48.494-07	2021-02-20 15:49:48.495-07	2021-02-20 19:09:22.308-07
\.


--
-- Data for Name: session_items; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.session_items (id, "sessionId", "itemId", "createdAt", "updatedAt") FROM stdin;
13	7	2	2021-02-20 12:16:30.624-07	2021-02-20 12:16:30.624-07
14	7	13	2021-02-20 12:16:30.624-07	2021-02-20 12:16:30.624-07
15	7	16	2021-02-20 12:16:30.624-07	2021-02-20 12:16:30.624-07
16	7	10	2021-02-20 12:16:30.625-07	2021-02-20 12:16:30.625-07
17	7	12	2021-02-20 12:16:30.625-07	2021-02-20 12:16:30.625-07
18	8	18	2021-02-20 14:20:05.044-07	2021-02-20 14:20:05.044-07
19	8	19	2021-02-20 14:20:05.044-07	2021-02-20 14:20:05.044-07
20	8	20	2021-02-20 14:20:05.044-07	2021-02-20 14:20:05.044-07
21	8	21	2021-02-20 14:20:05.045-07	2021-02-20 14:20:05.045-07
22	8	22	2021-02-20 14:20:05.045-07	2021-02-20 14:20:05.045-07
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.sessions (id, sess_title, "userId", sess_date, sess_weather, sess_moon, sess_moodpre, sess_moodpost, sess_energypre, sess_energypost, sess_note, sess_shared, sess_public, sess_struck, "createdAt", "updatedAt", sess_duration) FROM stdin;
7	AM Meditation	3	2021-02-20 09:53:00-07	\N	\N	2	4	2	4	<p>25g cacao, and about 8 hits of the Jack Herer.</p>\r\n<p>settled in better than I have recently, and saw the eye/vortex but was not able to get close to it or "interact" as I have in the past.&nbsp; Tried to hard, and it dissolved into the "sky at night".<br />Starting to get a better sense of settledness during practice.</p>	\N	\N	\N	2021-02-20 12:16:30.616-07	2021-02-20 12:16:30.616-07	35
8	AM Meditation	1	2021-02-19 09:01:00-07	\N	\N	2	5	3	4	<p>saw the <strong>vortex</strong> and the <strong>eye,&nbsp;</strong>but was unable to interact or move closer, dissolving into the <em>sky at night</em></p>	\N	\N	\N	2021-02-20 14:20:05.038-07	2021-02-20 14:20:05.038-07	35
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: nzmjdapxdqpygj
--

COPY public.users (id, user_email, user_name, "googleId", user_town, user_bio, user_level, "createdAt", "updatedAt") FROM stdin;
1	plectrumonthespectrum@gmail.com	Gladoire Admin	117694909222612666585	Tempe, AZ	thelemite, coder, hermit, student of life	99	2021-02-16 18:10:14.496-07	2021-02-20 14:27:20.848-07
3	ngenjung@gmail.com	JC North	103313477990640689487	Tempe, AZ	non-privileged user for testing	0	2021-02-19 16:46:23.945-07	2021-02-20 14:37:19.029-07
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.categories_id_seq', 7, true);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.comments_id_seq', 10, true);


--
-- Name: docs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.docs_id_seq', 3, true);


--
-- Name: infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.infos_id_seq', 4, true);


--
-- Name: items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.items_id_seq', 22, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.posts_id_seq', 2, true);


--
-- Name: session_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.session_items_id_seq', 22, true);


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.sessions_id_seq', 8, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: nzmjdapxdqpygj
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: docs docs_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.docs
    ADD CONSTRAINT docs_pkey PRIMARY KEY (id);


--
-- Name: infos infos_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.infos
    ADD CONSTRAINT infos_pkey PRIMARY KEY (id);


--
-- Name: items items_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);


--
-- Name: session_items session_items_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.session_items
    ADD CONSTRAINT session_items_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: nzmjdapxdqpygj
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

