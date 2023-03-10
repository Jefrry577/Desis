PGDMP                          {           dbphp    15.2    15.2 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24757    dbphp    DATABASE     x   CREATE DATABASE dbphp WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Chile.1252';
    DROP DATABASE dbphp;
                postgres    false            ?            1259    24791 	   candidato    TABLE     f   CREATE TABLE public.candidato (
    id integer NOT NULL,
    nombre character varying(30) NOT NULL
);
    DROP TABLE public.candidato;
       public         heap    postgres    false            ?            1259    24790    candidato_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.candidato_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.candidato_id_seq;
       public          postgres    false    221                       0    0    candidato_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.candidato_id_seq OWNED BY public.candidato.id;
          public          postgres    false    220            ?            1259    24774    comuna    TABLE     ?   CREATE TABLE public.comuna (
    id integer NOT NULL,
    idregion integer NOT NULL,
    nombre_comuna character varying(50) NOT NULL
);
    DROP TABLE public.comuna;
       public         heap    postgres    false            ?            1259    24773    comuna_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.comuna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.comuna_id_seq;
       public          postgres    false    219                       0    0    comuna_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.comuna_id_seq OWNED BY public.comuna.id;
          public          postgres    false    218            ?            1259    24767    region    TABLE     c   CREATE TABLE public.region (
    id integer NOT NULL,
    nombre character varying(40) NOT NULL
);
    DROP TABLE public.region;
       public         heap    postgres    false            ?            1259    24766    region_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.region_id_seq;
       public          postgres    false    217                        0    0    region_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;
          public          postgres    false    216            ?            1259    24760    votante    TABLE     ?  CREATE TABLE public.votante (
    id integer NOT NULL,
    rut character varying(15) NOT NULL,
    nombre_apellido character varying(30) NOT NULL,
    alias character varying(20) NOT NULL,
    email character varying(35) NOT NULL,
    region character varying(40) NOT NULL,
    comuna character varying(40) NOT NULL,
    candidato character varying(30) NOT NULL,
    opciones character varying(20) NOT NULL
);
    DROP TABLE public.votante;
       public         heap    postgres    false            ?            1259    24759    votante_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.votante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.votante_id_seq;
       public          postgres    false    215            !           0    0    votante_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.votante_id_seq OWNED BY public.votante.id;
          public          postgres    false    214            w           2604    24794    candidato id    DEFAULT     l   ALTER TABLE ONLY public.candidato ALTER COLUMN id SET DEFAULT nextval('public.candidato_id_seq'::regclass);
 ;   ALTER TABLE public.candidato ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            v           2604    24777 	   comuna id    DEFAULT     f   ALTER TABLE ONLY public.comuna ALTER COLUMN id SET DEFAULT nextval('public.comuna_id_seq'::regclass);
 8   ALTER TABLE public.comuna ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            u           2604    24770 	   region id    DEFAULT     f   ALTER TABLE ONLY public.region ALTER COLUMN id SET DEFAULT nextval('public.region_id_seq'::regclass);
 8   ALTER TABLE public.region ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            t           2604    24763 
   votante id    DEFAULT     h   ALTER TABLE ONLY public.votante ALTER COLUMN id SET DEFAULT nextval('public.votante_id_seq'::regclass);
 9   ALTER TABLE public.votante ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                      0    24791 	   candidato 
   TABLE DATA           /   COPY public.candidato (id, nombre) FROM stdin;
    public          postgres    false    221   ?#                 0    24774    comuna 
   TABLE DATA           =   COPY public.comuna (id, idregion, nombre_comuna) FROM stdin;
    public          postgres    false    219   +$                 0    24767    region 
   TABLE DATA           ,   COPY public.region (id, nombre) FROM stdin;
    public          postgres    false    217   ?/                 0    24760    votante 
   TABLE DATA           n   COPY public.votante (id, rut, nombre_apellido, alias, email, region, comuna, candidato, opciones) FROM stdin;
    public          postgres    false    215   ?0       "           0    0    candidato_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.candidato_id_seq', 3, true);
          public          postgres    false    220            #           0    0    comuna_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.comuna_id_seq', 346, true);
          public          postgres    false    218            $           0    0    region_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.region_id_seq', 16, true);
          public          postgres    false    216            %           0    0    votante_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.votante_id_seq', 44, true);
          public          postgres    false    214                       2606    24796    candidato candidato_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.candidato
    ADD CONSTRAINT candidato_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.candidato DROP CONSTRAINT candidato_pkey;
       public            postgres    false    221            }           2606    24779    comuna comuna_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT comuna_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.comuna DROP CONSTRAINT comuna_pkey;
       public            postgres    false    219            {           2606    24772    region region_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.region DROP CONSTRAINT region_pkey;
       public            postgres    false    217            y           2606    24765    votante votante_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.votante
    ADD CONSTRAINT votante_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.votante DROP CONSTRAINT votante_pkey;
       public            postgres    false    215            ?           2606    24780    comuna comuna_idregion_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT comuna_idregion_fkey FOREIGN KEY (idregion) REFERENCES public.region(id);
 E   ALTER TABLE ONLY public.comuna DROP CONSTRAINT comuna_idregion_fkey;
       public          postgres    false    219    3195    217            ?           2606    24785    comuna fk_comuna_region    FK CONSTRAINT     x   ALTER TABLE ONLY public.comuna
    ADD CONSTRAINT fk_comuna_region FOREIGN KEY (idregion) REFERENCES public.region(id);
 A   ALTER TABLE ONLY public.comuna DROP CONSTRAINT fk_comuna_region;
       public          postgres    false    219    3195    217               <   x?3??*M?SpJ?II-?2?t?IMO?K)JTpJ-?K??2?H?M?ITp?L??????? ??\         O  x?UX?r?8]?_?/????v??]~?m??zj6??H?@?"]??EB?Yd?ջ??????:ݳQ?\R??}???Z\D?1??Օ9?{?
?~??J\??????wfNY?Ћ?_'??d??~??p:??YK?????0ڬ????&?x?fo??%Ї?D?)???ҋbq1???ٙ?Cý???f?~v6F??q?'*XVƏ?g??????H?\?zov???m-?g???????/F???:??Dg?ko?b??&?R@?(?&???W&??i#^??c2]??7e?$Ŀ?1d?x??9y???]????&Z_? ??^??] ?B?????b??࣭?8%+?<???pXǵ!,??a?'K?[,x?>+*?;?p???(ꄟm???0??????g@?ތ?UVt?<??TV?Qo?~2C?J????/?Jrzrȑ)?f??d?,A???^?fb??բ??w&? ?exe???? O?e???EV?????WK?'????J	?a?*??0l?YU \??????U??????|p?&?yO.?'o????,)??]?76????~?*r?'???%p7??&?;w0?=?????a??g5Y???,??&????v???????&?? ?v?
?'8?&?ގ!b?5Y??f?a????Y݉a4v???`?? TY?ft?+???\m????0?[C.,$V????f??i?k3dM=n?wG?5M£?Qf??X??-!n?a?C?QB?類?$?Bߠj,R?d??DJ?e-????	DŢA?칉???%6???R?0t+???5?(3z????C?`^??mKC??϶??}?Ñݒp?&??S?H??pbK?t?R,YGFp??8d[~e??-?#??Et?Y?1??-Dp????????8???$?X?? ֵ?p?Ct?M?%?>??:?r)?p??J?z???TK?O?	,?rl?	???x?K?|?J????~
?u?}d]?%?ݛ̈́F?l???t{y??U?v?????CD?֛m????R???C?[????E<??QT%w?#???????XȲw??R?4?^??v?ȵ??Յ}??@??G??LY+hY?.?f~??x?ir}?hЖ?K??	?:.?ȝ?z6??1??AR7?L????R@?v?qϾ?Wu?A??\?????T??a??.???U???+H??;m?B??ߎ?͐Bh	?Y??%l-???Ha??A?'BhD?xο;?-?h?S???D2?T????J?)?:>R??FV ??????Đx?>U?Das?V@?????}@I~a?*?z?F?*%?`?@d???+z??H?7???*F?MsIE>=?$v?Z?t?5	a?ٻ?SU?f?T$U?T??%d횤?? ]???cs~?Қ??~p?IY??ԥ\K6?5?=?:e( ???i??J?????Jn@C:t?	,d???????
?1?????2(?p!iv?iڦh???? ?*??G$?T7T???1E?{+?H?ho?O?"B??!???ҁUC^?f???H?>5nՒ?Ğ?Z???????"!?IZ??@?2A?yJ?ےʓ˫%?????_a!H?)lz?<cƃT?7{={J?+??\۩????"?:=??G???H?????ne1\????=?"??j1?B??\?$?O?%b???V??^N^"	? B-{??#?????????5@:??h??J?j??@??Wh??_c2?7Ыzt??%???c)??0L???B?q?_??`QBQFf?Vj?Q
[+????:1?+?&^7??U?f??H)?V՛?v7`???L????????%U%T??????U?#¥k$?K??l?AMB??}????X<?n?bA????Yz??fЄ	?SmihF2?Z?M?<?a??	B?lp^RZka?6*?B????B?a???w??wv???N?T??jQ??;?qUu2?????p?K?f???Y	u!????l)?X??W
+]?^?7?%?Ja??:?Ao??V?v?)?d??e5???.?_QL?????Q?&?,???4??+???0^?:????j?ȱJW??????8"?'??(??b?]	ơ?'??R?eW@Dp??FN	22?0?5;Z?c!??&nBG??=s?U-?p?^[>,??#??C??????j?<M2??:N?3??q??????ka'3???????d_M~?֏c$???4?%???_?F?BP)>?w#d{7?????a?C??DS&?=?94N?-d??y?? ???z?6??E?ϛ??mG???
3?,?
?U4(?d?h?8r???V'?7?D?3?R??,P?%T?|'?? ?L#??'???Y?'?X?Km?????54???Ì???p????
?҇?Y?????&??0A?	?	??7??8?m?Ej?6z1l?-@C???Z?H?!?G?	?'?+(1?<G9@%??9XfzK???y?JL?x?j???H??BP_??Q????Oqޛ>??Q,???NN??Rx???TN?
W??~??m?PB?C?g?J?>?B??E?b?o%J8??!<?????=nFTL????^??B?Ɇ4?[ƵPM? Id?+T????%d???M??3N?Xh5??8Z?ϯ????Ę=??*??e?&z????{?Y?k??Z\|>?w7D?p۳?
JL?$?:????~VPv??#/dsԝj?~B??B??R??L?G
Z??j?>R? [?]??B8?(ԡ
Ŋ???fM?E?Y{?H>&Iz}`?TK+?6?????"?ШQ??T???ȫr???_??e??V(!Q歂?T'??6?H???{??"WѶ?J?H????[>r?????e?? >??         ?   x??=N1???S??C8@?I?F @T4ow?bə	???18BJ?=?/?C7OOg????9?gD/?5????#?r?%5??#RuV?d?8?״???:??#k??I???.G=j?38?
?????s1c?h???`?.
?????я???????*?Sw?,m?veV?ja?????l??j2/?LlW?????XSsJ?W?n*rD?????P!??9?K?/??????YM]?            x?????? ? ?     