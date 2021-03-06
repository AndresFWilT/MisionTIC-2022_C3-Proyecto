PGDMP                     	    y            p_ventas    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16395    p_ventas    DATABASE     g   CREATE DATABASE p_ventas WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE p_ventas;
                mintic_unal    false            ?            1259    16396    t_productos    TABLE     ?   CREATE TABLE public.t_productos (
    cod_producto character varying(8) NOT NULL,
    nombre_producto character varying(30) NOT NULL,
    descripcion_producto character varying(60),
    precio_producto double precision
);
    DROP TABLE public.t_productos;
       public         heap    postgres    false            ?            1259    16401    t_vendedores    TABLE     ?   CREATE TABLE public.t_vendedores (
    cod_vendedor character varying(8) NOT NULL,
    nombre_vendedor character varying(50) NOT NULL
);
     DROP TABLE public.t_vendedores;
       public         heap    postgres    false            ?            1259    16408    t_ventas    TABLE       CREATE TABLE public.t_ventas (
    id_venta integer NOT NULL,
    numero_factura character varying(6) NOT NULL,
    cod_producto character varying(8) NOT NULL,
    fecha_venta date,
    cod_vendedor character varying(8),
    valor_factura double precision
);
    DROP TABLE public.t_ventas;
       public         heap    postgres    false            ?            1259    16406    t_ventas_id_venta_seq    SEQUENCE     ?   CREATE SEQUENCE public.t_ventas_id_venta_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.t_ventas_id_venta_seq;
       public          postgres    false    203            ?           0    0    t_ventas_id_venta_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.t_ventas_id_venta_seq OWNED BY public.t_ventas.id_venta;
          public          postgres    false    202            *           2604    16411    t_ventas id_venta    DEFAULT     v   ALTER TABLE ONLY public.t_ventas ALTER COLUMN id_venta SET DEFAULT nextval('public.t_ventas_id_venta_seq'::regclass);
 @   ALTER TABLE public.t_ventas ALTER COLUMN id_venta DROP DEFAULT;
       public          postgres    false    203    202    203            ?          0    16396    t_productos 
   TABLE DATA           k   COPY public.t_productos (cod_producto, nombre_producto, descripcion_producto, precio_producto) FROM stdin;
    public          postgres    false    200   ?       ?          0    16401    t_vendedores 
   TABLE DATA           E   COPY public.t_vendedores (cod_vendedor, nombre_vendedor) FROM stdin;
    public          postgres    false    201   g       ?          0    16408    t_ventas 
   TABLE DATA           t   COPY public.t_ventas (id_venta, numero_factura, cod_producto, fecha_venta, cod_vendedor, valor_factura) FROM stdin;
    public          postgres    false    203   ?       ?           0    0    t_ventas_id_venta_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.t_ventas_id_venta_seq', 19, true);
          public          postgres    false    202            ,           2606    16400    t_productos t_productos_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.t_productos
    ADD CONSTRAINT t_productos_pkey PRIMARY KEY (cod_producto);
 F   ALTER TABLE ONLY public.t_productos DROP CONSTRAINT t_productos_pkey;
       public            postgres    false    200            .           2606    16405    t_vendedores t_vendedores_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.t_vendedores
    ADD CONSTRAINT t_vendedores_pkey PRIMARY KEY (cod_vendedor);
 H   ALTER TABLE ONLY public.t_vendedores DROP CONSTRAINT t_vendedores_pkey;
       public            postgres    false    201            0           2606    16413    t_ventas t_ventas_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.t_ventas
    ADD CONSTRAINT t_ventas_pkey PRIMARY KEY (id_venta);
 @   ALTER TABLE ONLY public.t_ventas DROP CONSTRAINT t_ventas_pkey;
       public            postgres    false    203            1           2606    16414 #   t_ventas t_ventas_cod_producto_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.t_ventas
    ADD CONSTRAINT t_ventas_cod_producto_fkey FOREIGN KEY (cod_producto) REFERENCES public.t_productos(cod_producto);
 M   ALTER TABLE ONLY public.t_ventas DROP CONSTRAINT t_ventas_cod_producto_fkey;
       public          postgres    false    2860    203    200            2           2606    16419 #   t_ventas t_ventas_cod_vendedor_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.t_ventas
    ADD CONSTRAINT t_ventas_cod_vendedor_fkey FOREIGN KEY (cod_vendedor) REFERENCES public.t_vendedores(cod_vendedor);
 M   ALTER TABLE ONLY public.t_ventas DROP CONSTRAINT t_ventas_cod_vendedor_fkey;
       public          postgres    false    2862    203    201            ?   l   x?M?;
?0E?z???@F????	??S?
V??+?)??.?Ĝ??t???4@???jfVH?Hh??????A?`'????Sy??ũ????tI?s??)9?5SJ??	#      ?   Y   x?s?s10???>ܩ??t??Q??????	L????p???q?:????(???x?9?`G??1?W?????c??????_?k0W? ??&      ?      x?}?;A?:s?Av2???WRRq?s@&Z!V,.?'[ir[?@???(?#???z??/@b?7??,!M??#䐓?I/E*A?Zj?y????????<c?Fe???Rj@???-?m?????yH)? &?@?     