CREATE DATABASE public;

CREATE TABLE public.items(
   ID SERIAL PRIMARY KEY,
   libelle CHAR(50) NOT NULL,
   prix INT NOT NULL
);

CREATE TABLE public.customers(
   ID SERIAL PRIMARY KEY,
   lastname CHAR(50) NOT NULL,
   firstname CHAR(50) NOT NULL
);

INSERT INTO public."items"(
	libelle, prix)
	VALUES ('Small Desk', 100);
	
INSERT INTO public."items"(
	libelle, prix)
	VALUES ('Large desk', 300);
	
INSERT INTO public."items"(
	libelle, prix)
	VALUES ('Fan', 80);

INSERT INTO public.customers (
	lastname, firstname)
	VALUES ('Greg', 'Jones');
	
INSERT INTO public."customers"(
	lastname, firstname)
	VALUES ('Sandra', 'Jones');
	
INSERT INTO public."customers"(
	lastname, firstname)
	VALUES ('Scott', 'Scott');
	
INSERT INTO public."customers"(
	lastname, firstname)
	VALUES ('Trevor', 'Green');
	
INSERT INTO public."customers"(
	lastname, firstname)
	VALUES ('Melanie', 'Johnson');

SELECT * FROM public.items;
SELECT * FROM public.customers;

SELECT * FROM public.items WHERE prix > 80;
SELECT * FROM public.items WHERE prix < 300;
SELECT * FROM public.customers WHERE lastname = 'Smith';
SELECT * FROM public.customers WHERE lastname = 'Jones';
SELECT * FROM public.customers WHERE lastname <> 'Scott';