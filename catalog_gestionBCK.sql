--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: catalogo_cargo; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_cargo (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(100) NOT NULL,
    empresa character varying(15) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_cargo OWNER TO sgimuser;

--
-- Name: catalogo_cargo_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_cargo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_cargo_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_cargo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_cargo_id_seq OWNED BY catalogo_cargo.id;


--
-- Name: catalogo_edificio; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_edificio (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_edificio OWNER TO sgimuser;

--
-- Name: catalogo_edificio_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_edificio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_edificio_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_edificio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_edificio_id_seq OWNED BY catalogo_edificio.id;


--
-- Name: catalogo_estadocambio; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_estadocambio (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_estadocambio OWNER TO sgimuser;

--
-- Name: catalogo_estadocambio_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_estadocambio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_estadocambio_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_estadocambio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_estadocambio_id_seq OWNED BY catalogo_estadocambio.id;


--
-- Name: catalogo_estadoincidente; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_estadoincidente (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_estadoincidente OWNER TO sgimuser;

--
-- Name: catalogo_estadoincidente_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_estadoincidente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_estadoincidente_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_estadoincidente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_estadoincidente_id_seq OWNED BY catalogo_estadoincidente.id;


--
-- Name: catalogo_estadomantenimiento; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_estadomantenimiento (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_estadomantenimiento OWNER TO sgimuser;

--
-- Name: catalogo_estadomantenimiento_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_estadomantenimiento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_estadomantenimiento_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_estadomantenimiento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_estadomantenimiento_id_seq OWNED BY catalogo_estadomantenimiento.id;


--
-- Name: catalogo_estadooperacional; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_estadooperacional (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_estadooperacional OWNER TO sgimuser;

--
-- Name: catalogo_estadooperacional_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_estadooperacional_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_estadooperacional_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_estadooperacional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_estadooperacional_id_seq OWNED BY catalogo_estadooperacional.id;


--
-- Name: catalogo_frecuenciamantto; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_frecuenciamantto (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    dias integer NOT NULL,
    creador_id integer NOT NULL,
    CONSTRAINT catalogo_frecuenciamantto_dias_check CHECK ((dias >= 0))
);


ALTER TABLE public.catalogo_frecuenciamantto OWNER TO sgimuser;

--
-- Name: catalogo_frecuenciamantto_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_frecuenciamantto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_frecuenciamantto_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_frecuenciamantto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_frecuenciamantto_id_seq OWNED BY catalogo_frecuenciamantto.id;


--
-- Name: catalogo_medionotificaion; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_medionotificaion (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_medionotificaion OWNER TO sgimuser;

--
-- Name: catalogo_medionotificaion_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_medionotificaion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_medionotificaion_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_medionotificaion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_medionotificaion_id_seq OWNED BY catalogo_medionotificaion.id;


--
-- Name: catalogo_oficina; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_oficina (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL,
    edificio_id integer NOT NULL
);


ALTER TABLE public.catalogo_oficina OWNER TO sgimuser;

--
-- Name: catalogo_oficina_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_oficina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_oficina_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_oficina_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_oficina_id_seq OWNED BY catalogo_oficina.id;


--
-- Name: catalogo_personal; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_personal (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre_completo character varying(100) NOT NULL,
    telefono character varying(15) NOT NULL,
    correo character varying(50) NOT NULL,
    cargo_id integer NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_personal OWNER TO sgimuser;

--
-- Name: catalogo_personal_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_personal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_personal_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_personal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_personal_id_seq OWNED BY catalogo_personal.id;


--
-- Name: catalogo_severidadurgencia; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_severidadurgencia (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_severidadurgencia OWNER TO sgimuser;

--
-- Name: catalogo_severidadurgencia_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_severidadurgencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_severidadurgencia_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_severidadurgencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_severidadurgencia_id_seq OWNED BY catalogo_severidadurgencia.id;


--
-- Name: catalogo_sistema; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_sistema (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_sistema OWNER TO sgimuser;

--
-- Name: catalogo_sistema_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_sistema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_sistema_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_sistema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_sistema_id_seq OWNED BY catalogo_sistema.id;


--
-- Name: catalogo_tipocomponente; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_tipocomponente (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_tipocomponente OWNER TO sgimuser;

--
-- Name: catalogo_tipocomponente_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_tipocomponente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_tipocomponente_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_tipocomponente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_tipocomponente_id_seq OWNED BY catalogo_tipocomponente.id;


--
-- Name: catalogo_tipodispositivo; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_tipodispositivo (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_tipodispositivo OWNER TO sgimuser;

--
-- Name: catalogo_tipodispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_tipodispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_tipodispositivo_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_tipodispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_tipodispositivo_id_seq OWNED BY catalogo_tipodispositivo.id;


--
-- Name: catalogo_tipoincidente; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_tipoincidente (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(100) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_tipoincidente OWNER TO sgimuser;

--
-- Name: catalogo_tipoincidente_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_tipoincidente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_tipoincidente_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_tipoincidente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_tipoincidente_id_seq OWNED BY catalogo_tipoincidente.id;


--
-- Name: catalogo_tiposervicio; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE catalogo_tiposervicio (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(30) NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.catalogo_tiposervicio OWNER TO sgimuser;

--
-- Name: catalogo_tiposervicio_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE catalogo_tiposervicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalogo_tiposervicio_id_seq OWNER TO sgimuser;

--
-- Name: catalogo_tiposervicio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE catalogo_tiposervicio_id_seq OWNED BY catalogo_tiposervicio.id;


--
-- Name: gestion_red_bootevent; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_bootevent (
    id integer NOT NULL,
    tipo character varying(20) NOT NULL,
    uptime integer NOT NULL,
    fecha timestamp with time zone NOT NULL,
    leido boolean NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_bootevent OWNER TO sgimuser;

--
-- Name: gestion_red_bootevent_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_bootevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_bootevent_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_bootevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_bootevent_id_seq OWNED BY gestion_red_bootevent.id;


--
-- Name: gestion_red_device; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_device (
    id integer NOT NULL,
    index integer NOT NULL,
    type character varying(30) NOT NULL,
    description character varying(300) NOT NULL,
    status character varying(100) NOT NULL,
    errors integer NOT NULL,
    created timestamp with time zone NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_device OWNER TO sgimuser;

--
-- Name: gestion_red_device_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_device_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_device_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_device_id_seq OWNED BY gestion_red_device.id;


--
-- Name: gestion_red_diskhistory; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_diskhistory (
    id integer NOT NULL,
    path character varying(20) NOT NULL,
    device character varying(300) NOT NULL,
    min_free integer NOT NULL,
    size integer NOT NULL,
    used integer NOT NULL,
    percent_used integer NOT NULL,
    flag boolean NOT NULL,
    msg character varying(200) NOT NULL,
    created timestamp with time zone NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_diskhistory OWNER TO sgimuser;

--
-- Name: gestion_red_diskhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_diskhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_diskhistory_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_diskhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_diskhistory_id_seq OWNED BY gestion_red_diskhistory.id;


--
-- Name: gestion_red_generalevent; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_generalevent (
    id integer NOT NULL,
    tabla character varying(20) NOT NULL,
    uptime integer NOT NULL,
    item character varying(30) NOT NULL,
    warning boolean NOT NULL,
    mensaje character varying(120) NOT NULL,
    leido boolean NOT NULL,
    fecha timestamp with time zone NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_generalevent OWNER TO sgimuser;

--
-- Name: gestion_red_generalevent_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_generalevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_generalevent_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_generalevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_generalevent_id_seq OWNED BY gestion_red_generalevent.id;


--
-- Name: gestion_red_host; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_host (
    id integer NOT NULL,
    direccion inet NOT NULL,
    nombre character varying(30) NOT NULL,
    descripcion character varying(150) NOT NULL,
    ubicacion character varying(150) NOT NULL,
    uptime integer NOT NULL,
    servicios integer NOT NULL,
    procesos integer NOT NULL,
    usuarios integer NOT NULL,
    alarma_discos boolean NOT NULL,
    alarma_procesos boolean NOT NULL,
    alarma_procesador boolean NOT NULL,
    alarma_memoria boolean NOT NULL,
    esta_conectado boolean NOT NULL,
    fecha timestamp with time zone NOT NULL,
    actualizado timestamp with time zone NOT NULL
);


ALTER TABLE public.gestion_red_host OWNER TO sgimuser;

--
-- Name: gestion_red_host_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_host_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_host_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_host_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_host_id_seq OWNED BY gestion_red_host.id;


--
-- Name: gestion_red_loadavghistory; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_loadavghistory (
    id integer NOT NULL,
    load1 double precision NOT NULL,
    load5 double precision NOT NULL,
    load15 double precision NOT NULL,
    threshold1 double precision NOT NULL,
    threshold5 double precision NOT NULL,
    threshold15 double precision NOT NULL,
    flag1 boolean NOT NULL,
    flag5 boolean NOT NULL,
    flag15 boolean NOT NULL,
    msg1 character varying(70) NOT NULL,
    msg5 character varying(70) NOT NULL,
    msg15 character varying(70) NOT NULL,
    created timestamp with time zone NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_loadavghistory OWNER TO sgimuser;

--
-- Name: gestion_red_loadavghistory_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_loadavghistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_loadavghistory_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_loadavghistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_loadavghistory_id_seq OWNED BY gestion_red_loadavghistory.id;


--
-- Name: gestion_red_memoryhistory; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_memoryhistory (
    id integer NOT NULL,
    total_swap integer NOT NULL,
    total_ram integer NOT NULL,
    free_swap integer NOT NULL,
    free_ram integer NOT NULL,
    created timestamp with time zone NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_memoryhistory OWNER TO sgimuser;

--
-- Name: gestion_red_memoryhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_memoryhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_memoryhistory_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_memoryhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_memoryhistory_id_seq OWNED BY gestion_red_memoryhistory.id;


--
-- Name: gestion_red_notificationevent; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_notificationevent (
    id integer NOT NULL,
    description character varying(200) NOT NULL,
    fecha timestamp with time zone NOT NULL,
    leido boolean NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_notificationevent OWNER TO sgimuser;

--
-- Name: gestion_red_notificationevent_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_notificationevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_notificationevent_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_notificationevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_notificationevent_id_seq OWNED BY gestion_red_notificationevent.id;


--
-- Name: gestion_red_process; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_process (
    id integer NOT NULL,
    index integer NOT NULL,
    name character varying(300) NOT NULL,
    min integer NOT NULL,
    max integer NOT NULL,
    count integer NOT NULL,
    flag boolean NOT NULL,
    msg character varying(100) NOT NULL,
    created timestamp with time zone NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_process OWNER TO sgimuser;

--
-- Name: gestion_red_process_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_process_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_process_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_process_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_process_id_seq OWNED BY gestion_red_process.id;


--
-- Name: gestion_red_storage; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_storage (
    id integer NOT NULL,
    index integer NOT NULL,
    type character varying(30) NOT NULL,
    description character varying(50) NOT NULL,
    size integer NOT NULL,
    used integer NOT NULL,
    percent_used integer NOT NULL,
    allocation_failures integer NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_storage OWNER TO sgimuser;

--
-- Name: gestion_red_storage_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_storage_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_storage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_storage_id_seq OWNED BY gestion_red_storage.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_cargo ALTER COLUMN id SET DEFAULT nextval('catalogo_cargo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_edificio ALTER COLUMN id SET DEFAULT nextval('catalogo_edificio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadocambio ALTER COLUMN id SET DEFAULT nextval('catalogo_estadocambio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadoincidente ALTER COLUMN id SET DEFAULT nextval('catalogo_estadoincidente_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadomantenimiento ALTER COLUMN id SET DEFAULT nextval('catalogo_estadomantenimiento_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadooperacional ALTER COLUMN id SET DEFAULT nextval('catalogo_estadooperacional_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_frecuenciamantto ALTER COLUMN id SET DEFAULT nextval('catalogo_frecuenciamantto_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_medionotificaion ALTER COLUMN id SET DEFAULT nextval('catalogo_medionotificaion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_oficina ALTER COLUMN id SET DEFAULT nextval('catalogo_oficina_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_personal ALTER COLUMN id SET DEFAULT nextval('catalogo_personal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_severidadurgencia ALTER COLUMN id SET DEFAULT nextval('catalogo_severidadurgencia_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_sistema ALTER COLUMN id SET DEFAULT nextval('catalogo_sistema_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tipocomponente ALTER COLUMN id SET DEFAULT nextval('catalogo_tipocomponente_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tipodispositivo ALTER COLUMN id SET DEFAULT nextval('catalogo_tipodispositivo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tipoincidente ALTER COLUMN id SET DEFAULT nextval('catalogo_tipoincidente_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tiposervicio ALTER COLUMN id SET DEFAULT nextval('catalogo_tiposervicio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_bootevent ALTER COLUMN id SET DEFAULT nextval('gestion_red_bootevent_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_device ALTER COLUMN id SET DEFAULT nextval('gestion_red_device_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_diskhistory ALTER COLUMN id SET DEFAULT nextval('gestion_red_diskhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_generalevent ALTER COLUMN id SET DEFAULT nextval('gestion_red_generalevent_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_host ALTER COLUMN id SET DEFAULT nextval('gestion_red_host_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_loadavghistory ALTER COLUMN id SET DEFAULT nextval('gestion_red_loadavghistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_memoryhistory ALTER COLUMN id SET DEFAULT nextval('gestion_red_memoryhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_notificationevent ALTER COLUMN id SET DEFAULT nextval('gestion_red_notificationevent_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_process ALTER COLUMN id SET DEFAULT nextval('gestion_red_process_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_storage ALTER COLUMN id SET DEFAULT nextval('gestion_red_storage_id_seq'::regclass);


--
-- Data for Name: catalogo_cargo; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_cargo (id, activo, creado, modificado, nombre, empresa, creador_id) FROM stdin;
2	t	2015-06-07 22:15:15.466011-06	2015-06-07 22:15:15.466084-06	Controlador Aereo	EAAI	1
1	t	2015-06-07 22:15:08.872479-06	2015-06-07 22:15:57.811222-06	Ing. Mantenimiento Radar	EAAI	1
\.


--
-- Name: catalogo_cargo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_cargo_id_seq', 2, true);


--
-- Data for Name: catalogo_edificio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_edificio (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_edificio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_edificio_id_seq', 1, false);


--
-- Data for Name: catalogo_estadocambio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadocambio (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_estadocambio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadocambio_id_seq', 1, false);


--
-- Data for Name: catalogo_estadoincidente; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadoincidente (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_estadoincidente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadoincidente_id_seq', 1, false);


--
-- Data for Name: catalogo_estadomantenimiento; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadomantenimiento (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-06-07 22:16:18.15091-06	2015-06-07 22:16:18.150964-06	PROGRAMADO	1
2	t	2015-06-07 22:17:05.178856-06	2015-06-07 22:17:05.178926-06	PROGRAMADO	1
3	t	2015-06-07 22:17:10.86449-06	2015-06-07 22:17:10.864544-06	EN PROCESO	1
4	t	2015-06-07 22:17:18.313303-06	2015-06-07 22:17:18.313383-06	RETRAZADO	1
5	t	2015-06-07 22:17:21.994703-06	2015-06-07 22:17:21.994769-06	TERMINADO	1
6	t	2015-06-07 22:17:26.062861-06	2015-06-07 22:17:26.062916-06	CANCELADO	1
\.


--
-- Name: catalogo_estadomantenimiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadomantenimiento_id_seq', 6, true);


--
-- Data for Name: catalogo_estadooperacional; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadooperacional (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_estadooperacional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadooperacional_id_seq', 1, false);


--
-- Data for Name: catalogo_frecuenciamantto; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_frecuenciamantto (id, activo, creado, modificado, nombre, dias, creador_id) FROM stdin;
2	t	2015-06-07 22:18:12.917528-06	2015-06-07 22:18:12.917603-06	QUINCENAL	15	1
1	t	2015-06-07 22:17:49.291291-06	2015-06-07 22:18:23.352324-06	SEMANAL	7	1
3	t	2015-06-07 22:18:33.715364-06	2015-06-07 22:18:33.715418-06	MENSUAL	30	1
4	t	2015-06-07 22:18:40.249879-06	2015-06-07 22:22:12.08653-06	BIMESTRAL	60	1
5	t	2015-06-07 22:22:33.059299-06	2015-06-07 22:22:33.059355-06	TRIMESTRAL	90	1
6	t	2015-06-07 22:22:57.872517-06	2015-06-07 22:22:57.872572-06	CUATRIMESTRAL	120	1
7	t	2015-06-07 22:23:10.088764-06	2015-06-07 22:23:10.088821-06	SEMESTRAL	180	1
8	t	2015-06-07 22:23:17.92712-06	2015-06-07 22:23:17.927176-06	ANUAL	365	1
\.


--
-- Name: catalogo_frecuenciamantto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_frecuenciamantto_id_seq', 8, true);


--
-- Data for Name: catalogo_medionotificaion; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_medionotificaion (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-06-07 22:23:28.989414-06	2015-06-07 22:23:28.989479-06	TELEFONO	1
2	t	2015-06-07 22:23:34.897865-06	2015-06-07 22:23:34.897928-06	EN PERSONA	1
3	t	2015-06-07 22:23:40.4579-06	2015-06-07 22:23:40.457971-06	CORREO	1
\.


--
-- Name: catalogo_medionotificaion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_medionotificaion_id_seq', 3, true);


--
-- Data for Name: catalogo_oficina; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_oficina (id, activo, creado, modificado, nombre, creador_id, edificio_id) FROM stdin;
\.


--
-- Name: catalogo_oficina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_oficina_id_seq', 1, false);


--
-- Data for Name: catalogo_personal; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_personal (id, activo, creado, modificado, nombre_completo, telefono, correo, cargo_id, creador_id) FROM stdin;
\.


--
-- Name: catalogo_personal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_personal_id_seq', 1, false);


--
-- Data for Name: catalogo_severidadurgencia; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_severidadurgencia (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_severidadurgencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_severidadurgencia_id_seq', 1, false);


--
-- Data for Name: catalogo_sistema; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_sistema (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-06-07 22:24:07.798517-06	2015-06-07 22:24:07.798574-06	AIRCON 2100	1
2	t	2015-06-07 22:24:18.549981-06	2015-06-07 22:24:18.550066-06	SDC 2.0	1
\.


--
-- Name: catalogo_sistema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_sistema_id_seq', 2, true);


--
-- Data for Name: catalogo_tipocomponente; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tipocomponente (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_tipocomponente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tipocomponente_id_seq', 1, false);


--
-- Data for Name: catalogo_tipodispositivo; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tipodispositivo (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_tipodispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tipodispositivo_id_seq', 1, false);


--
-- Data for Name: catalogo_tipoincidente; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tipoincidente (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_tipoincidente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tipoincidente_id_seq', 1, false);


--
-- Data for Name: catalogo_tiposervicio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tiposervicio (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
\.


--
-- Name: catalogo_tiposervicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tiposervicio_id_seq', 1, false);


--
-- Data for Name: gestion_red_bootevent; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_bootevent (id, tipo, uptime, fecha, leido, host_id) FROM stdin;
\.


--
-- Name: gestion_red_bootevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_bootevent_id_seq', 1, false);


--
-- Data for Name: gestion_red_device; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_device (id, index, type, description, status, errors, created, host_id) FROM stdin;
\.


--
-- Name: gestion_red_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_device_id_seq', 1, false);


--
-- Data for Name: gestion_red_diskhistory; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_diskhistory (id, path, device, min_free, size, used, percent_used, flag, msg, created, host_id) FROM stdin;
\.


--
-- Name: gestion_red_diskhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_diskhistory_id_seq', 1, false);


--
-- Data for Name: gestion_red_generalevent; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_generalevent (id, tabla, uptime, item, warning, mensaje, leido, fecha, host_id) FROM stdin;
\.


--
-- Name: gestion_red_generalevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_generalevent_id_seq', 1, false);


--
-- Data for Name: gestion_red_host; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_host (id, direccion, nombre, descripcion, ubicacion, uptime, servicios, procesos, usuarios, alarma_discos, alarma_procesos, alarma_procesador, alarma_memoria, esta_conectado, fecha, actualizado) FROM stdin;
1	10.160.80.1				0	0	0	0	f	f	f	f	t	2015-06-07 22:37:05.299476-06	2015-06-07 22:37:05.29955-06
2	10.160.80.11				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:41.387581-06	2015-06-07 22:43:41.41699-06
3	10.160.80.10				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:41.513531-06	2015-06-07 22:43:41.535345-06
4	10.160.80.13				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:41.653221-06	2015-06-07 22:43:41.675882-06
5	10.160.80.12				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:41.794118-06	2015-06-07 22:43:41.816655-06
6	10.160.80.15				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:41.91777-06	2015-06-07 22:43:41.955015-06
7	10.160.80.14				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.087094-06	2015-06-07 22:43:42.105703-06
8	10.160.80.17				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.207096-06	2015-06-07 22:43:42.222687-06
9	10.160.80.16				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.346147-06	2015-06-07 22:43:42.364124-06
10	10.160.80.19				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.465612-06	2015-06-07 22:43:42.479804-06
11	10.160.80.18				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.60667-06	2015-06-07 22:43:42.622761-06
12	10.160.80.192				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.731482-06	2015-06-07 22:43:42.744515-06
13	10.160.80.20				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.857935-06	2015-06-07 22:43:42.882288-06
14	10.160.80.21				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:42.998658-06	2015-06-07 22:43:43.024427-06
15	10.160.80.22				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:43.154173-06	2015-06-07 22:43:43.171604-06
16	10.160.80.23				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:43.360161-06	2015-06-07 22:43:43.383455-06
17	10.160.80.24				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:43.48968-06	2015-06-07 22:43:43.514682-06
18	10.160.80.25				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:43.63924-06	2015-06-07 22:43:43.665702-06
19	10.160.80.26				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:43.784911-06	2015-06-07 22:43:43.803592-06
20	10.160.80.5				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:43.92069-06	2015-06-07 22:43:43.937304-06
21	10.160.80.4				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:44.064338-06	2015-06-07 22:43:44.09016-06
22	10.160.80.7				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:44.200634-06	2015-06-07 22:43:44.221433-06
23	10.160.80.6				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:44.346778-06	2015-06-07 22:43:44.36018-06
24	10.160.80.3				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:44.490705-06	2015-06-07 22:43:44.51306-06
25	10.160.80.2				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:44.629648-06	2015-06-07 22:43:44.644688-06
26	10.160.80.9				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:44.757556-06	2015-06-07 22:43:44.778784-06
27	10.160.80.8				0	0	0	0	f	f	f	f	t	2015-06-07 22:43:44.897373-06	2015-06-07 22:43:44.922162-06
\.


--
-- Name: gestion_red_host_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_host_id_seq', 27, true);


--
-- Data for Name: gestion_red_loadavghistory; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_loadavghistory (id, load1, load5, load15, threshold1, threshold5, threshold15, flag1, flag5, flag15, msg1, msg5, msg15, created, host_id) FROM stdin;
\.


--
-- Name: gestion_red_loadavghistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_loadavghistory_id_seq', 1, false);


--
-- Data for Name: gestion_red_memoryhistory; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_memoryhistory (id, total_swap, total_ram, free_swap, free_ram, created, host_id) FROM stdin;
\.


--
-- Name: gestion_red_memoryhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_memoryhistory_id_seq', 1, false);


--
-- Data for Name: gestion_red_notificationevent; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_notificationevent (id, description, fecha, leido, host_id) FROM stdin;
\.


--
-- Name: gestion_red_notificationevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_notificationevent_id_seq', 1, false);


--
-- Data for Name: gestion_red_process; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_process (id, index, name, min, max, count, flag, msg, created, host_id) FROM stdin;
\.


--
-- Name: gestion_red_process_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_process_id_seq', 1, false);


--
-- Data for Name: gestion_red_storage; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_storage (id, index, type, description, size, used, percent_used, allocation_failures, host_id) FROM stdin;
\.


--
-- Name: gestion_red_storage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_storage_id_seq', 1, false);


--
-- Name: catalogo_cargo_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_cargo
    ADD CONSTRAINT catalogo_cargo_pkey PRIMARY KEY (id);


--
-- Name: catalogo_edificio_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_edificio
    ADD CONSTRAINT catalogo_edificio_pkey PRIMARY KEY (id);


--
-- Name: catalogo_estadocambio_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_estadocambio
    ADD CONSTRAINT catalogo_estadocambio_pkey PRIMARY KEY (id);


--
-- Name: catalogo_estadoincidente_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_estadoincidente
    ADD CONSTRAINT catalogo_estadoincidente_pkey PRIMARY KEY (id);


--
-- Name: catalogo_estadomantenimiento_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_estadomantenimiento
    ADD CONSTRAINT catalogo_estadomantenimiento_pkey PRIMARY KEY (id);


--
-- Name: catalogo_estadooperacional_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_estadooperacional
    ADD CONSTRAINT catalogo_estadooperacional_pkey PRIMARY KEY (id);


--
-- Name: catalogo_frecuenciamantto_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_frecuenciamantto
    ADD CONSTRAINT catalogo_frecuenciamantto_pkey PRIMARY KEY (id);


--
-- Name: catalogo_medionotificaion_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_medionotificaion
    ADD CONSTRAINT catalogo_medionotificaion_pkey PRIMARY KEY (id);


--
-- Name: catalogo_oficina_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_oficina
    ADD CONSTRAINT catalogo_oficina_pkey PRIMARY KEY (id);


--
-- Name: catalogo_personal_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_personal
    ADD CONSTRAINT catalogo_personal_pkey PRIMARY KEY (id);


--
-- Name: catalogo_severidadurgencia_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_severidadurgencia
    ADD CONSTRAINT catalogo_severidadurgencia_pkey PRIMARY KEY (id);


--
-- Name: catalogo_sistema_nombre_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_sistema
    ADD CONSTRAINT catalogo_sistema_nombre_key UNIQUE (nombre);


--
-- Name: catalogo_sistema_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_sistema
    ADD CONSTRAINT catalogo_sistema_pkey PRIMARY KEY (id);


--
-- Name: catalogo_tipocomponente_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_tipocomponente
    ADD CONSTRAINT catalogo_tipocomponente_pkey PRIMARY KEY (id);


--
-- Name: catalogo_tipodispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_tipodispositivo
    ADD CONSTRAINT catalogo_tipodispositivo_pkey PRIMARY KEY (id);


--
-- Name: catalogo_tipoincidente_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_tipoincidente
    ADD CONSTRAINT catalogo_tipoincidente_pkey PRIMARY KEY (id);


--
-- Name: catalogo_tiposervicio_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY catalogo_tiposervicio
    ADD CONSTRAINT catalogo_tiposervicio_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_bootevent_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_bootevent
    ADD CONSTRAINT gestion_red_bootevent_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_device_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_device
    ADD CONSTRAINT gestion_red_device_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_diskhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_diskhistory
    ADD CONSTRAINT gestion_red_diskhistory_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_generalevent_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_generalevent
    ADD CONSTRAINT gestion_red_generalevent_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_host_direccion_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_host
    ADD CONSTRAINT gestion_red_host_direccion_key UNIQUE (direccion);


--
-- Name: gestion_red_host_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_host
    ADD CONSTRAINT gestion_red_host_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_loadavghistory_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_loadavghistory
    ADD CONSTRAINT gestion_red_loadavghistory_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_memoryhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_memoryhistory
    ADD CONSTRAINT gestion_red_memoryhistory_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_notificationevent_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_notificationevent
    ADD CONSTRAINT gestion_red_notificationevent_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_process_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_process
    ADD CONSTRAINT gestion_red_process_pkey PRIMARY KEY (id);


--
-- Name: gestion_red_storage_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_storage
    ADD CONSTRAINT gestion_red_storage_pkey PRIMARY KEY (id);


--
-- Name: catalogo_cargo_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_cargo_f4a1f771 ON catalogo_cargo USING btree (creador_id);


--
-- Name: catalogo_edificio_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_edificio_f4a1f771 ON catalogo_edificio USING btree (creador_id);


--
-- Name: catalogo_estadocambio_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_estadocambio_f4a1f771 ON catalogo_estadocambio USING btree (creador_id);


--
-- Name: catalogo_estadoincidente_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_estadoincidente_f4a1f771 ON catalogo_estadoincidente USING btree (creador_id);


--
-- Name: catalogo_estadomantenimiento_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_estadomantenimiento_f4a1f771 ON catalogo_estadomantenimiento USING btree (creador_id);


--
-- Name: catalogo_estadooperacional_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_estadooperacional_f4a1f771 ON catalogo_estadooperacional USING btree (creador_id);


--
-- Name: catalogo_frecuenciamantto_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_frecuenciamantto_f4a1f771 ON catalogo_frecuenciamantto USING btree (creador_id);


--
-- Name: catalogo_medionotificaion_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_medionotificaion_f4a1f771 ON catalogo_medionotificaion USING btree (creador_id);


--
-- Name: catalogo_oficina_8a1efaf1; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_oficina_8a1efaf1 ON catalogo_oficina USING btree (edificio_id);


--
-- Name: catalogo_oficina_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_oficina_f4a1f771 ON catalogo_oficina USING btree (creador_id);


--
-- Name: catalogo_personal_d036ebc9; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_personal_d036ebc9 ON catalogo_personal USING btree (cargo_id);


--
-- Name: catalogo_personal_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_personal_f4a1f771 ON catalogo_personal USING btree (creador_id);


--
-- Name: catalogo_severidadurgencia_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_severidadurgencia_f4a1f771 ON catalogo_severidadurgencia USING btree (creador_id);


--
-- Name: catalogo_sistema_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_sistema_f4a1f771 ON catalogo_sistema USING btree (creador_id);


--
-- Name: catalogo_sistema_nombre_293479271c60c91_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_sistema_nombre_293479271c60c91_like ON catalogo_sistema USING btree (nombre varchar_pattern_ops);


--
-- Name: catalogo_tipocomponente_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_tipocomponente_f4a1f771 ON catalogo_tipocomponente USING btree (creador_id);


--
-- Name: catalogo_tipodispositivo_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_tipodispositivo_f4a1f771 ON catalogo_tipodispositivo USING btree (creador_id);


--
-- Name: catalogo_tipoincidente_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_tipoincidente_f4a1f771 ON catalogo_tipoincidente USING btree (creador_id);


--
-- Name: catalogo_tiposervicio_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX catalogo_tiposervicio_f4a1f771 ON catalogo_tiposervicio USING btree (creador_id);


--
-- Name: gestion_red_bootevent_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_bootevent_8396f175 ON gestion_red_bootevent USING btree (host_id);


--
-- Name: gestion_red_bootevent_94ed4167; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_bootevent_94ed4167 ON gestion_red_bootevent USING btree (fecha);


--
-- Name: gestion_red_device_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_device_8396f175 ON gestion_red_device USING btree (host_id);


--
-- Name: gestion_red_diskhistory_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_diskhistory_8396f175 ON gestion_red_diskhistory USING btree (host_id);


--
-- Name: gestion_red_generalevent_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_generalevent_8396f175 ON gestion_red_generalevent USING btree (host_id);


--
-- Name: gestion_red_generalevent_94ed4167; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_generalevent_94ed4167 ON gestion_red_generalevent USING btree (fecha);


--
-- Name: gestion_red_loadavghistory_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_loadavghistory_8396f175 ON gestion_red_loadavghistory USING btree (host_id);


--
-- Name: gestion_red_memoryhistory_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_memoryhistory_8396f175 ON gestion_red_memoryhistory USING btree (host_id);


--
-- Name: gestion_red_notificationevent_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_notificationevent_8396f175 ON gestion_red_notificationevent USING btree (host_id);


--
-- Name: gestion_red_notificationevent_94ed4167; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_notificationevent_94ed4167 ON gestion_red_notificationevent USING btree (fecha);


--
-- Name: gestion_red_process_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_process_8396f175 ON gestion_red_process USING btree (host_id);


--
-- Name: gestion_red_storage_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_storage_8396f175 ON gestion_red_storage USING btree (host_id);


--
-- Name: catalogo_carg_creador_id_598842b421a57cfa_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_cargo
    ADD CONSTRAINT catalogo_carg_creador_id_598842b421a57cfa_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_edifi_creador_id_89a93b4af9e0129_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_edificio
    ADD CONSTRAINT catalogo_edifi_creador_id_89a93b4af9e0129_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_esta_creador_id_2da2473a5a6e415b_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadoincidente
    ADD CONSTRAINT catalogo_esta_creador_id_2da2473a5a6e415b_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_esta_creador_id_33531b2337bbb777_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadooperacional
    ADD CONSTRAINT catalogo_esta_creador_id_33531b2337bbb777_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_esta_creador_id_36581ac3891df73c_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadomantenimiento
    ADD CONSTRAINT catalogo_esta_creador_id_36581ac3891df73c_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_esta_creador_id_52cff4b61a0e80fc_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_estadocambio
    ADD CONSTRAINT catalogo_esta_creador_id_52cff4b61a0e80fc_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_frec_creador_id_5cd0c6e6e9b8d799_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_frecuenciamantto
    ADD CONSTRAINT catalogo_frec_creador_id_5cd0c6e6e9b8d799_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_medi_creador_id_78186edd424a97f6_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_medionotificaion
    ADD CONSTRAINT catalogo_medi_creador_id_78186edd424a97f6_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_o_edificio_id_4f78f9ce1734b4e6_fk_catalogo_edificio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_oficina
    ADD CONSTRAINT catalogo_o_edificio_id_4f78f9ce1734b4e6_fk_catalogo_edificio_id FOREIGN KEY (edificio_id) REFERENCES catalogo_edificio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_ofic_creador_id_6b26cb74c619d57d_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_oficina
    ADD CONSTRAINT catalogo_ofic_creador_id_6b26cb74c619d57d_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_pers_creador_id_6f1a7ad082c6c373_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_personal
    ADD CONSTRAINT catalogo_pers_creador_id_6f1a7ad082c6c373_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_persona_cargo_id_4401d630ac2bdfd7_fk_catalogo_cargo_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_personal
    ADD CONSTRAINT catalogo_persona_cargo_id_4401d630ac2bdfd7_fk_catalogo_cargo_id FOREIGN KEY (cargo_id) REFERENCES catalogo_cargo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_sever_creador_id_20d2b4189fed0ff_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_severidadurgencia
    ADD CONSTRAINT catalogo_sever_creador_id_20d2b4189fed0ff_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_sist_creador_id_27363888f223a15c_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_sistema
    ADD CONSTRAINT catalogo_sist_creador_id_27363888f223a15c_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_tipo_creador_id_1bc15ee3b8d708bb_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tipoincidente
    ADD CONSTRAINT catalogo_tipo_creador_id_1bc15ee3b8d708bb_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_tipo_creador_id_7097de982675172f_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tiposervicio
    ADD CONSTRAINT catalogo_tipo_creador_id_7097de982675172f_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_tipo_creador_id_71dfceaf2488131b_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tipodispositivo
    ADD CONSTRAINT catalogo_tipo_creador_id_71dfceaf2488131b_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalogo_tipoc_creador_id_20dda05becf4c3d_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY catalogo_tipocomponente
    ADD CONSTRAINT catalogo_tipoc_creador_id_20dda05becf4c3d_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_boo_host_id_2097953313cea8cb_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_bootevent
    ADD CONSTRAINT gestion_red_boo_host_id_2097953313cea8cb_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_dev_host_id_1a689d9dc1b3f850_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_device
    ADD CONSTRAINT gestion_red_dev_host_id_1a689d9dc1b3f850_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_dis_host_id_5ae48a206e6c6ff6_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_diskhistory
    ADD CONSTRAINT gestion_red_dis_host_id_5ae48a206e6c6ff6_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_gen_host_id_15d9af376690724c_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_generalevent
    ADD CONSTRAINT gestion_red_gen_host_id_15d9af376690724c_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_loa_host_id_382996a563e3345a_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_loadavghistory
    ADD CONSTRAINT gestion_red_loa_host_id_382996a563e3345a_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_mem_host_id_7c0746f41dbb5f62_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_memoryhistory
    ADD CONSTRAINT gestion_red_mem_host_id_7c0746f41dbb5f62_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_not_host_id_51adb43f7ceca286_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_notificationevent
    ADD CONSTRAINT gestion_red_not_host_id_51adb43f7ceca286_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_pro_host_id_6990a6dcd904df28_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_process
    ADD CONSTRAINT gestion_red_pro_host_id_6990a6dcd904df28_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: gestion_red_sto_host_id_5133da3cedf18f2c_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_storage
    ADD CONSTRAINT gestion_red_sto_host_id_5133da3cedf18f2c_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

