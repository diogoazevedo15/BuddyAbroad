PGDMP     :    )                x           buddyAbroad    12.2    12.2 F    ^           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            _           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            `           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            a           1262    16395    buddyAbroad    DATABASE     ?   CREATE DATABASE "buddyAbroad" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Portugal.1252' LC_CTYPE = 'Portuguese_Portugal.1252';
    DROP DATABASE "buddyAbroad";
                DiogoAzevedo    false            ?            1259    16513    bookings    TABLE     ?   CREATE TABLE public.bookings (
    id integer NOT NULL,
    group_size numeric(2,0) NOT NULL,
    schedule_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.bookings;
       public         heap    DiogoAzevedo    false            ?            1259    16511    Bookings_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Bookings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Bookings_id_seq";
       public          DiogoAzevedo    false    216            b           0    0    Bookings_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."Bookings_id_seq" OWNED BY public.bookings.id;
          public          DiogoAzevedo    false    215            ?            1259    16464 	   languages    TABLE     h   CREATE TABLE public.languages (
    id integer NOT NULL,
    language character varying(25) NOT NULL
);
    DROP TABLE public.languages;
       public         heap    postgres    false            ?            1259    16462    Languages_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Languages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Languages_id_seq";
       public          postgres    false    211            c           0    0    Languages_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Languages_id_seq" OWNED BY public.languages.id;
          public          postgres    false    210            ?            1259    16451 	   locations    TABLE     ?   CREATE TABLE public.locations (
    id integer NOT NULL,
    latitude numeric(9,6),
    longitude numeric(9,6),
    visit_id integer NOT NULL
);
    DROP TABLE public.locations;
       public         heap    DiogoAzevedo    false            ?            1259    16449    Locations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Locations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Locations_id_seq";
       public          DiogoAzevedo    false    209            d           0    0    Locations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Locations_id_seq" OWNED BY public.locations.id;
          public          DiogoAzevedo    false    208            ?            1259    16406 	   passwords    TABLE     ?   CREATE TABLE public.passwords (
    id integer NOT NULL,
    hashed_pass character varying(128) NOT NULL,
    user_id integer
);
    DROP TABLE public.passwords;
       public         heap    DiogoAzevedo    false            ?            1259    16404    Password_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Password_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Password_id_seq";
       public          DiogoAzevedo    false    204            e           0    0    Password_id_seq    SEQUENCE OWNED BY     F   ALTER SEQUENCE public."Password_id_seq" OWNED BY public.passwords.id;
          public          DiogoAzevedo    false    203            ?            1259    16489 	   schedules    TABLE     ?   CREATE TABLE public.schedules (
    id integer NOT NULL,
    day date NOT NULL,
    "time" time(6) without time zone NOT NULL,
    visit_id integer NOT NULL
);
    DROP TABLE public.schedules;
       public         heap    DiogoAzevedo    false            ?            1259    16487    Schedules_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Schedules_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Schedules_id_seq";
       public          DiogoAzevedo    false    214            f           0    0    Schedules_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public."Schedules_id_seq" OWNED BY public.schedules.id;
          public          DiogoAzevedo    false    213            ?            1259    16396    users    TABLE     \  CREATE TABLE public.users (
    email character varying(150) NOT NULL,
    first_name character varying(25) NOT NULL,
    last_name character varying(25) NOT NULL,
    birth_date date NOT NULL,
    gender character(1) NOT NULL,
    buddy_info text,
    id integer NOT NULL,
    password character varying(60) NOT NULL,
    profile_picture bytea
);
    DROP TABLE public.users;
       public         heap    DiogoAzevedo    false            ?            1259    16421    Users_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Users_id_seq";
       public          DiogoAzevedo    false    202            g           0    0    Users_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."Users_id_seq" OWNED BY public.users.id;
          public          DiogoAzevedo    false    205            ?            1259    16440    visits    TABLE     ?   CREATE TABLE public.visits (
    id integer NOT NULL,
    title character varying(50),
    duration time without time zone,
    min_group_size smallint,
    max_group_size smallint,
    description text
);
    DROP TABLE public.visits;
       public         heap    postgres    false            ?            1259    16438    Visit_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."Visit_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Visit_id_seq";
       public          postgres    false    207            h           0    0    Visit_id_seq    SEQUENCE OWNED BY     @   ALTER SEQUENCE public."Visit_id_seq" OWNED BY public.visits.id;
          public          postgres    false    206            ?            1259    16470    visit_languages    TABLE     j   CREATE TABLE public.visit_languages (
    languages_id integer NOT NULL,
    visit_id integer NOT NULL
);
 #   DROP TABLE public.visit_languages;
       public         heap    DiogoAzevedo    false            ?
           2604    16516    bookings id    DEFAULT     l   ALTER TABLE ONLY public.bookings ALTER COLUMN id SET DEFAULT nextval('public."Bookings_id_seq"'::regclass);
 :   ALTER TABLE public.bookings ALTER COLUMN id DROP DEFAULT;
       public          DiogoAzevedo    false    215    216    216            ?
           2604    16467    languages id    DEFAULT     n   ALTER TABLE ONLY public.languages ALTER COLUMN id SET DEFAULT nextval('public."Languages_id_seq"'::regclass);
 ;   ALTER TABLE public.languages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?
           2604    16454    locations id    DEFAULT     n   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public."Locations_id_seq"'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public          DiogoAzevedo    false    208    209    209            ?
           2604    16409    passwords id    DEFAULT     m   ALTER TABLE ONLY public.passwords ALTER COLUMN id SET DEFAULT nextval('public."Password_id_seq"'::regclass);
 ;   ALTER TABLE public.passwords ALTER COLUMN id DROP DEFAULT;
       public          DiogoAzevedo    false    203    204    204            ?
           2604    16492    schedules id    DEFAULT     n   ALTER TABLE ONLY public.schedules ALTER COLUMN id SET DEFAULT nextval('public."Schedules_id_seq"'::regclass);
 ;   ALTER TABLE public.schedules ALTER COLUMN id DROP DEFAULT;
       public          DiogoAzevedo    false    213    214    214            ?
           2604    16423    users id    DEFAULT     f   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          DiogoAzevedo    false    205    202            ?
           2604    16443 	   visits id    DEFAULT     g   ALTER TABLE ONLY public.visits ALTER COLUMN id SET DEFAULT nextval('public."Visit_id_seq"'::regclass);
 8   ALTER TABLE public.visits ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            [          0    16513    bookings 
   TABLE DATA           H   COPY public.bookings (id, group_size, schedule_id, user_id) FROM stdin;
    public          DiogoAzevedo    false    216   N       V          0    16464 	   languages 
   TABLE DATA           1   COPY public.languages (id, language) FROM stdin;
    public          postgres    false    211   N       T          0    16451 	   locations 
   TABLE DATA           F   COPY public.locations (id, latitude, longitude, visit_id) FROM stdin;
    public          DiogoAzevedo    false    209   <N       O          0    16406 	   passwords 
   TABLE DATA           =   COPY public.passwords (id, hashed_pass, user_id) FROM stdin;
    public          DiogoAzevedo    false    204   YN       Y          0    16489 	   schedules 
   TABLE DATA           >   COPY public.schedules (id, day, "time", visit_id) FROM stdin;
    public          DiogoAzevedo    false    214   vN       M          0    16396    users 
   TABLE DATA           |   COPY public.users (email, first_name, last_name, birth_date, gender, buddy_info, id, password, profile_picture) FROM stdin;
    public          DiogoAzevedo    false    202   ?N       W          0    16470    visit_languages 
   TABLE DATA           A   COPY public.visit_languages (languages_id, visit_id) FROM stdin;
    public          DiogoAzevedo    false    212   ?N       R          0    16440    visits 
   TABLE DATA           b   COPY public.visits (id, title, duration, min_group_size, max_group_size, description) FROM stdin;
    public          postgres    false    207   ?N       i           0    0    Bookings_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Bookings_id_seq"', 1, false);
          public          DiogoAzevedo    false    215            j           0    0    Languages_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Languages_id_seq"', 1, false);
          public          postgres    false    210            k           0    0    Locations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Locations_id_seq"', 1, false);
          public          DiogoAzevedo    false    208            l           0    0    Password_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Password_id_seq"', 1, false);
          public          DiogoAzevedo    false    203            m           0    0    Schedules_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Schedules_id_seq"', 1, false);
          public          DiogoAzevedo    false    213            n           0    0    Users_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Users_id_seq"', 71, true);
          public          DiogoAzevedo    false    205            o           0    0    Visit_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Visit_id_seq"', 1, false);
          public          postgres    false    206            ?
           2606    16518    bookings Bookings_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT "Bookings_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.bookings DROP CONSTRAINT "Bookings_pkey";
       public            DiogoAzevedo    false    216            ?
           2606    16469    languages Languages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.languages
    ADD CONSTRAINT "Languages_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.languages DROP CONSTRAINT "Languages_pkey";
       public            postgres    false    211            ?
           2606    16456    locations Locations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT "Locations_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.locations DROP CONSTRAINT "Locations_pkey";
       public            DiogoAzevedo    false    209            ?
           2606    16411    passwords Password_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.passwords
    ADD CONSTRAINT "Password_pkey" PRIMARY KEY (id);
 C   ALTER TABLE ONLY public.passwords DROP CONSTRAINT "Password_pkey";
       public            DiogoAzevedo    false    204            ?
           2606    16494    schedules Schedules_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT "Schedules_pkey" PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.schedules DROP CONSTRAINT "Schedules_pkey";
       public            DiogoAzevedo    false    214            ?
           2606    16431    users Users_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT "Users_pkey";
       public            DiogoAzevedo    false    202            ?
           2606    16474 $   visit_languages Visit_Languages_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.visit_languages
    ADD CONSTRAINT "Visit_Languages_pkey" PRIMARY KEY (languages_id, visit_id);
 P   ALTER TABLE ONLY public.visit_languages DROP CONSTRAINT "Visit_Languages_pkey";
       public            DiogoAzevedo    false    212    212            ?
           2606    16448    visits Visit_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.visits
    ADD CONSTRAINT "Visit_pkey" PRIMARY KEY (id);
 =   ALTER TABLE ONLY public.visits DROP CONSTRAINT "Visit_pkey";
       public            postgres    false    207            ?
           2606    16532    users email_unique 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT email_unique UNIQUE (email);
 <   ALTER TABLE ONLY public.users DROP CONSTRAINT email_unique;
       public            DiogoAzevedo    false    202            ?
           1259    16480    fki_language_id_fk    INDEX     V   CREATE INDEX fki_language_id_fk ON public.visit_languages USING btree (languages_id);
 &   DROP INDEX public.fki_language_id_fk;
       public            DiogoAzevedo    false    212            ?
           1259    16524    fki_shedule_id_fk    INDEX     M   CREATE INDEX fki_shedule_id_fk ON public.bookings USING btree (schedule_id);
 %   DROP INDEX public.fki_shedule_id_fk;
       public            DiogoAzevedo    false    216            ?
           1259    16437    fki_user_id    INDEX     D   CREATE INDEX fki_user_id ON public.passwords USING btree (user_id);
    DROP INDEX public.fki_user_id;
       public            DiogoAzevedo    false    204            ?
           1259    16530    fki_user_id_fk    INDEX     F   CREATE INDEX fki_user_id_fk ON public.bookings USING btree (user_id);
 "   DROP INDEX public.fki_user_id_fk;
       public            DiogoAzevedo    false    216            ?
           1259    16486    fki_visit_id_fk    INDEX     O   CREATE INDEX fki_visit_id_fk ON public.visit_languages USING btree (visit_id);
 #   DROP INDEX public.fki_visit_id_fk;
       public            DiogoAzevedo    false    212            ?
           1259    16505    fki_visit_id_schedule_fk    INDEX     R   CREATE INDEX fki_visit_id_schedule_fk ON public.schedules USING btree (visit_id);
 ,   DROP INDEX public.fki_visit_id_schedule_fk;
       public            DiogoAzevedo    false    214            ?
           2606    16475    visit_languages language_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.visit_languages
    ADD CONSTRAINT language_id_fk FOREIGN KEY (languages_id) REFERENCES public.languages(id) NOT VALID;
 H   ALTER TABLE ONLY public.visit_languages DROP CONSTRAINT language_id_fk;
       public          DiogoAzevedo    false    212    2748    211            ?
           2606    16519    bookings shedule_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT shedule_id_fk FOREIGN KEY (schedule_id) REFERENCES public.schedules(id) NOT VALID;
 @   ALTER TABLE ONLY public.bookings DROP CONSTRAINT shedule_id_fk;
       public          DiogoAzevedo    false    214    2754    216            ?
           2606    16432    passwords user_id    FK CONSTRAINT     z   ALTER TABLE ONLY public.passwords
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 ;   ALTER TABLE ONLY public.passwords DROP CONSTRAINT user_id;
       public          DiogoAzevedo    false    202    2737    204            ?
           2606    16525    bookings user_id_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES public.users(id) NOT VALID;
 =   ALTER TABLE ONLY public.bookings DROP CONSTRAINT user_id_fk;
       public          DiogoAzevedo    false    202    216    2737            ?
           2606    16457    locations visit_id_fk    FK CONSTRAINT     z   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT visit_id_fk FOREIGN KEY (id) REFERENCES public.visits(id) NOT VALID;
 ?   ALTER TABLE ONLY public.locations DROP CONSTRAINT visit_id_fk;
       public          DiogoAzevedo    false    207    209    2744            ?
           2606    16481    visit_languages visit_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.visit_languages
    ADD CONSTRAINT visit_id_fk FOREIGN KEY (visit_id) REFERENCES public.visits(id) NOT VALID;
 E   ALTER TABLE ONLY public.visit_languages DROP CONSTRAINT visit_id_fk;
       public          DiogoAzevedo    false    2744    212    207            ?
           2606    16506    schedules visit_id_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT visit_id_fk FOREIGN KEY (visit_id) REFERENCES public.visits(id) NOT VALID;
 ?   ALTER TABLE ONLY public.schedules DROP CONSTRAINT visit_id_fk;
       public          DiogoAzevedo    false    2744    207    214            [      x?????? ? ?      V      x?????? ? ?      T      x?????? ? ?      O      x?????? ? ?      Y      x?????? ? ?      M      x?????? ? ?      W      x?????? ? ?      R      x?????? ? ?     