--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: Tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tokens" (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id bigint
);


ALTER TABLE public."Tokens" OWNER TO postgres;

--
-- Name: UserGroups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."UserGroups" (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    user_id bigint
);


ALTER TABLE public."UserGroups" OWNER TO postgres;

--
-- Name: UserGroups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."UserGroups_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."UserGroups_id_seq" OWNER TO postgres;

--
-- Name: UserGroups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."UserGroups_id_seq" OWNED BY public."UserGroups".id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: UserGroups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserGroups" ALTER COLUMN id SET DEFAULT nextval('public."UserGroups_id_seq"'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: Tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tokens" (key, created, user_id) FROM stdin;
e5e63ccd6207c336a401af13a5dc3db7755966dc	2020-10-08 07:03:59.393802+00	95
1d74e6b3dcc471e1b9975a448be39101cfbb8b3c	2020-08-05 11:03:29.981911+00	22
d4029b833c828d01537e0c143eb88c35637705d6	2020-10-22 11:33:55.426765+00	7
\.


--
-- Data for Name: UserGroups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."UserGroups" (id, group_id, user_id) FROM stdin;
1	2	1
2	2	2
6	3	6
7	1	7
8	2	8
9	4	9
10	2	10
11	2	11
12	4	12
13	3	13
14	3	14
15	3	15
16	3	16
17	4	17
18	2	18
19	2	19
21	2	21
22	4	22
23	2	23
25	2	25
26	2	26
27	2	27
28	2	28
29	2	34
30	2	35
31	2	36
32	2	37
33	2	38
34	3	39
35	2	40
37	2	53
38	3	54
40	2	57
41	2	58
42	4	59
43	2	60
44	2	61
45	2	62
46	2	63
47	4	64
48	2	65
49	2	66
50	3	67
51	2	68
52	2	69
53	2	70
54	4	71
55	2	72
56	2	73
57	3	74
58	3	75
59	2	76
60	2	77
61	2	78
62	2	79
63	3	80
64	4	81
65	2	82
66	2	83
67	2	84
68	3	85
69	4	86
70	2	87
71	3	88
72	3	89
73	2	90
74	2	91
75	3	94
76	2	95
77	3	96
78	2	97
79	3	98
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
1	super_admin
2	admin
3	developer
4	client
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add Token	6	add_token
22	Can change Token	6	change_token
23	Can delete Token	6	delete_token
24	Can view Token	6	view_token
25	Can add algorithm instance	7	add_algorithminstance
26	Can change algorithm instance	7	change_algorithminstance
27	Can delete algorithm instance	7	delete_algorithminstance
28	Can view algorithm instance	7	view_algorithminstance
29	Can add algorithm instance object model	8	add_algorithminstanceobjectmodel
30	Can change algorithm instance object model	8	change_algorithminstanceobjectmodel
31	Can delete algorithm instance object model	8	delete_algorithminstanceobjectmodel
32	Can view algorithm instance object model	8	view_algorithminstanceobjectmodel
33	Can add algorithm model	9	add_algorithmmodel
34	Can change algorithm model	9	change_algorithmmodel
35	Can delete algorithm model	9	delete_algorithmmodel
36	Can view algorithm model	9	view_algorithmmodel
37	Can add annotation instruction	10	add_annotationinstruction
38	Can change annotation instruction	10	change_annotationinstruction
39	Can delete annotation instruction	10	delete_annotationinstruction
40	Can view annotation instruction	10	view_annotationinstruction
41	Can add architecture	11	add_architecture
42	Can change architecture	11	change_architecture
43	Can delete architecture	11	delete_architecture
44	Can view architecture	11	view_architecture
45	Can add augmentation instruction	12	add_augmentationinstruction
46	Can change augmentation instruction	12	change_augmentationinstruction
47	Can delete augmentation instruction	12	delete_augmentationinstruction
48	Can view augmentation instruction	12	view_augmentationinstruction
49	Can add data acq instruction	13	add_dataacqinstruction
50	Can change data acq instruction	13	change_dataacqinstruction
51	Can delete data acq instruction	13	delete_dataacqinstruction
52	Can view data acq instruction	13	view_dataacqinstruction
53	Can add data split instruction	14	add_datasplitinstruction
54	Can change data split instruction	14	change_datasplitinstruction
55	Can delete data split instruction	14	delete_datasplitinstruction
56	Can view data split instruction	14	view_datasplitinstruction
57	Can add device class	15	add_deviceclass
58	Can change device class	15	change_deviceclass
59	Can delete device class	15	delete_deviceclass
60	Can view device class	15	view_deviceclass
61	Can add device instance	16	add_deviceinstance
62	Can change device instance	16	change_deviceinstance
63	Can delete device instance	16	delete_deviceinstance
64	Can view device instance	16	view_deviceinstance
65	Can add device parameter	17	add_deviceparameter
66	Can change device parameter	17	change_deviceparameter
67	Can delete device parameter	17	delete_deviceparameter
68	Can view device parameter	17	view_deviceparameter
69	Can add docker instance	18	add_dockerinstance
70	Can change docker instance	18	change_dockerinstance
71	Can delete docker instance	18	delete_dockerinstance
72	Can view docker instance	18	view_dockerinstance
73	Can add docker model	19	add_dockermodel
74	Can change docker model	19	change_dockermodel
75	Can delete docker model	19	delete_dockermodel
76	Can view docker model	19	view_dockermodel
77	Can add ecosystem	20	add_ecosystem
78	Can change ecosystem	20	change_ecosystem
79	Can delete ecosystem	20	delete_ecosystem
80	Can view ecosystem	20	view_ecosystem
81	Can add ecosystems edge node	21	add_ecosystemsedgenode
82	Can change ecosystems edge node	21	change_ecosystemsedgenode
83	Can delete ecosystems edge node	21	delete_ecosystemsedgenode
84	Can view ecosystems edge node	21	view_ecosystemsedgenode
85	Can add edge node	22	add_edgenode
86	Can change edge node	22	change_edgenode
87	Can delete edge node	22	delete_edgenode
88	Can view edge node	22	view_edgenode
89	Can add feature instance	23	add_featureinstance
90	Can change feature instance	23	change_featureinstance
91	Can delete feature instance	23	delete_featureinstance
92	Can view feature instance	23	view_featureinstance
93	Can add feature model	24	add_featuremodel
94	Can change feature model	24	change_featuremodel
95	Can delete feature model	24	delete_featuremodel
96	Can view feature model	24	view_featuremodel
97	Can add file storage	25	add_filestorage
98	Can change file storage	25	change_filestorage
99	Can delete file storage	25	delete_filestorage
100	Can view file storage	25	view_filestorage
101	Can add frame	26	add_frame
102	Can change frame	26	change_frame
103	Can delete frame	26	delete_frame
104	Can view frame	26	view_frame
105	Can add frame dataset	27	add_framedataset
106	Can change frame dataset	27	change_framedataset
107	Can delete frame dataset	27	delete_framedataset
108	Can view frame dataset	27	view_framedataset
109	Can add label class	28	add_labelclass
110	Can change label class	28	change_labelclass
111	Can delete label class	28	delete_labelclass
112	Can view label class	28	view_labelclass
113	Can add label dataset	29	add_labeldataset
114	Can change label dataset	29	change_labeldataset
115	Can delete label dataset	29	delete_labeldataset
116	Can view label dataset	29	view_labeldataset
117	Can add object model	30	add_objectmodel
118	Can change object model	30	change_objectmodel
119	Can delete object model	30	delete_objectmodel
120	Can view object model	30	view_objectmodel
121	Can add operation class	31	add_operationclass
122	Can change operation class	31	change_operationclass
123	Can delete operation class	31	delete_operationclass
124	Can view operation class	31	view_operationclass
125	Can add organization	32	add_organization
126	Can change organization	32	change_organization
127	Can delete organization	32	delete_organization
128	Can view organization	32	view_organization
129	Can add project	33	add_project
130	Can change project	33	change_project
131	Can delete project	33	delete_project
132	Can view project	33	view_project
133	Can add quality metric struct	34	add_qualitymetricstruct
134	Can change quality metric struct	34	change_qualitymetricstruct
135	Can delete quality metric struct	34	delete_qualitymetricstruct
136	Can view quality metric struct	34	view_qualitymetricstruct
137	Can add training instruction	35	add_traininginstruction
138	Can change training instruction	35	change_traininginstruction
139	Can delete training instruction	35	delete_traininginstruction
140	Can view training instruction	35	view_traininginstruction
141	Can add type code	36	add_typecode
142	Can change type code	36	change_typecode
143	Can delete type code	36	delete_typecode
144	Can view type code	36	view_typecode
145	Can add validation instruction	37	add_validationinstruction
146	Can change validation instruction	37	change_validationinstruction
147	Can delete validation instruction	37	delete_validationinstruction
148	Can view validation instruction	37	view_validationinstruction
149	Can add weight	38	add_weight
150	Can change weight	38	change_weight
151	Can delete weight	38	delete_weight
152	Can view weight	38	view_weight
153	Can add worker	39	add_worker
154	Can change worker	39	change_worker
155	Can delete worker	39	delete_worker
156	Can view worker	39	view_worker
157	Can add user	40	add_user
158	Can change user	40	change_user
159	Can delete user	40	delete_user
160	Can view user	40	view_user
161	Can add training instructions label dataset	41	add_traininginstructionslabeldataset
162	Can change training instructions label dataset	41	change_traininginstructionslabeldataset
163	Can delete training instructions label dataset	41	delete_traininginstructionslabeldataset
164	Can view training instructions label dataset	41	view_traininginstructionslabeldataset
165	Can add road conditions	42	add_roadconditions
166	Can change road conditions	42	change_roadconditions
167	Can delete road conditions	42	delete_roadconditions
168	Can view road conditions	42	view_roadconditions
169	Can add relevant data	43	add_relevantdata
170	Can change relevant data	43	change_relevantdata
171	Can delete relevant data	43	delete_relevantdata
172	Can view relevant data	43	view_relevantdata
173	Can add question xml	44	add_questionxml
174	Can change question xml	44	change_questionxml
175	Can delete question xml	44	delete_questionxml
176	Can view question xml	44	view_questionxml
177	Can add project instruction	45	add_projectinstruction
178	Can change project instruction	45	change_projectinstruction
179	Can delete project instruction	45	delete_projectinstruction
180	Can view project instruction	45	view_projectinstruction
181	Can add project edge node	46	add_projectedgenode
182	Can change project edge node	46	change_projectedgenode
183	Can delete project edge node	46	delete_projectedgenode
184	Can view project edge node	46	view_projectedgenode
185	Can add outsourced inst	47	add_outsourcedinst
186	Can change outsourced inst	47	change_outsourcedinst
187	Can delete outsourced inst	47	delete_outsourcedinst
188	Can view outsourced inst	47	view_outsourcedinst
189	Can add operation instance	48	add_operationinstance
190	Can change operation instance	48	change_operationinstance
191	Can delete operation instance	48	delete_operationinstance
192	Can view operation instance	48	view_operationinstance
193	Can add operation classes supported label class	49	add_operationclassessupportedlabelclass
194	Can change operation classes supported label class	49	change_operationclassessupportedlabelclass
195	Can delete operation classes supported label class	49	delete_operationclassessupportedlabelclass
196	Can view operation classes supported label class	49	view_operationclassessupportedlabelclass
197	Can add object model project	50	add_objectmodelproject
198	Can change object model project	50	change_objectmodelproject
199	Can delete object model project	50	delete_objectmodelproject
200	Can view object model project	50	view_objectmodelproject
201	Can add object model feature model	51	add_objectmodelfeaturemodel
202	Can change object model feature model	51	change_objectmodelfeaturemodel
203	Can delete object model feature model	51	delete_objectmodelfeaturemodel
204	Can view object model feature model	51	view_objectmodelfeaturemodel
205	Can add object model algorithm model	52	add_objectmodelalgorithmmodel
206	Can change object model algorithm model	52	change_objectmodelalgorithmmodel
207	Can delete object model algorithm model	52	delete_objectmodelalgorithmmodel
208	Can view object model algorithm model	52	view_objectmodelalgorithmmodel
209	Can add license	53	add_license
210	Can change license	53	change_license
211	Can delete license	53	delete_license
212	Can view license	53	view_license
213	Can add label data	54	add_labeldata
214	Can change label data	54	change_labeldata
215	Can delete label data	54	delete_labeldata
216	Can view label data	54	view_labeldata
217	Can add hi tset	55	add_hitset
218	Can change hi tset	55	change_hitset
219	Can delete hi tset	55	delete_hitset
220	Can view hi tset	55	view_hitset
221	Can add frame datasets project	56	add_framedatasetsproject
222	Can change frame datasets project	56	change_framedatasetsproject
223	Can delete frame datasets project	56	delete_framedatasetsproject
224	Can view frame datasets project	56	view_framedatasetsproject
225	Can add feature model algorithm	57	add_featuremodelalgorithm
226	Can change feature model algorithm	57	change_featuremodelalgorithm
227	Can delete feature model algorithm	57	delete_featuremodelalgorithm
228	Can view feature model algorithm	57	view_featuremodelalgorithm
229	Can add feature instance algorithm	58	add_featureinstancealgorithm
230	Can change feature instance algorithm	58	change_featureinstancealgorithm
231	Can delete feature instance algorithm	58	delete_featureinstancealgorithm
232	Can view feature instance algorithm	58	view_featureinstancealgorithm
233	Can add events history	59	add_eventshistory
234	Can change events history	59	change_eventshistory
235	Can delete events history	59	delete_eventshistory
236	Can view events history	59	view_eventshistory
237	Can add edge node device	60	add_edgenodedevice
238	Can change edge node device	60	change_edgenodedevice
239	Can delete edge node device	60	delete_edgenodedevice
240	Can view edge node device	60	view_edgenodedevice
241	Can add docker model feature model	61	add_dockermodelfeaturemodel
242	Can change docker model feature model	61	change_dockermodelfeaturemodel
243	Can delete docker model feature model	61	delete_dockermodelfeaturemodel
244	Can view docker model feature model	61	view_dockermodelfeaturemodel
245	Can add docker model device class	62	add_dockermodeldeviceclass
246	Can change docker model device class	62	change_dockermodeldeviceclass
247	Can delete docker model device class	62	delete_dockermodeldeviceclass
248	Can view docker model device class	62	view_dockermodeldeviceclass
249	Can add detections summary	63	add_detectionssummary
250	Can change detections summary	63	change_detectionssummary
251	Can delete detections summary	63	delete_detectionssummary
252	Can view detections summary	63	view_detectionssummary
253	Can add detected objects	64	add_detectedobjects
254	Can change detected objects	64	change_detectedobjects
255	Can delete detected objects	64	delete_detectedobjects
256	Can view detected objects	64	view_detectedobjects
257	Can add algorithm instance training inst	65	add_algorithminstancetraininginst
258	Can change algorithm instance training inst	65	change_algorithminstancetraininginst
259	Can delete algorithm instance training inst	65	delete_algorithminstancetraininginst
260	Can view algorithm instance training inst	65	view_algorithminstancetraininginst
261	Can add algorithm instance deployed device	66	add_algorithminstancedeployeddevice
262	Can change algorithm instance deployed device	66	change_algorithminstancedeployeddevice
263	Can delete algorithm instance deployed device	66	delete_algorithminstancedeployeddevice
264	Can view algorithm instance deployed device	66	view_algorithminstancedeployeddevice
265	Can add category	67	add_category
266	Can change category	67	change_category
267	Can delete category	67	delete_category
268	Can view category	67	view_category
269	Can add manufacturer	68	add_manufacturer
270	Can change manufacturer	68	change_manufacturer
271	Can delete manufacturer	68	delete_manufacturer
272	Can view manufacturer	68	view_manufacturer
273	Can add device	69	add_device
274	Can change device	69	change_device
275	Can delete device	69	delete_device
276	Can view device	69	view_device
277	Can add user	70	add_user
278	Can change user	70	change_user
279	Can delete user	70	delete_user
280	Can view user	70	view_user
281	Can add user group	71	add_usergroup
282	Can change user group	71	change_usergroup
283	Can delete user group	71	delete_usergroup
284	Can view user group	71	view_usergroup
285	Can add token	72	add_token
286	Can change token	72	change_token
287	Can delete token	72	delete_token
288	Can view token	72	view_token
298	Can add device image	100	add_deviceimage
299	Can change device image	100	change_deviceimage
300	Can delete device image	100	delete_deviceimage
301	Can view device image	100	view_deviceimage
302	Can add device purchase	101	add_devicepurchase
303	Can change device purchase	101	change_devicepurchase
304	Can delete device purchase	101	delete_devicepurchase
305	Can view device purchase	101	view_devicepurchase
306	Can add recurrent charge	102	add_recurrentcharge
307	Can change recurrent charge	102	change_recurrentcharge
308	Can delete recurrent charge	102	delete_recurrentcharge
309	Can view recurrent charge	102	view_recurrentcharge
310	Can add purchase	103	add_purchase
311	Can change purchase	103	change_purchase
312	Can delete purchase	103	delete_purchase
313	Can view purchase	103	view_purchase
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	authtoken	token
7	recon_db_manager	algorithminstance
8	recon_db_manager	algorithminstanceobjectmodel
9	recon_db_manager	algorithmmodel
10	recon_db_manager	annotationinstruction
11	recon_db_manager	architecture
12	recon_db_manager	augmentationinstruction
13	recon_db_manager	dataacqinstruction
14	recon_db_manager	datasplitinstruction
15	recon_db_manager	deviceclass
16	recon_db_manager	deviceinstance
17	recon_db_manager	deviceparameter
18	recon_db_manager	dockerinstance
19	recon_db_manager	dockermodel
20	recon_db_manager	ecosystem
21	recon_db_manager	ecosystemsedgenode
22	recon_db_manager	edgenode
23	recon_db_manager	featureinstance
24	recon_db_manager	featuremodel
25	recon_db_manager	filestorage
26	recon_db_manager	frame
27	recon_db_manager	framedataset
28	recon_db_manager	labelclass
29	recon_db_manager	labeldataset
30	recon_db_manager	objectmodel
31	recon_db_manager	operationclass
32	recon_db_manager	organization
33	recon_db_manager	project
34	recon_db_manager	qualitymetricstruct
35	recon_db_manager	traininginstruction
36	recon_db_manager	typecode
37	recon_db_manager	validationinstruction
38	recon_db_manager	weight
39	recon_db_manager	worker
40	recon_db_manager	user
41	recon_db_manager	traininginstructionslabeldataset
42	recon_db_manager	roadconditions
43	recon_db_manager	relevantdata
44	recon_db_manager	questionxml
45	recon_db_manager	projectinstruction
46	recon_db_manager	projectedgenode
47	recon_db_manager	outsourcedinst
48	recon_db_manager	operationinstance
49	recon_db_manager	operationclassessupportedlabelclass
50	recon_db_manager	objectmodelproject
51	recon_db_manager	objectmodelfeaturemodel
52	recon_db_manager	objectmodelalgorithmmodel
53	recon_db_manager	license
54	recon_db_manager	labeldata
55	recon_db_manager	hitset
56	recon_db_manager	framedatasetsproject
57	recon_db_manager	featuremodelalgorithm
58	recon_db_manager	featureinstancealgorithm
59	recon_db_manager	eventshistory
60	recon_db_manager	edgenodedevice
61	recon_db_manager	dockermodelfeaturemodel
62	recon_db_manager	dockermodeldeviceclass
63	recon_db_manager	detectionssummary
64	recon_db_manager	detectedobjects
65	recon_db_manager	algorithminstancetraininginst
66	recon_db_manager	algorithminstancedeployeddevice
67	recon_db_manager	category
68	recon_db_manager	manufacturer
69	recon_db_manager	device
70	shared	user
71	shared	usergroup
72	shared	token
100	recon_db_manager	deviceimage
101	recon_db_manager	devicepurchase
102	recon_db_manager	recurrentcharge
103	recon_db_manager	purchase
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-07-15 12:00:22.890054+00
2	contenttypes	0002_remove_content_type_name	2020-07-15 12:00:22.90589+00
3	auth	0001_initial	2020-07-15 12:00:22.939264+00
4	auth	0002_alter_permission_name_max_length	2020-07-15 12:00:22.976102+00
5	auth	0003_alter_user_email_max_length	2020-07-15 12:00:22.986245+00
6	auth	0004_alter_user_username_opts	2020-07-15 12:00:22.998869+00
7	auth	0005_alter_user_last_login_null	2020-07-15 12:00:23.009628+00
8	auth	0006_require_contenttypes_0002	2020-07-15 12:00:23.012831+00
9	auth	0007_alter_validators_add_error_messages	2020-07-15 12:00:23.021098+00
10	auth	0008_alter_user_username_max_length	2020-07-15 12:00:23.029593+00
11	auth	0009_alter_user_last_name_max_length	2020-07-15 12:00:23.038381+00
12	auth	0010_alter_group_name_max_length	2020-07-15 12:00:23.047851+00
13	auth	0011_update_proxy_permissions	2020-07-15 12:00:23.061536+00
14	shared	0001_initial	2020-07-15 12:00:23.107788+00
15	admin	0001_initial	2020-07-15 12:00:23.149154+00
16	admin	0002_logentry_remove_auto_add	2020-07-15 12:00:23.15903+00
17	admin	0003_logentry_add_action_flag_choices	2020-07-15 12:00:23.16919+00
18	authtoken	0001_initial	2020-07-15 12:00:23.18449+00
19	authtoken	0002_auto_20160226_1747	2020-07-15 12:00:23.256336+00
20	recon_db_manager	0001_initial	2020-07-15 12:00:26.319032+00
21	recon_db_manager	0002_remove_user_time_created	2020-07-15 12:00:26.336211+00
22	recon_db_manager	0003_auto_20200610_1125	2020-07-15 12:00:26.36266+00
23	recon_db_manager	0004_load_root_organization	2020-07-15 12:00:26.369913+00
24	recon_db_manager	0005_user_is_active	2020-07-15 12:00:26.384799+00
25	recon_db_manager	0006_auto_20200612_1234	2020-07-15 12:00:26.399652+00
26	recon_db_manager	0007_auto_20200630_1137	2020-07-15 12:00:26.425075+00
27	recon_db_manager	0008_auto_20200708_1651	2020-07-15 12:00:26.456607+00
28	recon_db_manager	0009_auto_20200708_1657	2020-07-15 12:00:26.574815+00
29	recon_db_manager	0010_category_device_manufacturer	2020-07-15 12:00:26.593286+00
30	sessions	0001_initial	2020-07-15 12:00:26.61089+00
31	shared	0002_load_roles	2020-07-15 12:00:26.718805+00
34	recon_db_manager	0011_auto_20200716_0811	2020-07-16 12:38:58.254997+00
35	recon_db_manager	0011_auto_20200714_1257	2020-07-17 09:22:10.132911+00
36	recon_db_manager	0012_device_created_dt	2020-07-17 09:22:10.148667+00
37	recon_db_manager	0013_merge_20200716_1201	2020-07-17 09:22:10.15358+00
38	recon_db_manager	0014_auto_20200716_1202	2020-07-17 09:22:10.166082+00
39	recon_db_manager	0015_auto_20200716_1211	2020-07-17 09:22:10.184747+00
40	recon_db_manager	0016_auto_20200716_1336	2020-07-17 09:22:10.196001+00
41	recon_db_manager	0017_device_category	2020-07-21 11:23:52.065145+00
42	recon_db_manager	0018_devicepurchase	2020-07-29 13:34:58.814657+00
43	recon_db_manager	0019_auto_20200724_1403	2020-07-29 13:34:58.846334+00
44	recon_db_manager	0020_remove_manufacturer_categories	2020-07-29 13:34:58.913894+00
45	recon_db_manager	0021_organization_created_dt	2020-07-30 13:31:08.829836+00
46	recon_db_manager	0022_auto_20200818_1235	2020-08-18 13:03:14.620656+00
47	recon_db_manager	0023_auto_20200818_1458	2020-08-18 20:17:55.887836+00
48	recon_db_manager	0022_auto_20200803_1329	2020-08-20 11:06:09.839588+00
49	recon_db_manager	0023_recurrentcharge	2020-08-20 11:06:09.978566+00
50	recon_db_manager	0024_merge_20200819_1030	2020-08-20 11:06:09.984662+00
51	recon_db_manager	0025_organization_is_invoice_payment_method	2020-08-20 11:06:10.002272+00
52	recon_db_manager	0026_recurrentcharge_is_invoice	2020-08-20 11:06:10.042379+00
53	recon_db_manager	0027_auto_20200828_0852	2020-08-28 09:25:54.391044+00
54	recon_db_manager	0028_auto_20200831_1133	2020-09-01 07:22:55.517071+00
55	recon_db_manager	0029_auto_20200831_1202	2020-09-01 07:22:55.587591+00
56	recon_db_manager	0030_auto_20200831_1202	2020-09-01 07:22:55.634062+00
57	recon_db_manager	0031_relevantdata_vehicle_classification	2020-09-03 08:40:06.498767+00
58	recon_db_manager	0032_auto_20200901_0648	2020-09-03 08:40:06.64202+00
59	recon_db_manager	0032_auto_20200901_0648	2020-09-03 08:40:06.825453+00
60	recon_db_manager	0033_auto_20200910_0821	2020-09-10 14:20:08.284511+00
61	recon_db_manager	0034_auto_20200910_0958	2020-09-10 14:20:08.361831+00
62	recon_db_manager	0035_user_deleted_dt	2020-09-17 16:31:18.847418+00
63	recon_db_manager	0036_auto_20200918_1333	2020-09-23 07:44:35.090255+00
64	recon_db_manager	0037_auto_20200921_1442	2020-09-23 07:44:35.2081+00
65	recon_db_manager	0038_auto_20200928_1122	2020-09-28 14:25:07.723655+00
66	recon_db_manager	0039_relevantdata_uuid	2020-10-28 09:42:45.984182+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: UserGroups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."UserGroups_id_seq"', 79, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 33, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 313, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 103, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 66, true);


--
-- Name: Tokens Tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_pkey" PRIMARY KEY (key);


--
-- Name: Tokens Tokens_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tokens"
    ADD CONSTRAINT "Tokens_user_id_key" UNIQUE (user_id);


--
-- Name: UserGroups UserGroups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserGroups"
    ADD CONSTRAINT "UserGroups_pkey" PRIMARY KEY (id);


--
-- Name: UserGroups UserGroups_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserGroups"
    ADD CONSTRAINT "UserGroups_user_id_key" UNIQUE (user_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: Tokens_key_a16dd36a_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Tokens_key_a16dd36a_like" ON public."Tokens" USING btree (key varchar_pattern_ops);


--
-- Name: UserGroups_group_id_51f00112; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "UserGroups_group_id_51f00112" ON public."UserGroups" USING btree (group_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: UserGroups UserGroups_group_id_51f00112_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."UserGroups"
    ADD CONSTRAINT "UserGroups_group_id_51f00112_fk_auth_group_id" FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

