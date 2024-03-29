PGDMP                      
    z            ListaAvaliativa    14.5    14.5 	               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    40970    ListaAvaliativa    DATABASE     q   CREATE DATABASE "ListaAvaliativa" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
 !   DROP DATABASE "ListaAvaliativa";
                postgres    false            �            1259    41011    requisicao_compra    TABLE     �   CREATE TABLE public.requisicao_compra (
    codrequisicaocompra integer NOT NULL,
    codproduto integer,
    data date,
    quantidade integer
);
 %   DROP TABLE public.requisicao_compra;
       public         heap    postgres    false                      0    41011    requisicao_compra 
   TABLE DATA           ^   COPY public.requisicao_compra (codrequisicaocompra, codproduto, data, quantidade) FROM stdin;
    public          postgres    false    214   �	       }           2606    41015    requisicao_compra pk_reqcompra 
   CONSTRAINT     m   ALTER TABLE ONLY public.requisicao_compra
    ADD CONSTRAINT pk_reqcompra PRIMARY KEY (codrequisicaocompra);
 H   ALTER TABLE ONLY public.requisicao_compra DROP CONSTRAINT pk_reqcompra;
       public            postgres    false    214                       2620    57438    requisicao_compra trig_log_prod    TRIGGER     w   CREATE TRIGGER trig_log_prod AFTER INSERT ON public.requisicao_compra FOR EACH ROW EXECUTE FUNCTION public.log_prod();
 8   DROP TRIGGER trig_log_prod ON public.requisicao_compra;
       public          postgres    false    214            ~           2606    41016 &   requisicao_compra fk_reqcompra_produto    FK CONSTRAINT     �   ALTER TABLE ONLY public.requisicao_compra
    ADD CONSTRAINT fk_reqcompra_produto FOREIGN KEY (codproduto) REFERENCES public.produto(codproduto);
 P   ALTER TABLE ONLY public.requisicao_compra DROP CONSTRAINT fk_reqcompra_produto;
       public          postgres    false    214               '   x�3�4�4202�50�50�4�2�4A�sr��qqq z��     