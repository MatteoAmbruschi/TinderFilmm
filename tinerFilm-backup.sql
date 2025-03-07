PGDMP  *                    |        
   TinderFilm    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24921 
   TinderFilm    DATABASE     �   CREATE DATABASE "TinderFilm" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "TinderFilm";
                postgres    false            �            1259    24923    lobby    TABLE     v   CREATE TABLE public.lobby (
    id integer NOT NULL,
    type text,
    match text[],
    type_id integer NOT NULL
);
    DROP TABLE public.lobby;
       public         heap    postgres    false            �            1259    24922    lobby_id_seq    SEQUENCE     �   CREATE SEQUENCE public.lobby_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.lobby_id_seq;
       public          postgres    false    216            �           0    0    lobby_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.lobby_id_seq OWNED BY public.lobby.id;
          public          postgres    false    215            �            1259    24932    users    TABLE     w   CREATE TABLE public.users (
    id integer NOT NULL,
    name text,
    lobby_id integer,
    movie_selected text[]
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    24931    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    218            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    217            U           2604    24926    lobby id    DEFAULT     d   ALTER TABLE ONLY public.lobby ALTER COLUMN id SET DEFAULT nextval('public.lobby_id_seq'::regclass);
 7   ALTER TABLE public.lobby ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            V           2604    24935    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    24923    lobby 
   TABLE DATA           9   COPY public.lobby (id, type, match, type_id) FROM stdin;
    public          postgres    false    216   �       �          0    24932    users 
   TABLE DATA           C   COPY public.users (id, name, lobby_id, movie_selected) FROM stdin;
    public          postgres    false    218   l       �           0    0    lobby_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.lobby_id_seq', 193, true);
          public          postgres    false    215            �           0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 249, true);
          public          postgres    false    217            X           2606    24930    lobby lobby_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.lobby
    ADD CONSTRAINT lobby_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.lobby DROP CONSTRAINT lobby_pkey;
       public            postgres    false    216            Z           2606    24939    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    218            [           2606    24940    users users_lobby_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_lobby_id_fkey FOREIGN KEY (lobby_id) REFERENCES public.lobby(id);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT users_lobby_id_fkey;
       public          postgres    false    218    216    4696            �   �  x��U�n#G��oi,�>B��l"xl 	 �A��W3�:asz�x�����o��O��9|�zP?�������4�GN><|�����_���c��|2����Ϗ?��ls�9�d���^&�0��,�����}�ȼ��ƔM���"g�^,U��TbK�j~�d��&-iko�KAG�R��oP9~%kiE�k�2"![f�EV�D+"]Vz���������7nZܼ��Wu�2@����5��ϯ�w�������p�7K,�'��X$
q(cV�(�C��@�buW�sg���\��k	@%H5w��հ��$��%p
p5i0�j�#܇j	Z5��i��	����!�A���ZV�gƊ�ĭIż�k��n�*S���;�v^*�ݳ��|��2^���a�`�59����J
����9����\���^b0@��6�yP�(�dS�
8q4X�\a��4*�z��he0*-����ށg\��y|��Ha�L�Ď�e���%"{*���i�$�[7*u�i�!3i<��L��#u8����+~v"#�o��m#���N�[ơ��1�q�� ��e4���\�Or����2 �2@(d���x,<'�c��:�;����C����u�4������3�ؖ!@!�5�F@h�ЉH� �p��$ �`��F��P-ʅ{��Fh�����k|K�z�th_�/�㳧�>�Q����k�l
����}X�oi����p�,�0�7�~�
�rl^賮�9%e�3JCV��t4�a�;�2U]c@�qI�/��M��>g����{3�2��P�o݆�}�(F�x��5L�^V���hY����6c0t3��ihzNe]3�H�4{�������1���(:s�}�W�������VZ1L�fR�(Pg'�v����r<�<���      �      x��ˎ%�q��=O�80�y[\Km	cj � A���ŀ���:===�)���7s�ϩ�ʌ�\�����������?>�y��>Z�ղ�\�����6�n�Vk���g[��U�=��Yn��2����ns���?6��1O��M+�g��Ǉ�F׽�`�Y5��=O�o��!�<����s;���Y׭��n1w>��z?j	~�}�5��;�m�=��N6��c7~�8�X���Zg�q�Ɋc,6��X.8� �QN��Uή�!a>gc;b+��R&_��`Yvu���争|�:��·߽��w����o���?���)���U���w��Q;�[G}�2�����Nb*Fv�{��fՇ/���ۇY�ߕĚ�7{?|�����|�(��uW>xd�R������~�l5n����p�����ғ�T�(�t�XH��1���@��/��#����F�ToCB75�vˊ���%�ZCM�����Q�=�� �9�D��R
��Sdk�0G;�R�*��*��7�e7��0�.���1�g�"_/�̙�&���@';N�ɰt�E��_G����W��a����c�?����������2Ŗ���t  |�a�Zj�`-�=��p�֕��/���@�́��?�jnS]3�3�>zYӃ.|q��1��o�@��(�A�����cn�Ai���_�x~���ݿ�������B#�`�ח�%���}���Bނ�̇��B�5<���HPT�g��Μ��G��k�N s}���_�C�|F�C7l�b����n����?���������[}x����|����}������_����S�N���i�J���9p�]]T�;n�(�	@�@���do�O-�=�t������6�����y|�͖�7��'���}	�<i�)�l6�}D���!����J���vA�`]k�S鶨�"'/ba�]k'p5�4Qݩ=�y�3�Z}��8�fh������e�g(�yyH�)�6�R@���H�ag��:��G#��j�{��S�	����r�p�S���[(�e�v/�aG�1A�]fX�����p���Px{4��c �	��	��� B��*�[����*�>
�q΃/u�Y��Ɔ�����߰.Jb�eH��h�.$��K6�Ƭ8�~���,��O�i�Y��5\pk�u��G�D��1��vD�G��/��ṫ��J���d�d��&Ʋm}Xw{�>�Spp�Y��ҹ� g�!�zmZK���O%Ⱥ��RH��z�����V�{�r�`\�^X��l��8�5<d$~�,��Г�?Z����Η�`܃Y�o�W�$���|R����s*:.���X.�����`�;vWA-��-Z �7����K��R��^	D'`��uTAq1�VN��[p�U#U�,<r��`@\���y2��/�0.�xj�/Ix�+�XO�䤰�]�@"i���ܜK�F�L|�ٹW�I�����u�����8u�;2�q�P��8����kq�B���K��bszd�4�ߘ�1���2�~j)�!ODpp
�4=V%&�7�)Sf�4�q�I��B��H&�U��W6y�l�  �	�f���%��j,�,�e��*i0�H2�P�nlEuz�I�ҴC�j��-�nD\��.�fM(���wN��1}d��c]��#{�[�=Ϡ�/�׸�*i�{v���q�i�_Cے0�]��c�7�4���šDq07|�CQ��rd	��A|�����,��+Gτ����c��ʍ�#3j���YF��>��=k��@�l�;N5�������4�C�CeԾ��c ݄�eBS���z�]���>	戍b�&c�+��sK�8ɋ&,K:q��.;���yw6��n�)�[��8`L�Ht�AßF&��8��K�eX��ɀ�܇��"?��PqL>J_j���^I8��
��`�R~�p�U���R���33�W��5�)�o��A*ax�}����\�<pR�dʀD���L����$� KN��\Nt��Ӕ�ޓ��z����RM�.S!���0Ϧ�3(�#�2}��8Q���l�����F�U/�p%6��V��@�%ʕ���,4+C�����_D�]d�K�LB �M�'��e9�Nq�jc*�k g��H&T
�&:8��L�^��>^�|婦\Ym3і�'ؙ��?TPS��HbX��*�L�I}�N���Z6�=b	���^h�����Ef�s4) �"ʽ!죽`�|��2P[�<��mY$oc��*�2�hC�q���D�	IT�g؏���9f䦡�A�L�P���|�l�h$T��I�܉�\�jV%w
�)��KD"���$%��Nl�!W�L���Y�^�J��"!
z�U�#��2�k��2T�vS�&���� +L�]��ARE��.�,��m�E䕱�M7FE8��S����8��l��`��X��$kjףg=ykl�&�5A	���c�R�9b�;��[�j����G;i��6��H���n���g�m	��U���2N�c�1'8IC,�m�;&"�����y
�9Վձrk�����z���V�3�S�bŦ�\q%�]����9���Hܙ㯙<$B�j��q�}��pO'B���t�z�D�?L��.�4���w�X�L�Kհu�J��k�Ū���#{�Àg�)�d	�< �k�U��@fz��<����"�L,!G��ss�If Cۜ�BOɐ(�c`��x1�[�ܔ�ago�XҝrI���8{r��,�|:����I��Y��������*�y��L��gN��֟�Z�ѩ_\���kHy)����E~qy8�瓀c�p�!;HP:���0��>����Xڶ��y�?�am�q�=���DX��+CkgQpB�b�f_e�^)^�B=+bM��!�\�Y���M�
P�e�]:g�7@w�2Rh{�Y�����K����~�t3��ed��+}�7*ǣ8�FS�C;�y�r5ѝZZ�m1/0�ؘ�h"���UP�_I�������Of�G�O��=ҕ����.�.9U�'~Ni?��g��óW�3y�{F ��V��G�l�� �m���R1�� �ť�"��%�[��dG�*��.'��jy*��7�Pegk��a�HɌǒ��ɂ�E�'�p�����-�0��p��	�{_�5�J(�v �Ue�HOLW�z3��r�9n`~�X�i����������eX�
ˤ��������~8��Ox�xD��t�����Yշ���k�b�No	o�����93�0K5�����p���X�n�
�d�E���.MJ&�S\
l�r�N��?���t��d���}N��y+Z�+4�;� @̱�W�u�l�I&��uoǬ�"GV�y
<��N���RO��,��������s�c�"`���h���U��\9���Kja�(�~�ƌ�9�q�*�&�K&w~����)�"�54lM�Ae�<H=N
mI��������М[�<�bPW��n��ȩ-?�{ d8�Rl�e{'G���C#59���d�ҌAQ�k�ui��z��ؗX��f�[�&��p#�+��Cz��s�mL�F	(����Ȫ^�6�vx�YKl���7x�[a�|��\=�L��D����V�ll�=G�`�]�s�8�=.������lÖa��+�@�V���9 ,2.W���ZK{&{����fS�o+�Ȩz�8�t�2�+JxV �M'Kx-��h��ʯ�bq[q�2���~!�M"_C���};C�#��S����L2�����B�0ˇ�1�x�$��e��y�����dW��yu�W7|u����5�·�>�6#ôs�hY-d@�mg�Y��X�(i0Q�rG&F!i6�%E�06�Iҧ��'���=�L�-l��%���~Uzʸ��9m�-��%,G�m�C֫���.i2��c�Y�bC�+LM��
#}7������U��[D
!)r4/KN�$�XZϙ��K�nR��G jNd�jŊ5͜$��_hX��t���n���5�$��IZ��9�9K�� �  W���Q� K�	������_�f��n�rDvf�mk�9'*[���Y��q�E@�=3���|j�C�K9a�;B �j����p|�y��3�@rp�L#fw@r@/�2�����k�!4��5�jaVd�9�F�2I�zeFY��;QjN�L'�s�[No5�%tS��
��l��s1Ą��{��e�mM����0KNL��U�$c�"�X�>���Dg��?v�����яH]sfog���G��kE;�q�*Ta@2���7�ZY�ʱ[���%��I�u��1����|w��x��z�����Z�����W��V�
#S�X��@�a`�͘	�a���M�����`Bɹ2ԛ�=� �z��=���X?s��d�_�=���{%�[�=!<'��l��2�S��E�I'noY`s��$ɂ�����	l��-k�v�5���1� q��q�4ھ�`~zfZ��
j��NK�baGN��0Ɔ�ɾ��e'�9f�t�#cYN�����g�!լ�8�e�[�g�%6����j�i T�U�V˫��:����:��ݟJ\Y?j��!��Q�~���ڱ��ż�#6O�$KҠOn���Ľ�?���������7i��2nڙ�ZKw��T���n�]?���9 �#5��M|m՜�tb����y#�V���g(�v��lY�*�) 4���w�f,�G:;�@��]r�+���R��f���0�j�g�jP�}�����"q4�p�7�uw�]��	�mG'9O����d��B�#���3��N7�Z9����yPF�|���e!P[�g�9d�O������L��>`w����;:�UW{�i4JZu �Ti���կs�J���Ҵ.hO���{Y��䶶�b�@Y]mMc��9֣q��2�wt��z��ѯ{���e�q��#��ɵ�ճ5�
�՚�@���{�����!�#�V&��&�[�(7y�X�s�YU��V�R�;C�e�;2�eo�����f9�6�Z~�ɯE'���|+���������n�H@ ��%)[�ɹ�gȌ�u~;G }��0��qY���M�s�5�g�@�ä7�pŴ��j-e�({K�Ϩk �9c66}F���D��8���uc�]|��ۙ׹lT�ʹ�1��Q���Ɂ�6�jp+_XB;f���m+U��p�n_���6�!�n�^��6��L����+꾢�+꾢�+���Q����^�օ���O=��:� �Oo���7o��7=�tC     