-- Database: VIAGENSBICICLETA

-- DROP DATABASE IF EXISTS "VIAGENSBICICLETA";

CREATE DATABASE "VIAGENSBICICLETA"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Portuguese_Brazil.1252'
    LC_CTYPE = 'Portuguese_Brazil.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- SCHEMA: VIAGENS2

-- DROP SCHEMA IF EXISTS "VIAGENS2" ;

CREATE SCHEMA IF NOT EXISTS "VIAGENS2"
    AUTHORIZATION postgres;

-- Table: VIAGENS2.bicicletas

-- DROP TABLE IF EXISTS "VIAGENS2".bicicletas;

CREATE TABLE IF NOT EXISTS "VIAGENS2".bicicletas
(
    "idBicicleta" integer NOT NULL,
    serial text COLLATE pg_catalog."default",
    CONSTRAINT bicicletas_pkey PRIMARY KEY ("idBicicleta")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS "VIAGENS2".bicicletas
    OWNER to postgres;

-- Table: VIAGENS2.estacoes

-- DROP TABLE IF EXISTS "VIAGENS2".estacoes;

CREATE TABLE IF NOT EXISTS "VIAGENS2".estacoes
(
    "idEstacao" integer NOT NULL,
    "nomeEstacao" text COLLATE pg_catalog."default" NOT NULL,
    "areaEstacao" text COLLATE pg_catalog."default",
    "enderecoEstacao" text COLLATE pg_catalog."default",
    CONSTRAINT estacoes_pkey PRIMARY KEY ("idEstacao")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS "VIAGENS2".estacoes
    OWNER to postgres;


-- Table: VIAGENS2.viagens

-- DROP TABLE IF EXISTS "VIAGENS2".viagens;

CREATE TABLE IF NOT EXISTS "VIAGENS2".viagens
(
    "idViagem" integer NOT NULL,
    "idViajante" integer,
    "idBicicleta" integer,
    "idEstacaoDevolucao" integer,
    "idEstacaoRetirada" integer,
    "diaSemana" text COLLATE pg_catalog."default",
    "dataCorrida" text COLLATE pg_catalog."default",
    "horaRetirada" text COLLATE pg_catalog."default",
    meio text COLLATE pg_catalog."default",
    "horaDevolucao" text COLLATE pg_catalog."default",
    duracao integer,
    CONSTRAINT viagens_pkey PRIMARY KEY ("idViagem"),
    CONSTRAINT bicicleta FOREIGN KEY ("idBicicleta")
        REFERENCES "VIAGENS2".bicicletas ("idBicicleta") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT "estacaoDevolucao" FOREIGN KEY ("idEstacaoDevolucao")
        REFERENCES "VIAGENS2".estacoes ("idEstacao") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT estacaoretirada FOREIGN KEY ("idEstacaoRetirada")
        REFERENCES "VIAGENS2".estacoes ("idEstacao") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT viajante FOREIGN KEY ("idViajante")
        REFERENCES "VIAGENS2".viajantes ("idViajante") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS "VIAGENS2".viagens
    OWNER to postgres;


-- Table: VIAGENS2.viajantes

-- DROP TABLE IF EXISTS "VIAGENS2".viajantes;

CREATE TABLE IF NOT EXISTS "VIAGENS2".viajantes
(
    "idViajante" integer NOT NULL,
    "nomeViajante" text COLLATE pg_catalog."default",
    sexo text COLLATE pg_catalog."default",
    "anoNascimento" text COLLATE pg_catalog."default",
    pais text COLLATE pg_catalog."default",
    CONSTRAINT usuarios_pkey PRIMARY KEY ("idViajante")
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS "VIAGENS2".viajantes
    OWNER to postgres;
