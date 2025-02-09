PGDMP      3    	        
    |            postgres    17.0    17.0 '               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                     postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                        postgres    false    4885                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    16872    answer_choices    TABLE     �   CREATE TABLE public.answer_choices (
    answer_id integer NOT NULL,
    question_id integer,
    answer_text text NOT NULL,
    is_correct boolean NOT NULL
);
 "   DROP TABLE public.answer_choices;
       public         heap r       postgres    false    4            �            1259    16871    answer_choices_answer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.answer_choices_answer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.answer_choices_answer_id_seq;
       public               postgres    false    4    220                       0    0    answer_choices_answer_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.answer_choices_answer_id_seq OWNED BY public.answer_choices.answer_id;
          public               postgres    false    219            �            1259    16863 	   questions    TABLE     e   CREATE TABLE public.questions (
    question_id integer NOT NULL,
    question_text text NOT NULL
);
    DROP TABLE public.questions;
       public         heap r       postgres    false    4            �            1259    16862    questions_question_id_seq    SEQUENCE     �   CREATE SEQUENCE public.questions_question_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.questions_question_id_seq;
       public               postgres    false    218    4                       0    0    questions_question_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.questions_question_id_seq OWNED BY public.questions.question_id;
          public               postgres    false    217            �            1259    16886    quiz_sessions    TABLE     �   CREATE TABLE public.quiz_sessions (
    session_id integer NOT NULL,
    user_id integer,
    session_date timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.quiz_sessions;
       public         heap r       postgres    false    4            �            1259    16885    quiz_sessions_session_id_seq    SEQUENCE     �   CREATE SEQUENCE public.quiz_sessions_session_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.quiz_sessions_session_id_seq;
       public               postgres    false    4    222                       0    0    quiz_sessions_session_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.quiz_sessions_session_id_seq OWNED BY public.quiz_sessions.session_id;
          public               postgres    false    221            �            1259    16894    user_responses    TABLE     �   CREATE TABLE public.user_responses (
    response_id integer NOT NULL,
    session_id integer,
    question_id integer,
    answer_id integer
);
 "   DROP TABLE public.user_responses;
       public         heap r       postgres    false    4            �            1259    16893    user_responses_response_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_responses_response_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.user_responses_response_id_seq;
       public               postgres    false    224    4                       0    0    user_responses_response_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.user_responses_response_id_seq OWNED BY public.user_responses.response_id;
          public               postgres    false    223            g           2604    16875    answer_choices answer_id    DEFAULT     �   ALTER TABLE ONLY public.answer_choices ALTER COLUMN answer_id SET DEFAULT nextval('public.answer_choices_answer_id_seq'::regclass);
 G   ALTER TABLE public.answer_choices ALTER COLUMN answer_id DROP DEFAULT;
       public               postgres    false    219    220    220            f           2604    16866    questions question_id    DEFAULT     ~   ALTER TABLE ONLY public.questions ALTER COLUMN question_id SET DEFAULT nextval('public.questions_question_id_seq'::regclass);
 D   ALTER TABLE public.questions ALTER COLUMN question_id DROP DEFAULT;
       public               postgres    false    218    217    218            h           2604    16889    quiz_sessions session_id    DEFAULT     �   ALTER TABLE ONLY public.quiz_sessions ALTER COLUMN session_id SET DEFAULT nextval('public.quiz_sessions_session_id_seq'::regclass);
 G   ALTER TABLE public.quiz_sessions ALTER COLUMN session_id DROP DEFAULT;
       public               postgres    false    221    222    222            j           2604    16897    user_responses response_id    DEFAULT     �   ALTER TABLE ONLY public.user_responses ALTER COLUMN response_id SET DEFAULT nextval('public.user_responses_response_id_seq'::regclass);
 I   ALTER TABLE public.user_responses ALTER COLUMN response_id DROP DEFAULT;
       public               postgres    false    223    224    224                      0    16872    answer_choices 
   TABLE DATA           Y   COPY public.answer_choices (answer_id, question_id, answer_text, is_correct) FROM stdin;
    public               postgres    false    220   4.       	          0    16863 	   questions 
   TABLE DATA           ?   COPY public.questions (question_id, question_text) FROM stdin;
    public               postgres    false    218   �.                 0    16886    quiz_sessions 
   TABLE DATA           J   COPY public.quiz_sessions (session_id, user_id, session_date) FROM stdin;
    public               postgres    false    222   4/                 0    16894    user_responses 
   TABLE DATA           Y   COPY public.user_responses (response_id, session_id, question_id, answer_id) FROM stdin;
    public               postgres    false    224   Q/                  0    0    answer_choices_answer_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.answer_choices_answer_id_seq', 12, true);
          public               postgres    false    219                       0    0    questions_question_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.questions_question_id_seq', 3, true);
          public               postgres    false    217                       0    0    quiz_sessions_session_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.quiz_sessions_session_id_seq', 1, false);
          public               postgres    false    221                       0    0    user_responses_response_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.user_responses_response_id_seq', 1, false);
          public               postgres    false    223            n           2606    16879 "   answer_choices answer_choices_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.answer_choices
    ADD CONSTRAINT answer_choices_pkey PRIMARY KEY (answer_id);
 L   ALTER TABLE ONLY public.answer_choices DROP CONSTRAINT answer_choices_pkey;
       public                 postgres    false    220            l           2606    16870    questions questions_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (question_id);
 B   ALTER TABLE ONLY public.questions DROP CONSTRAINT questions_pkey;
       public                 postgres    false    218            p           2606    16892     quiz_sessions quiz_sessions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.quiz_sessions
    ADD CONSTRAINT quiz_sessions_pkey PRIMARY KEY (session_id);
 J   ALTER TABLE ONLY public.quiz_sessions DROP CONSTRAINT quiz_sessions_pkey;
       public                 postgres    false    222            r           2606    16899 "   user_responses user_responses_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.user_responses
    ADD CONSTRAINT user_responses_pkey PRIMARY KEY (response_id);
 L   ALTER TABLE ONLY public.user_responses DROP CONSTRAINT user_responses_pkey;
       public                 postgres    false    224            s           2606    16880 .   answer_choices answer_choices_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.answer_choices
    ADD CONSTRAINT answer_choices_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(question_id);
 X   ALTER TABLE ONLY public.answer_choices DROP CONSTRAINT answer_choices_question_id_fkey;
       public               postgres    false    220    4716    218            t           2606    16910 ,   user_responses user_responses_answer_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_responses
    ADD CONSTRAINT user_responses_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES public.answer_choices(answer_id);
 V   ALTER TABLE ONLY public.user_responses DROP CONSTRAINT user_responses_answer_id_fkey;
       public               postgres    false    224    220    4718            u           2606    16905 .   user_responses user_responses_question_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_responses
    ADD CONSTRAINT user_responses_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(question_id);
 X   ALTER TABLE ONLY public.user_responses DROP CONSTRAINT user_responses_question_id_fkey;
       public               postgres    false    4716    224    218            v           2606    16900 -   user_responses user_responses_session_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_responses
    ADD CONSTRAINT user_responses_session_id_fkey FOREIGN KEY (session_id) REFERENCES public.quiz_sessions(session_id);
 W   ALTER TABLE ONLY public.user_responses DROP CONSTRAINT user_responses_session_id_fkey;
       public               postgres    false    224    222    4720               ~   x����0Eg�W�N�k�����b��������ι>��Pg��J3�]'�����q��-x��|�@77��	��uAqvI��<X�q��	(�#����TS��m=��Gu��=3�V�%"      	   b   x��1
�0 g�@P���&�$��J�i��u98��L�=	2�ꔱF܌
�
s�r����Ȥ9�n�a��!4lI�e8z���Sk� � ��*"            x������ � �            x������ � �     