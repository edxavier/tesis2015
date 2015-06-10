--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO sgimuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO sgimuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO sgimuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO sgimuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO sgimuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO sgimuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


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
-- Name: cuentas_usuario; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE cuentas_usuario (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(50) NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    email character varying(75) NOT NULL,
    imagen character varying(100) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    telefono character varying(15) NOT NULL
);


ALTER TABLE public.cuentas_usuario OWNER TO sgimuser;

--
-- Name: cuentas_usuario_groups; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE cuentas_usuario_groups (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.cuentas_usuario_groups OWNER TO sgimuser;

--
-- Name: cuentas_usuario_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE cuentas_usuario_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cuentas_usuario_groups_id_seq OWNER TO sgimuser;

--
-- Name: cuentas_usuario_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE cuentas_usuario_groups_id_seq OWNED BY cuentas_usuario_groups.id;


--
-- Name: cuentas_usuario_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE cuentas_usuario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cuentas_usuario_id_seq OWNER TO sgimuser;

--
-- Name: cuentas_usuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE cuentas_usuario_id_seq OWNED BY cuentas_usuario.id;


--
-- Name: cuentas_usuario_user_permissions; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE cuentas_usuario_user_permissions (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.cuentas_usuario_user_permissions OWNER TO sgimuser;

--
-- Name: cuentas_usuario_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE cuentas_usuario_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cuentas_usuario_user_permissions_id_seq OWNER TO sgimuser;

--
-- Name: cuentas_usuario_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE cuentas_usuario_user_permissions_id_seq OWNED BY cuentas_usuario_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO sgimuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO sgimuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO sgimuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO sgimuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO sgimuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO sgimuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO sgimuser;

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
-- Name: gestion_red_interfaceevent; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE gestion_red_interfaceevent (
    id integer NOT NULL,
    uptime integer NOT NULL,
    tipo character varying(20) NOT NULL,
    nombre character varying(30) NOT NULL,
    estado_operacional character varying(30) NOT NULL,
    estado_administrativo character varying(30) NOT NULL,
    leido boolean NOT NULL,
    fecha timestamp with time zone NOT NULL,
    host_id integer NOT NULL
);


ALTER TABLE public.gestion_red_interfaceevent OWNER TO sgimuser;

--
-- Name: gestion_red_interfaceevent_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE gestion_red_interfaceevent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gestion_red_interfaceevent_id_seq OWNER TO sgimuser;

--
-- Name: gestion_red_interfaceevent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE gestion_red_interfaceevent_id_seq OWNED BY gestion_red_interfaceevent.id;


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
    allocation_failures integer NOT NULL,
    host_id integer NOT NULL,
    percent_used integer NOT NULL
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
-- Name: incidencias_actividadcambio; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE incidencias_actividadcambio (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    descripcion text NOT NULL,
    paro_equipo boolean NOT NULL,
    duracion_paro integer NOT NULL,
    inicio_actividad timestamp with time zone NOT NULL,
    fin_actividad timestamp with time zone NOT NULL,
    cambio_id integer NOT NULL,
    creador_id integer NOT NULL
);


ALTER TABLE public.incidencias_actividadcambio OWNER TO sgimuser;

--
-- Name: incidencias_actividadcambio_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE incidencias_actividadcambio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidencias_actividadcambio_id_seq OWNER TO sgimuser;

--
-- Name: incidencias_actividadcambio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE incidencias_actividadcambio_id_seq OWNED BY incidencias_actividadcambio.id;


--
-- Name: incidencias_actividadincidencia; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE incidencias_actividadincidencia (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    descripcion text NOT NULL,
    paro_equipo boolean NOT NULL,
    duracion_paro integer NOT NULL,
    inicio_actividad timestamp with time zone NOT NULL,
    fin_actividad timestamp with time zone NOT NULL,
    creador_id integer NOT NULL,
    incidencia_id integer NOT NULL
);


ALTER TABLE public.incidencias_actividadincidencia OWNER TO sgimuser;

--
-- Name: incidencias_actividadincidencia_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE incidencias_actividadincidencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidencias_actividadincidencia_id_seq OWNER TO sgimuser;

--
-- Name: incidencias_actividadincidencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE incidencias_actividadincidencia_id_seq OWNED BY incidencias_actividadincidencia.id;


--
-- Name: incidencias_cambio; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE incidencias_cambio (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    titulo character varying(100) NOT NULL,
    proposito text NOT NULL,
    inicio_previsto date NOT NULL,
    creador_id integer NOT NULL,
    estado_id integer NOT NULL,
    responsable_id integer NOT NULL,
    solicitante_id integer NOT NULL
);


ALTER TABLE public.incidencias_cambio OWNER TO sgimuser;

--
-- Name: incidencias_cambio_dispositivos; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE incidencias_cambio_dispositivos (
    id integer NOT NULL,
    cambio_id integer NOT NULL,
    dispositivo_id integer NOT NULL
);


ALTER TABLE public.incidencias_cambio_dispositivos OWNER TO sgimuser;

--
-- Name: incidencias_cambio_dispositivos_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE incidencias_cambio_dispositivos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidencias_cambio_dispositivos_id_seq OWNER TO sgimuser;

--
-- Name: incidencias_cambio_dispositivos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE incidencias_cambio_dispositivos_id_seq OWNED BY incidencias_cambio_dispositivos.id;


--
-- Name: incidencias_cambio_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE incidencias_cambio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidencias_cambio_id_seq OWNER TO sgimuser;

--
-- Name: incidencias_cambio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE incidencias_cambio_id_seq OWNED BY incidencias_cambio.id;


--
-- Name: incidencias_cambio_servicios; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE incidencias_cambio_servicios (
    id integer NOT NULL,
    cambio_id integer NOT NULL,
    servicio_id integer NOT NULL
);


ALTER TABLE public.incidencias_cambio_servicios OWNER TO sgimuser;

--
-- Name: incidencias_cambio_servicios_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE incidencias_cambio_servicios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidencias_cambio_servicios_id_seq OWNER TO sgimuser;

--
-- Name: incidencias_cambio_servicios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE incidencias_cambio_servicios_id_seq OWNED BY incidencias_cambio_servicios.id;


--
-- Name: incidencias_incidencia; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE incidencias_incidencia (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    problema text NOT NULL,
    causa text NOT NULL,
    solucion text NOT NULL,
    paro_equipo boolean NOT NULL,
    duracion_paro integer NOT NULL,
    creador_id integer NOT NULL,
    dispositivo_id integer NOT NULL,
    estado_id integer NOT NULL,
    medio_notificacion_id integer NOT NULL,
    relacion_id integer,
    reporta_id integer NOT NULL,
    severidad_id integer NOT NULL,
    tipo_id integer NOT NULL,
    urgencia_id integer NOT NULL
);


ALTER TABLE public.incidencias_incidencia OWNER TO sgimuser;

--
-- Name: incidencias_incidencia_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE incidencias_incidencia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidencias_incidencia_id_seq OWNER TO sgimuser;

--
-- Name: incidencias_incidencia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE incidencias_incidencia_id_seq OWNED BY incidencias_incidencia.id;


--
-- Name: incidencias_incidencia_servicios; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE incidencias_incidencia_servicios (
    id integer NOT NULL,
    incidencia_id integer NOT NULL,
    servicio_id integer NOT NULL
);


ALTER TABLE public.incidencias_incidencia_servicios OWNER TO sgimuser;

--
-- Name: incidencias_incidencia_servicios_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE incidencias_incidencia_servicios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.incidencias_incidencia_servicios_id_seq OWNER TO sgimuser;

--
-- Name: incidencias_incidencia_servicios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE incidencias_incidencia_servicios_id_seq OWNED BY incidencias_incidencia_servicios.id;


--
-- Name: inventario_componente; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE inventario_componente (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    marca character varying(30) NOT NULL,
    modelo character varying(30) NOT NULL,
    serie character varying(30) NOT NULL,
    inventario character varying(30),
    creador_id integer NOT NULL,
    estado_id integer NOT NULL,
    instalado_en_id integer NOT NULL,
    tipo_id integer NOT NULL
);


ALTER TABLE public.inventario_componente OWNER TO sgimuser;

--
-- Name: inventario_componente_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE inventario_componente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_componente_id_seq OWNER TO sgimuser;

--
-- Name: inventario_componente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE inventario_componente_id_seq OWNED BY inventario_componente.id;


--
-- Name: inventario_dispositivo; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE inventario_dispositivo (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    marca character varying(30) NOT NULL,
    modelo character varying(30) NOT NULL,
    serie character varying(30) NOT NULL,
    inventario character varying(30),
    posicion_logica character varying(50) NOT NULL,
    instalacion date NOT NULL,
    creador_id integer NOT NULL,
    edificio_id integer NOT NULL,
    estado_id integer NOT NULL,
    oficina_id integer NOT NULL,
    sistema_id integer NOT NULL,
    tipo_id integer NOT NULL
);


ALTER TABLE public.inventario_dispositivo OWNER TO sgimuser;

--
-- Name: inventario_dispositivo_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE inventario_dispositivo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_dispositivo_id_seq OWNER TO sgimuser;

--
-- Name: inventario_dispositivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE inventario_dispositivo_id_seq OWNED BY inventario_dispositivo.id;


--
-- Name: inventario_servicio; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE inventario_servicio (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(150),
    creador_id integer NOT NULL,
    tipo_id integer NOT NULL
);


ALTER TABLE public.inventario_servicio OWNER TO sgimuser;

--
-- Name: inventario_servicio_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE inventario_servicio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_servicio_id_seq OWNER TO sgimuser;

--
-- Name: inventario_servicio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE inventario_servicio_id_seq OWNED BY inventario_servicio.id;


--
-- Name: inventario_subsistema; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE inventario_subsistema (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(50) NOT NULL,
    descripcion character varying(150) NOT NULL,
    creador_id integer NOT NULL,
    sistema_id integer NOT NULL
);


ALTER TABLE public.inventario_subsistema OWNER TO sgimuser;

--
-- Name: inventario_subsistema_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE inventario_subsistema_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_subsistema_id_seq OWNER TO sgimuser;

--
-- Name: inventario_subsistema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE inventario_subsistema_id_seq OWNED BY inventario_subsistema.id;


--
-- Name: mantenimiento_boletatrabajo; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE mantenimiento_boletatrabajo (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    tipo character varying(30) NOT NULL,
    descripcion text NOT NULL,
    paro_operacion boolean NOT NULL,
    tiempo_paro integer NOT NULL,
    creador_id integer NOT NULL,
    dispositivo_id integer NOT NULL,
    estado_final_id integer NOT NULL,
    orden_id integer
);


ALTER TABLE public.mantenimiento_boletatrabajo OWNER TO sgimuser;

--
-- Name: mantenimiento_boletatrabajo_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE mantenimiento_boletatrabajo_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenimiento_boletatrabajo_id_seq OWNER TO sgimuser;

--
-- Name: mantenimiento_boletatrabajo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE mantenimiento_boletatrabajo_id_seq OWNED BY mantenimiento_boletatrabajo.id;


--
-- Name: mantenimiento_programacion; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE mantenimiento_programacion (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    fecha_inicio_prevista timestamp with time zone NOT NULL,
    fecha_fin_prevista timestamp with time zone,
    inicio timestamp with time zone,
    fin timestamp with time zone,
    creador_id integer NOT NULL,
    estado_id integer NOT NULL,
    responsable_id integer NOT NULL,
    rutina_id integer NOT NULL
);


ALTER TABLE public.mantenimiento_programacion OWNER TO sgimuser;

--
-- Name: mantenimiento_programacion_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE mantenimiento_programacion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenimiento_programacion_id_seq OWNER TO sgimuser;

--
-- Name: mantenimiento_programacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE mantenimiento_programacion_id_seq OWNED BY mantenimiento_programacion.id;


--
-- Name: mantenimiento_programacion_personal; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE mantenimiento_programacion_personal (
    id integer NOT NULL,
    programacion_id integer NOT NULL,
    personal_id integer NOT NULL
);


ALTER TABLE public.mantenimiento_programacion_personal OWNER TO sgimuser;

--
-- Name: mantenimiento_programacion_personal_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE mantenimiento_programacion_personal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenimiento_programacion_personal_id_seq OWNER TO sgimuser;

--
-- Name: mantenimiento_programacion_personal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE mantenimiento_programacion_personal_id_seq OWNED BY mantenimiento_programacion_personal.id;


--
-- Name: mantenimiento_rutina; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE mantenimiento_rutina (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    titulo character varying(100) NOT NULL,
    recomendacion character varying(300) NOT NULL,
    duracion_estimada double precision NOT NULL,
    creador_id integer NOT NULL,
    frecuencia_id integer NOT NULL,
    sistema_id integer NOT NULL
);


ALTER TABLE public.mantenimiento_rutina OWNER TO sgimuser;

--
-- Name: mantenimiento_rutina_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE mantenimiento_rutina_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenimiento_rutina_id_seq OWNER TO sgimuser;

--
-- Name: mantenimiento_rutina_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE mantenimiento_rutina_id_seq OWNED BY mantenimiento_rutina.id;


--
-- Name: mantenimiento_tarea; Type: TABLE; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE TABLE mantenimiento_tarea (
    id integer NOT NULL,
    activo boolean NOT NULL,
    creado timestamp with time zone NOT NULL,
    modificado timestamp with time zone NOT NULL,
    nombre character varying(100) NOT NULL,
    valor_ref character varying(100) NOT NULL,
    creador_id integer NOT NULL,
    rutina_id integer NOT NULL
);


ALTER TABLE public.mantenimiento_tarea OWNER TO sgimuser;

--
-- Name: mantenimiento_tarea_id_seq; Type: SEQUENCE; Schema: public; Owner: sgimuser
--

CREATE SEQUENCE mantenimiento_tarea_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mantenimiento_tarea_id_seq OWNER TO sgimuser;

--
-- Name: mantenimiento_tarea_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sgimuser
--

ALTER SEQUENCE mantenimiento_tarea_id_seq OWNED BY mantenimiento_tarea.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


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

ALTER TABLE ONLY cuentas_usuario ALTER COLUMN id SET DEFAULT nextval('cuentas_usuario_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY cuentas_usuario_groups ALTER COLUMN id SET DEFAULT nextval('cuentas_usuario_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY cuentas_usuario_user_permissions ALTER COLUMN id SET DEFAULT nextval('cuentas_usuario_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


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

ALTER TABLE ONLY gestion_red_interfaceevent ALTER COLUMN id SET DEFAULT nextval('gestion_red_interfaceevent_id_seq'::regclass);


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

ALTER TABLE ONLY gestion_red_process ALTER COLUMN id SET DEFAULT nextval('gestion_red_process_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_storage ALTER COLUMN id SET DEFAULT nextval('gestion_red_storage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_actividadcambio ALTER COLUMN id SET DEFAULT nextval('incidencias_actividadcambio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_actividadincidencia ALTER COLUMN id SET DEFAULT nextval('incidencias_actividadincidencia_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio ALTER COLUMN id SET DEFAULT nextval('incidencias_cambio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio_dispositivos ALTER COLUMN id SET DEFAULT nextval('incidencias_cambio_dispositivos_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio_servicios ALTER COLUMN id SET DEFAULT nextval('incidencias_cambio_servicios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia ALTER COLUMN id SET DEFAULT nextval('incidencias_incidencia_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia_servicios ALTER COLUMN id SET DEFAULT nextval('incidencias_incidencia_servicios_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_componente ALTER COLUMN id SET DEFAULT nextval('inventario_componente_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_dispositivo ALTER COLUMN id SET DEFAULT nextval('inventario_dispositivo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_servicio ALTER COLUMN id SET DEFAULT nextval('inventario_servicio_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_subsistema ALTER COLUMN id SET DEFAULT nextval('inventario_subsistema_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_boletatrabajo ALTER COLUMN id SET DEFAULT nextval('mantenimiento_boletatrabajo_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion ALTER COLUMN id SET DEFAULT nextval('mantenimiento_programacion_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion_personal ALTER COLUMN id SET DEFAULT nextval('mantenimiento_programacion_personal_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_rutina ALTER COLUMN id SET DEFAULT nextval('mantenimiento_rutina_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_tarea ALTER COLUMN id SET DEFAULT nextval('mantenimiento_tarea_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add usuario	6	add_usuario
17	Can change usuario	6	change_usuario
18	Can delete usuario	6	delete_usuario
19	Can add tipo dispositivo	7	add_tipodispositivo
20	Can change tipo dispositivo	7	change_tipodispositivo
21	Can delete tipo dispositivo	7	delete_tipodispositivo
22	Can add sistema	8	add_sistema
23	Can change sistema	8	change_sistema
24	Can delete sistema	8	delete_sistema
25	Can add edificio	9	add_edificio
26	Can change edificio	9	change_edificio
27	Can delete edificio	9	delete_edificio
28	Can add oficina	10	add_oficina
29	Can change oficina	10	change_oficina
30	Can delete oficina	10	delete_oficina
31	Can add tipo servicio	11	add_tiposervicio
32	Can change tipo servicio	11	change_tiposervicio
33	Can delete tipo servicio	11	delete_tiposervicio
34	Can add tipo componente	12	add_tipocomponente
35	Can change tipo componente	12	change_tipocomponente
36	Can delete tipo componente	12	delete_tipocomponente
37	Can add estado operacional	13	add_estadooperacional
38	Can change estado operacional	13	change_estadooperacional
39	Can delete estado operacional	13	delete_estadooperacional
40	Can add estado mantenimiento	14	add_estadomantenimiento
41	Can change estado mantenimiento	14	change_estadomantenimiento
42	Can delete estado mantenimiento	14	delete_estadomantenimiento
43	Can add estado incidente	15	add_estadoincidente
44	Can change estado incidente	15	change_estadoincidente
45	Can delete estado incidente	15	delete_estadoincidente
46	Can add estado cambio	16	add_estadocambio
47	Can change estado cambio	16	change_estadocambio
48	Can delete estado cambio	16	delete_estadocambio
49	Can add severidad urgencia	17	add_severidadurgencia
50	Can change severidad urgencia	17	change_severidadurgencia
51	Can delete severidad urgencia	17	delete_severidadurgencia
52	Can add medio notificaion	18	add_medionotificaion
53	Can change medio notificaion	18	change_medionotificaion
54	Can delete medio notificaion	18	delete_medionotificaion
55	Can add frecuencia mantto	19	add_frecuenciamantto
56	Can change frecuencia mantto	19	change_frecuenciamantto
57	Can delete frecuencia mantto	19	delete_frecuenciamantto
58	Can add cargo	20	add_cargo
59	Can change cargo	20	change_cargo
60	Can delete cargo	20	delete_cargo
61	Can add tipo incidente	21	add_tipoincidente
62	Can change tipo incidente	21	change_tipoincidente
63	Can delete tipo incidente	21	delete_tipoincidente
64	Can add personal	22	add_personal
65	Can change personal	22	change_personal
66	Can delete personal	22	delete_personal
67	Can add sub sistema	23	add_subsistema
68	Can change sub sistema	23	change_subsistema
69	Can delete sub sistema	23	delete_subsistema
70	Can add dispositivo	24	add_dispositivo
71	Can change dispositivo	24	change_dispositivo
72	Can delete dispositivo	24	delete_dispositivo
73	Can add componente	25	add_componente
74	Can change componente	25	change_componente
75	Can delete componente	25	delete_componente
76	Can add servicio	26	add_servicio
77	Can change servicio	26	change_servicio
78	Can delete servicio	26	delete_servicio
79	Can add incidencia	27	add_incidencia
80	Can change incidencia	27	change_incidencia
81	Can delete incidencia	27	delete_incidencia
82	Can add actividad incidencia	28	add_actividadincidencia
83	Can change actividad incidencia	28	change_actividadincidencia
84	Can delete actividad incidencia	28	delete_actividadincidencia
85	Can add cambio	29	add_cambio
86	Can change cambio	29	change_cambio
87	Can delete cambio	29	delete_cambio
88	Can add actividad cambio	30	add_actividadcambio
89	Can change actividad cambio	30	change_actividadcambio
90	Can delete actividad cambio	30	delete_actividadcambio
91	Can add rutina	31	add_rutina
92	Can change rutina	31	change_rutina
93	Can delete rutina	31	delete_rutina
94	Can add tarea	32	add_tarea
95	Can change tarea	32	change_tarea
96	Can delete tarea	32	delete_tarea
97	Can add programacion	33	add_programacion
98	Can change programacion	33	change_programacion
99	Can delete programacion	33	delete_programacion
100	Puede actualizar el estado de un plan de mantto	33	iniciar_finalizar_mantto
101	Puede cancelar un plan de mantto	33	cancelar_mantto
102	Can add boleta trabajo	34	add_boletatrabajo
103	Can change boleta trabajo	34	change_boletatrabajo
104	Can delete boleta trabajo	34	delete_boletatrabajo
105	Can add host	35	add_host
106	Can change host	35	change_host
107	Can delete host	35	delete_host
108	Can add boot event	36	add_bootevent
109	Can change boot event	36	change_bootevent
110	Can delete boot event	36	delete_bootevent
111	Can add interface event	37	add_interfaceevent
112	Can change interface event	37	change_interfaceevent
113	Can delete interface event	37	delete_interfaceevent
114	Can add general event	38	add_generalevent
115	Can change general event	38	change_generalevent
116	Can delete general event	38	delete_generalevent
117	Can add storage	39	add_storage
118	Can change storage	39	change_storage
119	Can delete storage	39	delete_storage
120	Can add device	40	add_device
121	Can change device	40	change_device
122	Can delete device	40	delete_device
123	Can add load avg history	41	add_loadavghistory
124	Can change load avg history	41	change_loadavghistory
125	Can delete load avg history	41	delete_loadavghistory
126	Can add memory history	42	add_memoryhistory
127	Can change memory history	42	change_memoryhistory
128	Can delete memory history	42	delete_memoryhistory
129	Can add disk history	43	add_diskhistory
130	Can change disk history	43	change_diskhistory
131	Can delete disk history	43	delete_diskhistory
132	Can add process	44	add_process
133	Can change process	44	change_process
134	Can delete process	44	delete_process
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('auth_permission_id_seq', 134, true);


--
-- Data for Name: catalogo_cargo; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_cargo (id, activo, creado, modificado, nombre, empresa, creador_id) FROM stdin;
1	t	2015-05-13 14:36:53.469586-06	2015-05-19 11:26:28.463432-06	Ing. Mantto Radar	EAAI	1
2	t	2015-05-19 11:26:36.647852-06	2015-05-19 11:26:36.647918-06	Controlador Aereo	EAAI	3
\.


--
-- Name: catalogo_cargo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_cargo_id_seq', 2, true);


--
-- Data for Name: catalogo_edificio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_edificio (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:37:51.496642-06	2015-05-13 14:37:51.496716-06	EAAI	1
\.


--
-- Name: catalogo_edificio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_edificio_id_seq', 1, true);


--
-- Data for Name: catalogo_estadocambio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadocambio (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:40:58.796798-06	2015-05-13 14:40:58.796865-06	PENDIENTE	1
\.


--
-- Name: catalogo_estadocambio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadocambio_id_seq', 1, true);


--
-- Data for Name: catalogo_estadoincidente; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadoincidente (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:38:51.476379-06	2015-05-13 14:38:51.476444-06	CERRADO	1
2	t	2015-05-14 16:15:59.44775-06	2015-05-14 16:15:59.447816-06	PENDIENTE	1
3	t	2015-05-14 16:16:11.547469-06	2015-05-14 16:16:11.547537-06	EN SEGUIMIENTO	1
\.


--
-- Name: catalogo_estadoincidente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadoincidente_id_seq', 3, true);


--
-- Data for Name: catalogo_estadomantenimiento; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadomantenimiento (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-14 16:01:02.230474-06	2015-05-14 16:01:02.230542-06	PROGRAMADO	1
2	t	2015-05-14 16:01:58.571973-06	2015-05-14 16:01:58.572091-06	EN PROCESO	1
3	t	2015-05-14 16:02:11.352125-06	2015-05-14 16:02:11.352182-06	RETRAZADO	1
4	t	2015-05-14 16:02:16.864331-06	2015-05-14 16:02:16.864389-06	TERMINADO	1
5	t	2015-05-14 16:02:22.340074-06	2015-05-14 16:02:22.34013-06	CANCELADO	1
\.


--
-- Name: catalogo_estadomantenimiento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadomantenimiento_id_seq', 5, true);


--
-- Data for Name: catalogo_estadooperacional; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_estadooperacional (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:37:42.372985-06	2015-05-13 14:37:42.373053-06	OPERANDO	1
2	t	2015-05-19 14:58:18.853951-06	2015-05-19 14:58:18.854019-06	DETENIDO	3
\.


--
-- Name: catalogo_estadooperacional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_estadooperacional_id_seq', 2, true);


--
-- Data for Name: catalogo_frecuenciamantto; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_frecuenciamantto (id, activo, creado, modificado, nombre, dias, creador_id) FROM stdin;
1	t	2015-05-13 14:47:24.945046-06	2015-05-13 14:47:24.945119-06	QUINCENAL	15	1
2	t	2015-05-13 14:51:01.407559-06	2015-05-13 14:51:01.40763-06	MENSUAL	30	1
\.


--
-- Name: catalogo_frecuenciamantto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_frecuenciamantto_id_seq', 2, true);


--
-- Data for Name: catalogo_medionotificaion; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_medionotificaion (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:36:09.337214-06	2015-05-13 14:36:09.337279-06	TELEFONO	1
2	t	2015-05-13 14:36:17.400495-06	2015-05-13 14:36:17.40057-06	CORREO	1
3	t	2015-05-13 14:36:29.943029-06	2015-05-13 14:36:29.9431-06	EN PERSONA	1
\.


--
-- Name: catalogo_medionotificaion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_medionotificaion_id_seq', 3, true);


--
-- Data for Name: catalogo_oficina; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_oficina (id, activo, creado, modificado, nombre, creador_id, edificio_id) FROM stdin;
1	t	2015-05-13 14:37:59.384023-06	2015-05-13 14:37:59.384139-06	APP	1	1
\.


--
-- Name: catalogo_oficina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_oficina_id_seq', 1, true);


--
-- Data for Name: catalogo_personal; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_personal (id, activo, creado, modificado, nombre_completo, telefono, correo, cargo_id, creador_id) FROM stdin;
3	t	2015-05-14 16:22:58.614781-06	2015-05-19 11:26:59.966201-06	Javier Jymmy "Machete Kills2" Moreira			2	1
2	t	2015-05-14 16:22:22.041258-06	2015-05-19 11:27:05.277788-06	Jymmy Moreira			2	1
1	t	2015-05-13 14:36:55.441425-06	2015-05-19 11:27:45.946717-06	Ivet Navarro			2	1
4	t	2015-05-19 11:27:35.032532-06	2015-05-19 11:53:15.667932-06	Eder Xavier Rojas		edxavier05@gmail.com	1	3
\.


--
-- Name: catalogo_personal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_personal_id_seq', 4, true);


--
-- Data for Name: catalogo_severidadurgencia; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_severidadurgencia (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
2	t	2015-05-13 14:38:42.421294-06	2015-05-13 14:38:42.421379-06	BAJA	1
1	t	2015-05-13 14:38:35.200942-06	2015-05-13 16:17:53.466822-06	MEDIA	1
\.


--
-- Name: catalogo_severidadurgencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_severidadurgencia_id_seq', 2, true);


--
-- Data for Name: catalogo_sistema; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_sistema (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:38:07.388401-06	2015-05-13 14:38:07.388473-06	AIRCON 2100	1
2	t	2015-05-13 14:50:38.014825-06	2015-05-13 14:50:38.014883-06	SDC 2.0	1
\.


--
-- Name: catalogo_sistema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_sistema_id_seq', 2, true);


--
-- Data for Name: catalogo_tipocomponente; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tipocomponente (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-17 06:17:11.918449-06	2015-05-17 06:17:11.918504-06	SENSOR	1
2	t	2015-05-17 06:17:20.730433-06	2015-05-17 06:17:20.730554-06	PUERTO SERIE	1
3	t	2015-05-17 06:17:30.140317-06	2015-05-17 06:17:30.140373-06	MEMORIA RAM	1
\.


--
-- Name: catalogo_tipocomponente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tipocomponente_id_seq', 3, true);


--
-- Data for Name: catalogo_tipodispositivo; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tipodispositivo (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:38:15.441109-06	2015-05-13 14:38:15.441167-06	WORKSTATION	1
2	t	2015-05-17 06:17:38.577055-06	2015-05-17 06:17:38.577119-06	SERVER	1
3	t	2015-05-17 06:17:50.012679-06	2015-05-17 06:17:50.012745-06	IMPRESORA	1
\.


--
-- Name: catalogo_tipodispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tipodispositivo_id_seq', 3, true);


--
-- Data for Name: catalogo_tipoincidente; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tipoincidente (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:37:07.695578-06	2015-05-13 14:37:07.695637-06	Caída del sistema	1
2	t	2015-05-17 06:17:59.285179-06	2015-05-17 06:17:59.285248-06	Fallo de la aplicación	1
3	t	2015-05-17 06:18:07.431993-06	2015-05-17 06:18:07.432065-06	FALLO FRECUENCIA	1
\.


--
-- Name: catalogo_tipoincidente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tipoincidente_id_seq', 3, true);


--
-- Data for Name: catalogo_tiposervicio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY catalogo_tiposervicio (id, activo, creado, modificado, nombre, creador_id) FROM stdin;
1	t	2015-05-13 14:42:19.59271-06	2015-05-13 14:42:19.592777-06	Radio Comunicaciones	1
2	t	2015-05-17 06:18:16.014096-06	2015-05-17 06:18:16.014173-06	Telefonia	1
\.


--
-- Name: catalogo_tiposervicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('catalogo_tiposervicio_id_seq', 2, true);


--
-- Data for Name: cuentas_usuario; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY cuentas_usuario (id, password, last_login, is_superuser, username, firstname, lastname, email, imagen, is_active, is_staff, telefono) FROM stdin;
1	pbkdf2_sha256$15000$UvkOHTrVDws5$5ZAy/PSY4abu2EW3b88NABFi1Lny++aZyeWcO/h6Nyc=	2015-05-29 11:12:07.500467-06	t	edx				cuentas/img/default.png	t	t	
2	pbkdf2_sha256$15000$hlsLfc8S669z$6YBNDYfZfJ4dqQ1vKH8vyVNK+cNjRf0IwNMdNDccqSM=	2015-06-03 06:46:52.488502-06	f	eder				cuentas/img/default.png	t	f	8494-3267
3	pbkdf2_sha256$15000$7ZkmbTjSxkYm$DQcHkraGhoSDewsvGPncH0f/aaQS8ZQ1ZqB9iHj3kfM=	2015-05-17 06:15:50.760335-06	f	bjarquin				cuentas/img/default.png	t	t	8494-3267
\.


--
-- Data for Name: cuentas_usuario_groups; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY cuentas_usuario_groups (id, usuario_id, group_id) FROM stdin;
\.


--
-- Name: cuentas_usuario_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('cuentas_usuario_groups_id_seq', 1, false);


--
-- Name: cuentas_usuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('cuentas_usuario_id_seq', 24, true);


--
-- Data for Name: cuentas_usuario_user_permissions; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY cuentas_usuario_user_permissions (id, usuario_id, permission_id) FROM stdin;
\.


--
-- Name: cuentas_usuario_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('cuentas_usuario_user_permissions_id_seq', 1, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2015-05-13 14:36:09.340607-06	1	TELEFONO	1		18	1
2	2015-05-13 14:36:17.403367-06	2	CORREO	1		18	1
3	2015-05-13 14:36:29.945712-06	3	EN PERSONA	1		18	1
4	2015-05-13 14:36:53.473109-06	1	Controlador Aereo	1		20	1
5	2015-05-13 14:36:55.445408-06	1	Ivet Navarro	1		22	1
6	2015-05-13 14:37:07.698208-06	1	Caída del sistema	1		21	1
7	2015-05-13 14:37:42.37684-06	1	OPERANDO	1		13	1
8	2015-05-13 14:37:51.499765-06	1	EAAI	1		9	1
9	2015-05-13 14:37:59.387177-06	1	APP	1		10	1
10	2015-05-13 14:38:07.390995-06	1	AIRCON 2100	1		8	1
11	2015-05-13 14:38:15.444731-06	1	WORKSTATION	1		7	1
12	2015-05-13 14:38:16.757426-06	1	sdfsdF	1		24	1
13	2015-05-13 14:38:35.20373-06	1	BAJA	1		17	1
14	2015-05-13 14:38:42.424753-06	2	BAJA	1		17	1
15	2015-05-13 14:38:51.47953-06	1	CERRADO	1		15	1
16	2015-05-13 14:38:58.597739-06	1	Inc-1	1		27	1
17	2015-05-13 14:40:01.301235-06	1	SDD1	2	Modificado/a posicion_logica.	24	1
18	2015-05-13 14:40:58.799951-06	1	PENDIENTE	1		16	1
19	2015-05-13 14:41:00.31481-06	1	Base de datos	1		29	1
20	2015-05-13 14:41:35.931702-06	1	Act-1	1		28	1
21	2015-05-13 14:42:19.595897-06	1	Radio Comunicaciones	1		11	1
22	2015-05-13 14:42:27.102486-06	1	118.1	1		26	1
23	2015-05-13 14:47:24.94887-06	1	QUINCENAL	1		19	1
24	2015-05-13 14:48:44.920919-06	1	MANTTO MENSUAL AIRCON	1		31	1
25	2015-05-13 14:50:38.017144-06	2	SDC 2.0	1		8	1
26	2015-05-13 14:51:01.410962-06	2	MENSUAL	1		19	1
27	2015-05-13 14:56:13.627365-06	3	Mantto Mensual SDC	1		31	1
28	2015-05-13 14:58:13.221775-06	1	MEMORIA RAM	1		32	1
29	2015-05-13 16:17:53.46991-06	1	MEDIA	2	Modificado/a nombre.	17	1
30	2015-05-14 16:01:02.257063-06	1	PROGRAMADO	1		14	1
31	2015-05-14 16:01:58.580261-06	2	EN PROCESO	1		14	1
32	2015-05-14 16:02:11.358587-06	3	RETRAZADO	1		14	1
33	2015-05-14 16:02:16.870968-06	4	TERMINADO	1		14	1
34	2015-05-14 16:02:22.34482-06	5	CANCELADO	1		14	1
35	2015-05-14 16:15:59.48685-06	2	PENDIENTE	1		15	1
36	2015-05-14 16:16:11.555972-06	3	EN SEGUIMIENTO	1		15	1
37	2015-05-14 16:22:22.072363-06	2	Jymmy "Machete Kills" Moreira	1		22	1
38	2015-05-14 16:22:58.622119-06	3	Javier Jymmy "Machete Kills2" Moreira	1		22	1
39	2015-05-16 22:36:27.489542-06	5	Inc-5	2	Modificado/a problema, causa, solucion y estado.	27	1
40	2015-05-16 22:36:34.106236-06	2	Inc-2	2	Modificado/a problema, causa, solucion y estado.	27	1
41	2015-05-16 22:43:45.715856-06	4	Inc-4	2	Modificado/a problema, causa, solucion y estado.	27	1
42	2015-05-16 22:47:01.237812-06	4	Inc-4	2	Modificado/a estado.	27	1
43	2015-05-16 22:53:11.935061-06	1	Inc-1	2	Modificado/a estado.	27	1
44	2015-05-16 22:54:46.560306-06	1	Inc-1	2	Modificado/a estado.	27	1
45	2015-05-16 23:07:45.860023-06	2	eder	1		6	1
46	2015-05-16 23:08:20.399637-06	1	Inc-1	2	Modificado/a estado.	27	1
47	2015-05-16 23:09:26.860029-06	1	Inc-1	2	Modificado/a estado.	27	1
48	2015-05-16 23:10:27.973425-06	2	eder	2	Modificado/a user_permissions.	6	1
49	2015-05-16 23:23:35.964797-06	2	eder	2	Modificado/a user_permissions.	6	1
50	2015-05-16 23:23:56.212377-06	1	Inc-1	2	Modificado/a estado.	27	1
51	2015-05-17 06:16:58.07768-06	2	Jymmy Moreira	2	Modificado/a nombre_completo.	22	1
52	2015-05-17 06:17:11.950954-06	1	SENSOR	1		12	1
53	2015-05-17 06:17:20.733547-06	2	PUERTO SERIE	1		12	1
54	2015-05-17 06:17:30.142907-06	3	MEMORIA RAM	1		12	1
55	2015-05-17 06:17:38.602716-06	2	SERVER	1		7	1
56	2015-05-17 06:17:50.015277-06	3	IMPRESORA	1		7	1
57	2015-05-17 06:17:59.298206-06	2	Fallo de la aplicación	1		21	1
58	2015-05-17 06:18:07.435171-06	3	FALLO FRECUENCIA	1		21	1
59	2015-05-17 06:18:16.050539-06	2	Telefonia	1		11	1
60	2015-05-18 18:10:53.328541-06	5	clopez	1		6	1
61	2015-05-18 18:35:58.702917-06	7	evee	1		6	1
62	2015-05-18 18:52:35.114134-06	7	evee	2	No ha cambiado ningún campo.	6	1
95	2015-05-18 18:56:59.636879-06	8	ed	1		6	1
96	2015-05-18 19:02:41.881603-06	8	ed	2	No ha cambiado ningún campo.	6	1
97	2015-05-18 19:03:29.109762-06	9	sara	1		6	1
98	2015-05-18 19:05:15.697334-06	9	sara	2	No ha cambiado ningún campo.	6	1
99	2015-05-18 19:05:28.669753-06	10	dddd	1		6	1
100	2015-05-18 19:25:27.169677-06	10	dddd	2	No ha cambiado ningún campo.	6	1
101	2015-05-18 19:25:42.165001-06	11	eric	1		6	1
102	2015-05-18 19:28:19.54557-06	10	dddd	3		6	1
103	2015-05-18 19:28:19.558878-06	8	ed	3		6	1
104	2015-05-18 19:28:19.56698-06	11	eric	3		6	1
105	2015-05-18 19:28:19.583354-06	7	evee	3		6	1
106	2015-05-18 19:28:19.591538-06	9	sara	3		6	1
107	2015-05-18 19:28:48.881458-06	12	xavier	1		6	1
108	2015-05-18 19:38:07.317825-06	12	xavier	2	No ha cambiado ningún campo.	6	1
109	2015-05-18 19:38:24.737081-06	13	cor	1		6	1
110	2015-05-18 20:01:30.003213-06	13	cor	2	No ha cambiado ningún campo.	6	1
111	2015-05-18 20:01:40.461477-06	14	dfsdg	1		6	1
112	2015-05-18 20:10:31.275826-06	14	dfsdg	2	No ha cambiado ningún campo.	6	1
113	2015-05-18 20:11:12.21131-06	15	ghfghf	1		6	1
114	2015-05-18 20:37:12.311569-06	15	ghfghf	2	No ha cambiado ningún campo.	6	1
115	2015-05-18 20:37:26.526136-06	16	dfgdfg	1		6	1
116	2015-05-18 20:39:21.346327-06	16	dfgdfg	2	No ha cambiado ningún campo.	6	1
117	2015-05-18 20:39:33.109147-06	17	sdafsadf	1		6	1
118	2015-05-18 20:42:51.166984-06	17	sdafsadf	2	No ha cambiado ningún campo.	6	1
119	2015-05-18 20:43:14.774343-06	18	fatima	1		6	1
120	2015-05-18 20:57:48.611781-06	18	fatima	2	No ha cambiado ningún campo.	6	1
121	2015-05-18 20:58:02.014477-06	19	bincer	1		6	1
122	2015-05-18 21:09:14.217542-06	19	bincer	2	No ha cambiado ningún campo.	6	1
123	2015-05-18 21:09:56.347723-06	20	teo	1		6	1
124	2015-05-18 21:12:11.918478-06	20	teo	2	No ha cambiado ningún campo.	6	1
125	2015-05-18 21:12:24.040312-06	21	dssdfs	1		6	1
126	2015-05-18 21:24:06.708046-06	22	xdfdsafsd	1		6	1
127	2015-05-18 21:25:36.03497-06	22	xdfdsafsd	2	No ha cambiado ningún campo.	6	1
128	2015-05-18 21:26:03.69066-06	23	liam	1		6	1
129	2015-05-18 21:32:20.115349-06	23	liam	2	No ha cambiado ningún campo.	6	1
130	2015-05-18 21:32:42.759958-06	24	eveling	1		6	1
131	2015-05-19 11:26:28.466484-06	1	Ing. Mantto Radar	2	Modificado/a nombre.	20	3
132	2015-05-19 11:26:36.659918-06	2	Controlador Aereo	1		20	3
133	2015-05-19 11:26:59.982849-06	3	Javier Jymmy "Machete Kills2" Moreira	2	Modificado/a cargo.	22	3
134	2015-05-19 11:27:05.281477-06	2	Jymmy Moreira	2	Modificado/a cargo.	22	3
135	2015-05-19 11:27:10.675047-06	1	Ivet Navarro	2	No ha cambiado ningún campo.	22	3
136	2015-05-19 11:27:35.039184-06	4	Eder Xavier Rojas	1		22	3
137	2015-05-19 11:27:45.949598-06	1	Ivet Navarro	2	Modificado/a cargo.	22	3
138	2015-05-19 11:51:51.320435-06	4	Eder Xavier Rojas	2	Modificado/a activo.	22	3
139	2015-05-19 11:53:11.220947-06	4	Eder Xavier Rojas	2	Modificado/a correo.	22	3
140	2015-05-19 11:53:15.671176-06	4	Eder Xavier Rojas	2	Modificado/a activo.	22	3
141	2015-05-19 11:58:53.606004-06	2	Inc-2	2	Modificado/a activo.	27	3
142	2015-05-19 11:59:01.096138-06	3	Inc-3	2	Modificado/a activo, problema, causa y solucion.	27	3
143	2015-05-19 11:59:05.595481-06	4	Inc-4	2	Modificado/a activo.	27	3
144	2015-05-19 11:59:09.804217-06	5	Inc-5	2	Modificado/a activo.	27	3
145	2015-05-19 11:59:13.904425-06	6	Inc-6	2	Modificado/a activo, problema, causa y solucion.	27	3
146	2015-05-19 12:00:34.030484-06	2	SDD2	2	Modificado/a activo.	24	3
147	2015-05-19 12:02:18.975718-06	1	Boleta 1	2	Modificado/a activo.	34	3
148	2015-05-19 12:09:10.732203-06	1	SDD1	2	No ha cambiado ningún campo.	24	3
149	2015-05-19 12:20:50.7661-06	3	CMD1	2	Modificado/a activo.	24	3
150	2015-05-19 12:24:01.231299-06	2	121.5	2	Modificado/a activo.	26	3
151	2015-05-19 12:24:54.535173-06	3	VSAT	2	No ha cambiado ningún campo.	26	3
152	2015-05-19 12:27:23.439739-06	9	Orden 9	2	Modificado/a activo.	33	3
153	2015-05-19 12:27:32.506747-06	8	Orden 8	2	Modificado/a activo.	33	3
154	2015-05-19 12:27:37.330377-06	7	Orden 7	2	Modificado/a activo.	33	3
155	2015-05-19 12:27:41.623321-06	7	Orden 7	2	No ha cambiado ningún campo.	33	3
156	2015-05-19 12:27:45.276686-06	7	Orden 7	2	No ha cambiado ningún campo.	33	3
157	2015-05-19 12:27:50.32215-06	6	Orden 6	2	Modificado/a activo.	33	3
158	2015-05-19 12:27:56.118828-06	5	Orden 5	2	Modificado/a activo.	33	3
159	2015-05-19 12:28:04.570894-06	4	Orden 4	2	Modificado/a activo.	33	3
160	2015-05-19 12:28:11.24233-06	3	Orden 3	2	Modificado/a activo.	33	3
161	2015-05-19 12:28:15.174659-06	2	Orden 2	2	Modificado/a activo.	33	3
162	2015-05-19 12:28:18.755479-06	1	Orden 1	2	Modificado/a activo.	33	3
163	2015-05-19 13:21:21.106718-06	9	Inc-9	2	Modificado/a activo, problema, causa y solucion.	27	3
164	2015-05-19 13:21:25.600863-06	8	Inc-8	2	Modificado/a activo, problema, causa y solucion.	27	3
165	2015-05-19 14:15:57.112338-06	9	Inc-9	2	Modificado/a estado.	27	3
166	2015-05-19 14:17:25.087251-06	9	Inc-9	2	Modificado/a estado.	27	3
167	2015-05-19 14:18:22.330745-06	10	Inc-10	2	Modificado/a problema, causa, solucion y estado.	27	3
168	2015-05-19 14:19:18.725872-06	10	Inc-10	2	Modificado/a estado.	27	3
169	2015-05-19 14:25:23.427509-06	10	Inc-10	2	Modificado/a estado.	27	3
170	2015-05-19 14:26:29.146809-06	10	Inc-10	2	Modificado/a estado.	27	3
171	2015-05-19 14:27:04.760021-06	10	Inc-10	2	Modificado/a estado.	27	3
172	2015-05-19 14:29:49.88841-06	10	Inc-10	2	Modificado/a estado.	27	3
173	2015-05-19 14:29:58.859506-06	10	Inc-10	2	No ha cambiado ningún campo.	27	3
174	2015-05-19 14:32:17.709903-06	10	Inc-10	2	Modificado/a estado.	27	3
175	2015-05-19 14:36:38.867796-06	9	Inc-9	2	Modificado/a estado.	27	3
176	2015-05-19 14:46:17.666536-06	10	Inc-10	2	Modificado/a solucion.	27	3
177	2015-05-19 14:47:44.550865-06	4	Inc-4	2	Modificado/a solucion.	27	3
178	2015-05-19 14:48:03.505951-06	10	Inc-10	2	Modificado/a estado.	27	3
179	2015-05-19 14:58:18.91099-06	2	DETENIDO	1		13	3
180	2015-05-19 15:21:16.760286-06	3	Orden 3	2	Modificado/a estado.	33	3
181	2015-05-19 15:22:00.988093-06	3	Orden 3	2	Modificado/a estado.	33	3
182	2015-05-19 15:30:15.684053-06	3	Orden 3	2	Modificado/a estado.	33	3
183	2015-05-19 15:32:46.687206-06	3	Orden 3	2	Modificado/a estado.	33	3
184	2015-05-19 15:38:00.661607-06	19	bincer	3		6	3
185	2015-05-19 15:38:00.677223-06	5	clopez	3		6	3
186	2015-05-19 15:38:00.686064-06	13	cor	3		6	3
187	2015-05-19 15:38:00.694402-06	16	dfgdfg	3		6	3
188	2015-05-19 15:38:00.702912-06	14	dfsdg	3		6	3
189	2015-05-19 15:38:00.711049-06	21	dssdfs	3		6	3
190	2015-05-19 15:38:00.719355-06	24	eveling	3		6	3
191	2015-05-19 15:38:00.72743-06	18	fatima	3		6	3
192	2015-05-19 15:38:00.735779-06	4	gaby	3		6	3
193	2015-05-19 15:38:00.744269-06	15	ghfghf	3		6	3
194	2015-05-19 15:38:00.75274-06	23	liam	3		6	3
195	2015-05-19 15:38:00.761048-06	17	sdafsadf	3		6	3
196	2015-05-19 15:38:00.769405-06	20	teo	3		6	3
197	2015-05-19 15:38:00.777412-06	12	xavier	3		6	3
198	2015-05-19 15:38:00.785759-06	22	xdfdsafsd	3		6	3
199	2015-05-21 17:11:48.599118-06	3	bjarquin	2	Modificado/a telefono y is_superuser.	6	3
200	2015-05-21 18:32:12.697859-06	14	Inc-14	2	Modificado/a problema, causa, solucion y estado.	27	1
201	2015-05-25 12:14:34.734114-06	1	10.160.80.22	2	Modificado/a alarma_procesos.	35	1
202	2015-05-25 14:04:15.072902-06	1	10.160.80.22	2	Modificado/a nombre, ubicacion, uptime, servicios y procesos.	35	1
203	2015-05-25 14:08:55.623133-06	1	10.160.80.22	2	Modificado/a descripcion.	35	1
204	2015-05-26 15:36:33.426078-06	25	coldStart	2	Modificado/a leido.	36	1
205	2015-05-26 16:02:54.97797-06	65	snmptrapd process table	2	Modificado/a leido.	38	1
206	2015-05-26 16:02:59.873624-06	59	snmptrapd process table	2	Modificado/a leido.	38	1
207	2015-05-26 16:04:24.971072-06	42	linkUp	2	Modificado/a leido.	37	1
208	2015-05-26 16:04:29.357458-06	38	linkUp	2	Modificado/a leido.	37	1
209	2015-05-26 16:06:42.843078-06	1	10.160.80.22	2	No ha cambiado ningún campo.	35	1
210	2015-05-26 17:22:10.133163-06	1	10.160.80.22	2	Modificado/a alarma_procesos y alarma_procesador.	35	1
211	2015-05-26 17:37:35.457236-06	1	10.160.80.22	2	Modificado/a uptime y alarma_procesos.	35	1
212	2015-05-26 17:42:23.239345-06	1	10.160.80.22	2	Modificado/a alarma_procesos.	35	1
213	2015-05-26 17:52:27.437179-06	1	10.160.80.22	2	Modificado/a alarma_procesos.	35	1
214	2015-05-26 18:24:11.355285-06	1	10.160.80.22	2	Modificado/a alarma_procesador.	35	1
215	2015-05-26 18:24:35.516133-06	1	10.160.80.22	2	Modificado/a alarma_discos.	35	1
216	2015-05-29 12:15:45.639165-06	4	10.160.80.2	1		35	1
217	2015-05-29 12:23:30.663737-06	5	10.160.80.3	1		35	1
218	2015-05-29 12:23:32.084231-06	5	10.160.80.3	2	No ha cambiado ningún campo.	35	1
219	2015-05-29 12:23:35.976144-06	6	10.160.80.4	1		35	1
220	2015-05-29 12:23:39.769195-06	7	10.160.80.5	1		35	1
221	2015-05-29 12:23:43.720627-06	8	10.160.80.6	1		35	1
222	2015-05-29 12:23:47.450272-06	9	10.160.80.7	1		35	1
223	2015-05-29 12:23:52.861081-06	10	10.160.80.8	1		35	1
224	2015-05-29 12:23:57.160614-06	11	10.160.80.9	1		35	1
225	2015-05-29 12:24:02.768077-06	12	10.160.80.10	1		35	1
226	2015-05-29 12:24:06.535935-06	13	10.160.80.11	1		35	1
227	2015-05-29 12:24:13.318866-06	14	10.160.80.12	1		35	1
228	2015-05-29 12:24:17.283301-06	15	10.160.80.13	1		35	1
229	2015-05-31 15:49:53.834885-06	27	10.160.80.25	2	Modificado/a uptime.	35	1
230	2015-06-01 23:10:07.069835-06	1	10.160.80.22	2	Modificado/a alarma_discos.	35	1
231	2015-06-02 02:49:24.798462-06	1	10.160.80.1	1		35	1
232	2015-06-02 03:03:10.477221-06	156	Process object	2	Modificado/a flag.	44	1
233	2015-06-02 03:03:29.361614-06	157	Process object	2	Modificado/a flag.	44	1
234	2015-06-02 03:03:38.015021-06	13	10.160.80.192	2	Modificado/a alarma_procesos.	35	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 234, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	content type	contenttypes	contenttype
5	session	sessions	session
6	usuario	cuentas	usuario
7	tipo dispositivo	catalogo	tipodispositivo
8	sistema	catalogo	sistema
9	edificio	catalogo	edificio
10	oficina	catalogo	oficina
11	tipo servicio	catalogo	tiposervicio
12	tipo componente	catalogo	tipocomponente
13	estado operacional	catalogo	estadooperacional
14	estado mantenimiento	catalogo	estadomantenimiento
15	estado incidente	catalogo	estadoincidente
16	estado cambio	catalogo	estadocambio
17	severidad urgencia	catalogo	severidadurgencia
18	medio notificaion	catalogo	medionotificaion
19	frecuencia mantto	catalogo	frecuenciamantto
20	cargo	catalogo	cargo
21	tipo incidente	catalogo	tipoincidente
22	personal	catalogo	personal
23	sub sistema	inventario	subsistema
24	dispositivo	inventario	dispositivo
25	componente	inventario	componente
26	servicio	inventario	servicio
27	incidencia	incidencias	incidencia
28	actividad incidencia	incidencias	actividadincidencia
29	cambio	incidencias	cambio
30	actividad cambio	incidencias	actividadcambio
31	rutina	mantenimiento	rutina
32	tarea	mantenimiento	tarea
33	programacion	mantenimiento	programacion
34	boleta trabajo	mantenimiento	boletatrabajo
35	host	gestion_red	host
36	boot event	gestion_red	bootevent
37	interface event	gestion_red	interfaceevent
38	general event	gestion_red	generalevent
39	storage	gestion_red	storage
40	device	gestion_red	device
41	load avg history	gestion_red	loadavghistory
42	memory history	gestion_red	memoryhistory
43	disk history	gestion_red	diskhistory
44	process	gestion_red	process
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('django_content_type_id_seq', 44, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-05-13 14:28:28.870494-06
2	auth	0001_initial	2015-05-13 14:28:29.359838-06
3	cuentas	0001_initial	2015-05-13 14:28:29.843646-06
4	admin	0001_initial	2015-05-13 14:28:30.068709-06
5	catalogo	0001_initial	2015-05-13 14:28:32.454679-06
6	inventario	0001_initial	2015-05-13 14:28:34.469813-06
7	incidencias	0001_initial	2015-05-13 14:28:37.095209-06
8	mantenimiento	0001_initial	2015-05-13 14:28:39.054472-06
9	sessions	0001_initial	2015-05-13 14:28:39.224168-06
10	catalogo	0002_auto_20150519_1152	2015-05-19 11:52:54.191026-06
11	mantenimiento	0002_auto_20150519_1152	2015-05-19 11:52:54.755454-06
12	inventario	0002_auto_20150519_1219	2015-05-19 12:19:27.79585-06
25	gestion_red	0001_initial	2015-06-02 02:43:12.070918-06
26	gestion_red	0002_storage_percent_used	2015-06-02 04:06:02.20819-06
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('django_migrations_id_seq', 26, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
1m0ngbfobksd3urj41hgnzndms3h2qhp	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 16:50:47.041302-06
pb8j9tvxbs5vbxporykhyfwfxxbe1q1d	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-14 15:18:53.040213-06
e36n3dp0gue2okyg9qh5hnp9btj9gap4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 16:53:19.18732-06
kufuxmtmf1869se6n6o52ef5q1o7pice	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-14 15:22:14.985366-06
tab0f5oanzhkxqm0l7apj7103w2rk92j	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:03:03.665584-06
6urxhxb4yhmtxdwgczcop5ljqq4z3ehg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:07:51.821555-06
d98585ap1nji3nbcwjrnrburh3jj96xl	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:10:00.561106-06
ps3n1wtzvbz229defhalh0gf8b7m11tt	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:16:10.318953-06
iuwhel6f70424d7eflhl697f7z3gb7d1	NGI0MmJmZTg1MGMyNDVmYTg1M2JkY2YyYTE0YmZlMzk5Nzg2ZjlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxNTA2MWMzYTAxMDM5YzVkZDhlNzlhMjU1OGYyMDNlZDBjYThhMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-05-30 23:09:18.704671-06
9cwj24wfux8cx6u011q2ogk41vby4efu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:20:16.846442-06
2k44fod1oout0x7jgx3o6ig6uc4j3cc9	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:21:03.783949-06
otr3wqxkgua6d665s2v2py9wsagbplhm	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:25:03.812292-06
1d7y0x04yd1ud5p1iokumptba9p5i7pq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:29:21.190283-06
x71yy3s5uh0jazedazi1awglfvl660oo	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:31:47.453135-06
h9c4h4dvgumv04hpxmg8oqgs0r2s4nfo	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 17:59:06.408383-06
sqbxy9jt3d4jyueo89bk6s3mlyh8ge28	NGI0MmJmZTg1MGMyNDVmYTg1M2JkY2YyYTE0YmZlMzk5Nzg2ZjlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxNTA2MWMzYTAxMDM5YzVkZDhlNzlhMjU1OGYyMDNlZDBjYThhMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-06-11 18:01:22.012804-06
h6ng9ujmde8grgfrkp8bc4hziz8e241a	NGI0MmJmZTg1MGMyNDVmYTg1M2JkY2YyYTE0YmZlMzk5Nzg2ZjlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxNTA2MWMzYTAxMDM5YzVkZDhlNzlhMjU1OGYyMDNlZDBjYThhMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-06-11 18:50:16.595956-06
1a5oh4sc38omelxnrv4cy9i6panw3mjh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 19:00:44.894855-06
60nxi0m61e2zswikeuqweukhksq4h6e3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 19:59:30.981721-06
tuhbbn13ckn5jf4x3jtvvgijh58oll6j	NGI0MmJmZTg1MGMyNDVmYTg1M2JkY2YyYTE0YmZlMzk5Nzg2ZjlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxNTA2MWMzYTAxMDM5YzVkZDhlNzlhMjU1OGYyMDNlZDBjYThhMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-06-04 14:12:06.721973-06
fubz9alb12rm4efh5e433y65nc27e3hz	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-11 16:12:56.098433-06
nvp2hxurbdg06kz4al4cqg5kdij14afq	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-11 16:13:40.988868-06
23xse6qtcbxfj1zp1fdki83w1pjmipjz	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-11 16:14:34.915354-06
y4avdhvb72x9egtp53haex988pal7jut	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-11 16:16:33.740282-06
yhcpx2bkno8vnvoqa2zzfor8y0z0fvxo	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 16:37:43.782923-06
3waqq91huzkmwrc2imlp17zwl7rn91tk	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 16:39:49.501101-06
l7j1ibuwg92u306i54k5g8mc78fwtrjh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 16:42:50.919463-06
aomvczsx6segqd85wgqktiif0c9lohic	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-11 16:44:14.459126-06
oheayb5gqgmlqeos0yo6wx9tokar0aqe	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-11 16:44:18.220717-06
3gkt2dhuwun11puq3nh58h0xefuxb0zc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-11 20:01:33.048237-06
r5b8626yjof25nb61joo6som0ajarcty	NGI0MmJmZTg1MGMyNDVmYTg1M2JkY2YyYTE0YmZlMzk5Nzg2ZjlkMTp7Il9hdXRoX3VzZXJfaGFzaCI6IjAxNTA2MWMzYTAxMDM5YzVkZDhlNzlhMjU1OGYyMDNlZDBjYThhMjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9	2015-06-12 11:12:07.543527-06
d2uwa66abbzlqbc5z5ros9gcsa57rrwe	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-12 12:17:43.3672-06
8n012kzso7uoq4amseo3ohydk418r5qz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-12 12:24:21.709264-06
ji26wqxy0xyvjof4gz02fqhbzw72ty89	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:26:13.527819-06
7qv6j23pmsdgx1d85ood2uqavt7zf8tk	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:28:44.099332-06
9dad61gjenkvw8oaas8xll7s18qwapl3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:30:19.256311-06
23qwcpv475p0g70e6wmwcx7zqipoyzz3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:31:56.117346-06
nzswfkr1975yn1764yre2ruuzmupyfb3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:32:02.042806-06
g44ugo6mb3zqt7o09b9pvwu0im4ocpub	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:32:57.349955-06
7ynx6cujyhxl5eghmdd8szjq4nbd2tmd	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:34:34.928379-06
uqvc4mtrwmzj4mf30d4f74e9h77dman3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:40:11.244672-06
2c88tqyl3ur3ivlparszhnopi9gdxblf	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:41:23.5101-06
nfx6nfhab6oiyoydqvdmawbbjh2q545c	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:42:25.799605-06
ecbnu27oib7w8eofyouriil3as43oban	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:43:05.190156-06
qjvd3j4xgjcx6pnb4zw2u2uirl52xmpb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:43:39.738316-06
8qjhj5uqk531ujy4515w57tgbi8jtrxj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:44:16.516989-06
8k9kr8lb2mu82r2h0wv8mgs39csu9jhz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:44:50.923398-06
zjgrebzt62sqlhzoov1h5k1ulhe3be4h	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:45:42.536382-06
o0fjf1wrheia753qwt9f7zxu49n8uzab	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 14:48:04.940612-06
8dt0qjfldh0tdmc3kskf7r5vk1om5lrd	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-14 14:58:30.959529-06
pia8xd04fpzsayvrrexscpdeeifa3iz0	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-14 15:00:56.756046-06
5z3ykv569slkepg56q8ahlo0ptn4mltd	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-14 15:03:35.798732-06
hyogvs4yuzlbldlq1n2mghkeefa89maa	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:06:39.546324-06
ug2csdp9zoul40s9w1dis3qchbruvgjm	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-14 15:12:58.365609-06
q25dtvxv2figlyfpwxoxvnar59lyzuyp	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:12:59.929046-06
c5r61hcgosms7w730uk8wzdsrs97npnp	ODI3MTBhODc1MzIxNmNjYzAzNjY5OWE2MDI1N2M0ZWJiYzA3NjM5Yjp7fQ==	2015-06-14 15:15:19.968344-06
20zgmrk61wsw43krc1b8jc5xiwbitagz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:15:22.77222-06
4i0lgvx3lkqr89pd9e2owmq4v6cv77h5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:18:54.571695-06
2kbm9o8qumh3psjygjb3ornjbx0mda98	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:22:16.190978-06
uf0hfow5bg59rw3utebn3v3fo7aee8op	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:23:16.275147-06
r0z8j1c8ai99qzkbtk727iigr3z65afk	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:23:54.242822-06
o0hvn7nsm87rqmlgsiheg6p4ae4dmouv	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:29:11.481499-06
46o336zdemd80j0qkp4k5s6quuug6s8a	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:44:34.911371-06
ts3pk562j2t5mq05h27tj74v51ftun58	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:45:33.830663-06
mfisoth3rozk8rkzcpn4s2wk0z9elfwv	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:48:00.758644-06
co31v5dfxdqtzl90c827sct24h3643jh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:50:05.411528-06
nurhhutiuxlv68f2qvt9bqltqaqph8c3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 15:56:40.59048-06
c21j67y3ljkct21l26zuriorxfijid2e	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:19:05.822615-06
h6rwsfi9ggpsc5nk1ykee6p084gdipzp	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:26:48.049495-06
23a7byu6rcz6cbitwp2eq3jlr1yiqxv1	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:28:47.786149-06
awkcf2c15f17dy5zci2f3iv2ikvq0wof	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:30:53.421019-06
cjsntp3e0h34iybcg3ee2q67j2w42xd0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:32:57.991667-06
yoquibe4qe6yvutu8caasgu1h0i2lufr	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:33:06.361195-06
e4b6stjyoxrxgc2s72h08t7ehrh23uvb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:33:57.043565-06
p7keno86c9wivp6h91rqbuvankr7ezp4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:34:38.199077-06
8ftsbnavuzgzjipzu1gbokkg8k7e43ln	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:38:18.632461-06
yj854i0w0tmo5wkf2c1kqemdqegw4pwb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:42:19.111265-06
0plmhzm8c03i63mzpj5kvsfm367ef9vx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:43:26.649957-06
pccz6137gegw03io82mja7e0xbaotp1p	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:45:14.820658-06
r9y43xg6jxy0guvvsl9gqilqi43y5c8j	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:45:19.654845-06
2kq9fmttbjm2fzq3izx83zl3uaax1frj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:46:05.927152-06
lmsn0z0e5233nqvh9fapexa4k7mgaewf	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:47:41.26553-06
hf50cqonupj3o5nc5vfe6zkj40i986eg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:03:56.829038-06
5qyoi6w30sc5icstxacc805jdl94nqp6	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:14.477459-06
exou6v9aa98qx9j88gwkhfat2ory60pp	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:51:49.436841-06
4uvdm7c2r5kjj6ydyq81ffz5r19euo9r	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:10:52.262856-06
mp07yofz3tpptto3bgsfo7ymr67ut0ug	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:15:56.585357-06
f40hx5jwyz13zgp3oosikhn5fes1u2un	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:05:42.050988-06
i2qb8abbao1xo53igftexecg637ddglb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:37:52.678469-06
cz55iq65awkujjgaslogsc0zos3ovisa	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:49:29.660545-06
l3gkdag6bd0mfu6atgabfln9zwx21s81	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:49:03.167532-06
wblnen5q4la911ni9er1emi0z6k7sdrf	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:04:01.131945-06
zgtcd9trnydg5cca40ijtbg8og9fsayi	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:11:37.604046-06
w7p00v383c9l2rvz6rjefng2jj1k8i0g	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:15.018421-06
mg7h9u4rz3i7hrcinkdzlebni2xaw3qi	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:39:45.016506-06
5ojlqrmltk20wugamynnzagsr0cnbckq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:01:17.778274-06
niynb2znno8rbiz52zljevjyuzp80rul	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:16:06.768907-06
ohtzo8efplpxdrmvhi0aff8x46fgi596	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:16:25.719887-06
59k9fep24u9kq2iyitelf6ez0nwm934m	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:50:42.8177-06
w48utq0bpp5ckk97dq6ysw8g5y4ke046	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:49:32.148232-06
2kd17tsgepoamcypmvw7qgg11yrrze3v	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:04:21.267083-06
zsvw3mvm8q9adfh1d1zgt2rs7lbpg6nb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:11:53.471008-06
b9d45yly1du2w4qtpwq5wegivu1or2rc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:15.475939-06
lk7lqvh9fxqa1a87yw2mw8kx1kej603r	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:40:31.77123-06
a1juxthjwniw0lmuyd8jfq9jdmz4gzuz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:02:01.829683-06
xs8j894js5bacs1hbyl238yiiklczuoe	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:20:04.534892-06
1hnsrh6nbmi42xlfvf42xixydsv837qf	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:16:42.029579-06
2q0q0l6ifwjg5ve4twoec30d5mnkf8w1	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:52:13.047407-06
v8e6s7uju7tkxo5c4i37doj8yyucmzkz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:49:53.257746-06
z40ahcsrji94931ve5mqm0f3o1jp5727	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:06:01.507873-06
9x7g41rmfc5ym7spv36cqn25vh5fne7f	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:13:10.197204-06
y58fvuzws6udo68i5fgdogch1daz49g8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:15.925224-06
lqlhwnfhmywf0os9ihlkwestb9s52qmu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:40:57.4499-06
u2me1tlfx330ozgn4dmx7bavl28z5hln	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:03:19.212852-06
v9vcfhedx3w06bt3zyk5j28nqacauz0d	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:20:57.689149-06
geqlqpffnmi0cb681vd3z0s39rzu0xob	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:17:11.691937-06
h89z7xd0vidsxhkf5qto6fbw7x35nk21	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:53:29.583426-06
njfs9rzmuopfdfzmyqkhfps2foket9ur	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:52:16.483669-06
ccj2c1eds5irmstogoz8wxonqsxholbf	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:07:57.157502-06
7dejlqdf7u5s3cmntdjboqxngci3ub81	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:14:31.399841-06
4px30cvtgcaway2o96ayppexh5uqytnh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:16.41605-06
mk60setlk6kgjx80cq9z1eeeh4sdtktb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:41:45.876162-06
vfqaiydd3cscs0m9i69i8ugo59fbog85	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:08:45.895295-06
jz6ypejbs0nb8ojx39kj5m0mioj00s2s	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:21:26.727689-06
yj79g0tuabpqn3cr8fjvfihav54fkjtk	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:18:17.784846-06
w7vc0oefbt70wyzirn8i2x07ahi6bwid	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:54:35.716583-06
95dd0fzyz2qhzidfe8ij1ouua5j7a355	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 23:33:41.74836-06
9mttjroogd0cmsgjooncze0ukf3u1ts3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:55:39.181806-06
8sy5rmbimbs0xwrafuwc394wu2ozqjdk	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:14:49.018774-06
gyiqflxzdz4s14t2cmf2x8vllui34ozq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:15:09.250966-06
ioavvxl6e8g6q4gadtwvbyrdtkkggtgr	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:16.907103-06
yljbe8ecye3hpuoxs3m3co2lallwjtk7	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:41:58.740114-06
kxrcwxcub3nlnil23kj44kf49w52x6zx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:21:40.257437-06
y9csf5hxpladxu5wemrefanf998z3zqq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:18:34.04363-06
ph6dcqa1wso034lp6roa3yuioi41r4l9	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:58:09.910784-06
14cs3gfy1ii0ljcgejica6iipssieotg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 23:36:04.948683-06
3jb5pnoius2mfx7fp9odxwfqaqbsh8fj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:56:06.92303-06
c0yd8cp9jfw818er4muxa5zeg86py8ez	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:15:56.24291-06
9llmz7gkinekpyjebm63gl2br8cfixpm	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:16:47.368895-06
ndsbk1hw4hbngdzja5zcpwphrttj24rv	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:17.389923-06
v0vdcsrrubsyd79hpn1wf79osos3mcry	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:43:43.498484-06
22ejw26nln4b1crrxk5fwpwteqmktznb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:23:13.409468-06
c4hscdsm2snh3a5s0paw62nk6cm4up3d	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:19:56.602513-06
jbctdcui884vp0ibni7xolh79nbd9yrg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 03:00:53.300532-06
gw5bm4f9ctfwtnp7jicclvstmoqpj5no	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 23:39:36.962296-06
koluwp2jiuqqd7nr371luy2r2hjqgzs4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:57:06.008852-06
4gufnwxz7ng8r53he7sonxo9h1wqn0h6	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:16:33.685246-06
lyxbx23p2xyncxpqlryv1dju24y8upw3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:17:19.004276-06
c4zlly17k8ikmv2mpeb8tskbvnao5v4d	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:17.872577-06
xu5lg9g13bsu64u87ptkczm03w1g807n	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:45:11.724019-06
28ibeuol2gyql9drygrwm9f7dcjl8yl9	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:24:48.208034-06
ma2b7r5ly5ch0zxn98w7tr83iffpg9cx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:20:24.285821-06
g2n9mz3htdqkoeubwr3z3i3g3pj3s4zc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 03:03:50.043634-06
24eps5x1yk1sanw0ahh2ymfpzqubcjmq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 23:48:38.227771-06
nacjzhrf65ttzrwzj2l8m3p6g60d5dry	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:58:46.830316-06
brajm7q0220dum04wc231qp91vhrcpq9	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:20:31.759841-06
79epeu87qea9ravcoru0m5mvxsyfswgy	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:19:42.712039-06
ofy7o9vr54sa0q1zuga4e1nvq36uos2p	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:18.538925-06
013cs54mdaetjr05nbo2y521vphpwfu7	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:46:19.287981-06
mmb7hxyhgwtjendr15g6bozm8les4vc1	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:26:00.190753-06
13anwruvbn9mkw267gysfnd2lwba2iag	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:22:06.663555-06
opvcecar4pcp0g3mdmtxccv6psw4ze7m	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 03:09:51.66439-06
efz83wb7prts1d2to92ng8i6ogg1vtqh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:00:08.11902-06
skqvpb102ozle29ndx9cb5j4shha95tv	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 16:59:04.021213-06
1eev174mkrzh64d076o3itsd1kwo9yhy	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:23:18.615271-06
fgahgyzbnoiipwjs4oel02cnk0jsz4lb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:20:03.930844-06
0orqhujor1hnqfd387504b8j7daxninj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:19.062609-06
cic031gtn7z1lgv7nnykiqmsa6601xy1	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:47:11.351786-06
52daj76h711eqh16u3fh1ruf5kp1twks	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:27:48.243854-06
95oq45bbiktpucwiizbl806cwhoh4i47	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:27:11.046111-06
32j586zn1lzkfhzh5h7l486lw8zeo6qb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 03:13:04.732189-06
m3anbxioiytk3oh7n7mpb44q2jsrwtn0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:00:28.654643-06
nhufuhnwvpun2ci8dyza1lm62iiv2tfx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:00:10.197567-06
is5qzkltt1qa78gjcloc8l8f8h3kb479	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:23:43.070395-06
mhbw8bnx3xx1lg40t8nyk8v1hyg1ads3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:20:38.720052-06
rxrn3j12fo2vq9kt8x1svmcytc5rf9s6	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:19.536909-06
090d6o1glcu4dpm6s2802vfvh4b8p9gg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:47:33.051539-06
1got0knufto7i2wcfrotymt54ck2t1ln	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:30:14.01584-06
z8mw88kcfu8gjx40nf1to6ucsdcw7efj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:29:44.350727-06
v6epg060n0a57dzs3gubh9gn7rtyufbi	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 03:15:49.559645-06
xxo15uhob3xhjh6s7r9hxomz119k0v8v	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:00:41.510474-06
o3g7hr6hh42qeg8rq7vy8qv1du46j2f9	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:00:14.50796-06
ddkee202ze0sce6ulb2cucqcsr0e3q7x	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:29:25.536534-06
3nbz71k8kiunfhc7wobpwhzc4o4rhkmu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:21:10.521301-06
aptl5jgr0xev8a0p4b411nojq5zwc2ro	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:20.036226-06
n7dxykla1o8ntmwbqbm1fkpafmsi1kw4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:47:53.80379-06
snvpqvtchizpbefm2pze1fmqn21kun4a	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:31:21.306058-06
jv9lx14q20apflre7p91z2yh4yiwoild	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:30:14.721274-06
54lawjkkfa2vz17ym8y5csrxk2rqe7rv	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 03:17:45.942708-06
z93ew6jvujgxgqeg5zpvc4lnvlqqbvln	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:01:27.889655-06
sgli5myso6etml3921in3udxgtchqzgi	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:02:34.429117-06
dz0fjpevwbf7s3uv02qwf3rs59ng0s0q	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:29:29.622248-06
55li4kmgyyom7jeyrdyxpvkmo4b07rg5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:21:31.831405-06
ugszikihfm0w0f1grsqrcofokn80frz5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:20.518387-06
ojcesj8utkrk8r1imq0vxtddnoy3p211	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:48:50.926498-06
6qmbqmn2dbi8wqtobqhysuxmusax6x2o	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:31:47.974831-06
1isu46actkafoyyvolg857tmbsz99t19	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 23:05:44.486852-06
5j8meissftunv5gcr6qwgi0c91mhcn5a	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 03:18:50.553966-06
pmw13s9zcawzlky63juh74z4lxbjg9c4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:03:21.21813-06
54o2mig8wuh8jwt247jovadypp8cbiuq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:16:08.42382-06
p5ulc6kkzkv5a49gkroq1abbuln6c2d3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:31:21.237046-06
nvbebin5d6t7iv7ic4l8p0tk64rlhl0j	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:21:43.097672-06
3i65upjjokoal772exqqd3i52u4yya0b	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:20.279108-06
cqft5z7dlargcztcd2jwmjxwjbwgc0w8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:49:08.566701-06
jd48aln0czu3j03qy6pg1uvi5ei4fpl9	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:32:08.667488-06
b9zex3526otcqf9ce2ylw70ou9dcrev6	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:04:03.073014-06
h6x1yu491ngvm06ty7gcocaz2ay9bvjl	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 04:03:35.678374-06
x9tmvlng3299x7lisqupnsrs2aavy25s	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:17:29.892235-06
vayqftbpmjvpkerjtixkp0bzjmg44327	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:32:06.169191-06
f3ej52iuq4vfdeav3g0las7c1stmz6xw	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:32:56.869951-06
8jcnxfn1lpt9x8plrhbss9keoewnplmv	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:20.629312-06
bo734hlkafh93gqaav69oxw23jqvd6u1	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:49:27.004541-06
lmrxf257kae2ugbw6by5zj9olfa36hbt	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:32:57.919098-06
ljurp4wc3ln5960vbxdw7x10sg0iury4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:05:17.136154-06
ibf1ljcycmklryobdujmhlmq9clvsr1o	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 04:04:40.447837-06
xz4lvjw4lwjv91puttqk8db75vgo7vn0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:22:38.759294-06
4d71kb2kixc00kps9xmx1nvkukiox06w	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:33:26.663966-06
ugoxruewpzddh8xlv056vwqcbydqglf4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:33:35.411903-06
vzljpm7dq6v8k5ffffd8twk2r71hyw9l	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:21.46892-06
nrhg114as9h1w0w0xfprxijxukf2ahx6	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:51:12.670497-06
ormkcvp2lngm9obxjhk2dp3g7ogt4rep	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:36:56.457773-06
ejgzgto7n8p06m2n0m34iva6lnt9yfes	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:05:27.861597-06
tzvr391xng920yul2ek2onhi9cvrln2x	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 04:07:33.64116-06
udvsv1revzyqnu3iyro0195xdhc56dix	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:24:15.529263-06
m7iojzd8jr6c1mlc26g18i305x669wjh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:33:44.66183-06
y7m4p5a8dc9pg2qdry7yhyhq5ujb8ept	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:34:02.59602-06
xww6k559gjdchnajlbv0tzg5i62453tz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:23.999213-06
og1n5tjb4ab6bqktn5yj646bs0hije9b	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:51:46.944638-06
h4khvh3huppmuvbiqcc7ru2mbfjqdg1v	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:42:43.583622-06
q7dkfxzhwv3noz1fa1qiccnrbvwakqhv	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:06:41.635656-06
178ak1xq8w6ur9fxlhu5f7fxaa6bs1mx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 04:08:39.193506-06
rjb1b5y17tp72s1v47vz68e3aupsdq7a	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:25:14.457543-06
1l0mlaxhqsf2kdx5aw3ulfr04t1usih1	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:33:59.022794-06
jx6u8w77kjxj8v0606mftdmc4l4o1lvq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:34:12.822934-06
rzpda44josm7wg6oa0qkhm1zafh69znh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:24.489415-06
zad4cshi82nnqt2kszbmdievv478bjvd	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:52:34.065801-06
uagr05ubekoc9nbgwg4uf8q8fdlky0d4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:43:43.500962-06
0hyz3bpo288mputksgist1op4eymz5y0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:07:58.818244-06
gfgytvohomtfzzblafdgozkjqpa2rb8f	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 06:06:10.599457-06
qiu7dbdzelevki4ul7qh6drktgp4th6c	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:29:20.960655-06
nsulnrx76vx1vvjjzfp3gbut2fxgp1lq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:38:35.945434-06
1gru9vizyr2twxgp7gh3lce0vufvkiq2	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:34:33.741224-06
v5v8s5sxfedkmz3ko0v77olmg4bw3qjb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:24.93872-06
kqs1jih89s0wgt1e6icdza9ueya20g7i	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:56:17.653484-06
jqoemxljeoyu6cdjk5atn78airw5md7o	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:46:05.645638-06
f60iynwch4eyjwhpmppr3q6k77ciplox	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:09:13.139771-06
lj5pbs4jzdhwlvgn1gpo6729rgiq1hdn	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 07:33:58.005203-06
10jmy8orfodhkhxc9k6ih2vmgeo8zru7	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:30:29.930754-06
8xuc9qa65mja4mxdkdtaleosa3m15vep	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:38:54.352324-06
str74no05br7ubvaqj9abkpcoijvd12a	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:35:46.647603-06
hr2gc9zbi56r9wfavwd05fgv1ftgcrg5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:25.412784-06
l1fv91ksshz6y65jni2rpib5qqp5exbs	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:33:02.17303-06
2hl48431gg8q5cu4bvfz5xcllwmhknqb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:47:49.388944-06
ecnff7z3k6ts0lsq1i3qj5plvcdd5shn	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:22:28.746476-06
jnsmiudn2wx17s5pizv6g11dcnhxh9se	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 22:05:24.393997-06
o4vaoiwma5eh4qpw4fum7606vhq5168d	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:32:21.154701-06
25mmtrde65pv4ouwefrgd6k03byrim8o	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:40:07.175896-06
3m8c61cfc8kx5zj8rj14k1yck0mkgq2g	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:36:00.685675-06
w4p0wga6tu4rhx9ar6m3e4k5kye2tehd	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:25.878678-06
ylmkjtsbfileb7l3b4p5xj9rvsak29ai	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:35:18.78337-06
uceapdqb46e7sgk50vvrswvkj8574sct	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:48:07.801889-06
uparjajgi0hhs5tp67ea1n2urdf813bu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:23:50.756047-06
ue6ldhgsoeat93thtrl1q8eyk0elz399	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:20:08.779627-06
b1spsteoa5v3yccpdmeoihegyvdqwi5n	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:32:36.481684-06
qlknvhr8ffh9xyso6qngm9q6pf8vgq41	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:41:47.074029-06
2quadb6273mh1zutjonjtcz61xauluxy	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:36:15.32137-06
2wupxj28nn7gggn1ncd84cs65staczg3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:26.370058-06
st0xhk2ojcp64o76nb6ofi01kfztw1ng	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:36:34.220341-06
3yycrnkq12r5gurkn3poph3nu8rfa4sz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:50:02.146326-06
lz09hh52e9nfl7dcj9kgtkmd0qiphzyy	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:25:13.047689-06
02ni6lkmmmdlwb6qxw0501a9z0a7hj4z	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:20:45.166753-06
kr270is7y73p3kgachjekqb4yweieuwj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:34:18.103541-06
07kmd4kc8jfm06tto2jey4i7kv50s2wg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:42:05.579378-06
sn0o22pajp64jr6itcb98fui3zxfxegf	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:36:54.462228-06
3g7t83pbogjbrnj4qthw0hhdrry6vf8i	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:26.927518-06
ln6kl7h8zr8adan08hlj231vng27cdnq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:37:41.026904-06
2ak3xgse3r3cwt4z102ecwas7bw806mt	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:50:30.837147-06
wi5r0yr5q00kfrsi6x0511cr58f2vuzs	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:25:42.778542-06
nyaerqlcj7po31wyydhvw6f1xwor96uc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:22:50.34419-06
1ckzukhkea919s7wl2aqxdpuovcayyjh	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:34:29.095933-06
xkep1d0c9jlfh5m5zkratv4xplc33p7l	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:43:04.199882-06
f3ieyrzm5zzii8vxdy0b1i5fptf9sqb0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:37:02.541744-06
p3pdz0zor6cnqlec7qxnpqkoaqk34d7h	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:27.385323-06
nizdty023b4c4nlkw50t8ckz0l5kj50c	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:41:06.93372-06
0he354hxsy9cbg9pb6gor0hkl0643q2b	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:52:04.536913-06
03o7xeh1mnlb5whn1v6bsc7n69umdo72	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:27:03.806648-06
dsfy76hr3ysc12iyzecvt7qunzdokdrj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:23:30.30082-06
gd6px8xfr2tnn6c7g23sthxymg56hflc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:35:43.440952-06
a97j85igmtpakx54e3cdzkofrens8fx4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:16:47.0247-06
8zp0xy4yflgxdekaodbur5q4x4eatikq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:37:48.041861-06
3t0k2ulluwun7t053mcehithb391mg1g	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:27.876138-06
l95r72ctpa8plikzl1v627x1hgodkh2p	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:41:57.024407-06
qh28kpglshpceml3n2wybq0pz4m2af3u	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:52:26.555678-06
60ds5w1y3bbeahzkhx246pvxr4hbqljq	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:27:33.012501-06
tmtk175u2nvgih6kqgo9vp9ei5wo3a7x	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:25:54.808266-06
0sjf3bb1tdjl08f6bboldu7mbqapiz6q	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:37:35.597191-06
qm4m775wgtcue9t4gqbqflg43bcn2tod	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:17:02.185591-06
5q8mtikpmb8cyx0y1rpbdr9bd607uoee	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:38:58.642904-06
nlc70r71xg0cysyryay87uolggkg43c4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:28.325766-06
yz7f6ic0zoknrhype4tmkc2nylc9tqoc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:43:24.924008-06
g6ia4xjcj6l9a5onylikjvgzwb9ems3n	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:53:57.27632-06
b8kgavwo8b9uhptjm4im10ivould38er	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:29:05.514284-06
4cxqtblhovwse2zb330x58markmhiztb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:26:37.495635-06
1h5gzcqn7811bpzl7a97whcdzbr4tjpi	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:37:46.755691-06
frmccbh7syke5b89ovq6g35uv82azdvk	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:17:29.710734-06
61k1ycxmpnzrtnfnb5q32u5ns998yzuu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:40:24.979246-06
r9qwqdqjqov4gjh0nhx2esd3ct1imivb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:28.78336-06
bwemlfk7nope1rm06gh487t150zufuuu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:46:26.658918-06
3hssj0hfs398gnpjyhbss0vmxl9ja5mu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:54:59.716447-06
pyafhzdsrzf4gxgfvb6zcd8ca2ka8qv4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:30:22.747866-06
7dtzhfcgu5z4qs7gsin5ij92p3yy2c4g	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:30:52.103007-06
6wsr8mdxdkh66ji9frwnrvfu9l4y20n3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:40:50.127591-06
6r95ksrjl2kwejrm07eptjvrfvv9ou9r	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:38:03.830729-06
km2auhhsr4bh5rql0hv89pbflrupr6o0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:40:51.298-06
w7k5mgy9zb7hboe7emoatkn4pg5zc68v	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:29.291069-06
u6q0mt2wrreubr80stqb7lrel90q36eg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:47:11.907563-06
1ee3o8i282k9kxwjfwbzjc0dv76ay6l4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:56:04.30992-06
4mr8ny8znmrp84w89fmpe5numapenak8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:31:04.750664-06
rrx7jeumzddbcikkdi5xljwvjyf3t8i5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 00:31:17.813646-06
pus0j6dflzcrtsfapfyswoltp40hnlbp	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:43:31.585043-06
s3pd2fi108vb4qa9unf9c3j6161voy0h	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:03.752433-06
y7yogce9uc6ypspfw8xa4f3o7om2zse2	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:47:52.703436-06
c0kb284hg4b1lagwhvbay76unti4hkcm	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:29.773596-06
q4k2490ifo77gxhm0nlg1on85dji38wn	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:48:24.946636-06
o82wxwmxi7clq6znn8qcibokiikrej2k	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:57:17.566664-06
pmbw1w004aamgiglk4nq2r2envn4wqjo	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:32:11.275328-06
75selkijnibr74223wy33cc8ypz14jpr	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:19:29.143592-06
pmm0mfvrrr88gycr2ue0ayb17ccwe0j4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:43:50.954567-06
yv9tq2xgbicj28w1xswnzj9uhlhojbxc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:04.109133-06
ugc6y2onebmgf4smwvmeltxjcgxup19e	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:48:14.42064-06
kdceatw5wnsye0utik8t424kxveym4uc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:30.247434-06
vy5wrfzf5cnsidschs8xbhbappqwfwc6	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:51:38.255368-06
267qbx3blbhn524iplv14x5aosvw7vuk	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:58:23.009087-06
rgp3sjseqzyy9bt17k1bqqzhkz3plsvo	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:33:08.256997-06
s65nscplqnm33qn8ec1gn9xnlaoosgvs	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:22:04.236387-06
newx7iy6kr7njdljzyspi8gzj2w80q7o	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:46:23.83314-06
ckn330anehi0m0uc9vkl2nulg8s5z1ld	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:04.958154-06
696oqn9gwguobvgwx5jvfuf5exn13iiu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:56:36.420362-06
fk7jyh0hwa8d22d0nyjz0rcx8thsfmkg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:30.746577-06
l5he2gsdbhk7jzwpyd9y1db7td7tgdi1	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:52:49.347653-06
7zhrolc3cmiiaf1c86u00ijfm70ticz7	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:59:21.345639-06
7mp0099glaro45sg59ij0jfn3gfinjc0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:34:22.04465-06
v625qpk254eqwuchc5jpq65gzxk53ak5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:22:55.059897-06
ugylyljzb6j2chc5xqu9fcsobbm2a6az	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:46:58.871074-06
e67hgmdlh7prb8tsvkly5srgltrwvy4q	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:07.530086-06
rtek048n7wkk8mjxeox14l61a983cy6i	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:58:11.759873-06
obb3k2k1aouxzdgan269wy40at9nu77t	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:31.189227-06
yxdkhlbsb6rp9f4i0qxzq3i1jo8m9i6z	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:54:28.228267-06
kv079ngm5siuczt0e2ohhe1jytql4qx2	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:00:40.64231-06
78hr3bbk3i5zf6m1fcm5a4j0cihu5ose	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:35:52.299795-06
sq072mrq6zwdiq24ez93h5lcflc7rz87	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:23:14.297037-06
q4gsq2qk9ki5xxmv2ol7erhw91mlb6g7	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:48:29.650937-06
qh0x1g7z7ohamts6bmoipg9jzicmuenp	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:08.020181-06
h0zcrz4ahroo9o6vvhl8c7sn5ax961v8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:58:55.717121-06
41t9dyyip9zfzvst2lr2obp1yk02qm1a	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:31.663676-06
ct7o2ynwtfr8h1ofj0qbpvy6cdsmeqvt	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:55:57.305477-06
o5ja5izgqm6h0esigra7stxa631s2bod	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:02:45.895797-06
2ch80rmlxie2m68prnmcfek4evp16gmj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:36:07.636375-06
uvi5olxewp2wydeo9x5ll4lrgc3qdc3s	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:25:14.366034-06
e9zcel7kkxud4typ4o2t7k4cn1bybtht	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:49:27.097773-06
62uoq1ksilll5ea7ehic3b80kzvncyfe	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:08.536087-06
ig374yoypiedrr7ur7ip8684mnhintm0	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:59:38.436837-06
zngpxcpet68906mfnbqrwf2t4isuawwn	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:32.179904-06
bccd6un9al4w4itz058vq8i3w6n5vkt5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:57:36.375092-06
8udnc82dtswxlgnd8y39kztyvkrglq75	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:02:55.488894-06
jfx6km2tntvzyh07z8iiu4wawuk5zpll	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 00:36:48.175302-06
f2tzou0rtj6vlma3lidcqxfipx4swoln	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:26:30.078316-06
u3bzfbnpdx5dj6xeijo8xl4f4thefgft	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:50:05.798176-06
vfvlj40temc40qwomhs7gd9sjuos2iga	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:09.02671-06
tu1nfn600ki6uec688wmrxvcfehfk3hy	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 20:59:56.085232-06
bpsxx7lzxls8cu2i0hb1si4lxltjh910	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:32.654159-06
l7utx8vm6c347p7dp9oyym3wprwmqmb5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 01:59:06.456365-06
lrlesuruyqq3kaeje962ep1jqokz6qvz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:12:22.664629-06
rvrlg5v2ady9uoy12dwvkgoimlrtf88q	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:26:46.561981-06
zawa8o98sghddcnezcukt6jfnvf1ft8x	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:51:01.913701-06
v4lyojzdbtcosgjocy25uku3g8yo496x	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:09.509283-06
trto56l8up793z6chq4h0wuv43wwuzbn	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:03:19.044852-06
uvh7ojn88qf4tk8n3p87y3sjcggeka1e	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:33.161769-06
9xxjjla5nni9yl4839dsie9emnoc1zb3	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:00:50.007998-06
0vjubky7d8yvysrl70j4saeiekjhkyga	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:12:44.756963-06
bdahmncf904qfo7vm92pvjscon6zyp4n	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 01:29:17.486958-06
gvmgcpmdia9q2u3z77r07rjuqxmjoyo4	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:51:37.943039-06
f0gcxg9qqj52bvmaqmdz08r3f8k90ok5	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:10.033997-06
wpyvguxav2ax3pwfzevq1p4yzacwtoxr	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:03:27.690898-06
2ovw0myk4onbsr6jsf5j58xkx3m0z22l	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:33.662002-06
9ox7d7ynz3xnd7qb4nxsdhr0wafpw9fx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:01:21.295705-06
vo566x7gt2h1m8bjcgjm2e4hl0zjuhaa	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:13:35.073742-06
z9uwgfn4ktpp3at0q0lfoqt9n0bwt738	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-17 06:46:52.505201-06
tmm4mbe7mk3x0mn71o2q91nxwhjcg93t	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:54:34.450817-06
ppwyiq98oc5u0uvib0js5onl25mgsw5j	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:10.549882-06
u4sm6am5xyrfw8jbj0ybaziryj0y1mwg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:05:35.747692-06
mi96aj18iitigdwvytlpx3ikz52ontf8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:34.186187-06
db495mc1q36y5ijbs0gig3ujyxyoac52	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:05:04.383803-06
8gfi1xu5ay5cokzbqfrnt9n3hlce63sc	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:14:01.159075-06
n72dmnfuufi2ci0ot5ljkp9jsapufi6l	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:55:04.614561-06
12ypadfcva8kbsd9moyh14ti4twhif4e	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:11.032221-06
jo2xoyj2fi0igiouepnsrfg7kpgbqgcg	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:12:28.249346-06
gavjbbrs33qu44iixfv4psvhg283wrjx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:34.710265-06
qou0k6k39l2s2ej5mmc94blcrhamczeb	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:08:00.093921-06
vi1yx2sp672i5ymvkqe60gk5hkw57epr	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 22:19:14.268345-06
9qa6dkjnnjnfhymyev7v33ns9eraq963	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:56:11.671905-06
wb1wcd5u9z5gudmhxpytx29h7crysrc8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:11.540713-06
46x5j2ws1hc1ikw1t81k1d6pplb12qhl	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:12:42.842875-06
43f4cel3297uhlrl77kd0izjoazrv4n8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:35.166754-06
qse1m8whlcm4z9ajku4dqo8rp3yogo4r	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:10:59.205874-06
k69jr1kuio6kt8mas9xa0w068utw0vbp	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:02:17.709768-06
9muegk7ny9kq45tnyidrd0zsq6ql5d9q	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:56:31.317397-06
suq011pgjt8ygzfmht4zaph22rdlvxuj	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:12.030587-06
k49dh88o2ntf2rsq2z9pplsgkiya91dz	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:12:56.655313-06
bcihhg0depv3d52rlxaos63ipno3jnfy	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:35.641128-06
i9gjd9ar8fbicggibrykfixyogee0f5d	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:12:05.865541-06
0vbogqqwi4myp3k1ok9uerdn1olwvt05	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:03:08.631502-06
svdrkpdnnaxlprdpz6ax19ohxpe559g7	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 17:59:41.213826-06
6ssukvejrw59hit44zmxfr0k6rwrzfa6	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:12.53041-06
y9t3bdws5l4nefx3nujt99fzjklyqjp7	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:13:33.508469-06
nwkj7xityybn9xx7z0pbretvs1neyotf	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:44:36.116665-06
8lfr66mtch6or4p7k2ku8as3cvzdkjpy	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:13:01.272131-06
hisulg8clmphjqbbos0pj6awtoiq0dg8	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:03:23.95015-06
pc6v7c2vdoghqhkjz3ce2ytmvmyj0vii	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:01:33.535158-06
q8tjqekz6bpb093hmzol18ctvlrx23pl	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:13.512506-06
c5u8wpvkp16780e8phzpvb3ry0t5hbfr	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:15:21.704071-06
ssvrnjuv6iqb3msnntlb03d0jcjdzfrx	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:48:36.337204-06
s1p8lkofcsqh8cyzo9lqni96u6g2be0y	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:43:57.410523-06
zvx0hwowkgdcvi2cul7x4fh5y6c3wjza	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:04:23.843967-06
4gb3ygweidhenho2a90nmqi575fcgxso	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 18:02:15.580075-06
zfaguhi812r3x8qrumubj9uhyxb82xnd	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:43:14.003864-06
mr85swzuliy4vi77n4bautwy39zkaapu	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 21:15:36.773121-06
lzyg8lsd8syt8x931fkjr08pi7fhuzs9	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-14 19:50:46.231455-06
eftemzrmqfxnvlostgzdjogozgicu2ih	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-16 02:48:23.626711-06
p7kjpbjyraxvh5nxnl2vb69ytocigoga	MDhhOTZiNzdkMDZlOTBjZjIxNzE0NWQyNmQ5NzExODg1YTE3MDY2MDp7Il9hdXRoX3VzZXJfaGFzaCI6ImM0NDMwNjI5YTQxZWI2MTIyZTJjNmE4NzE2MzhlZTc3ZDI1YWNmNGMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjJ9	2015-06-15 22:04:55.904071-06
\.


--
-- Data for Name: gestion_red_bootevent; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_bootevent (id, tipo, uptime, fecha, leido, host_id) FROM stdin;
1	nsNotifyShutdown	12643	2015-06-02 03:11:51.456442-06	f	16
2	coldStart	0	2015-06-02 03:11:51.83794-06	f	16
\.


--
-- Name: gestion_red_bootevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_bootevent_id_seq', 2, true);


--
-- Data for Name: gestion_red_device; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_device (id, index, type, description, status, errors, created, host_id) FROM stdin;
1	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:09:52.345921-06	1
2	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:09:52.420773-06	1
3	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:09:52.487387-06	1
4	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:09:52.553873-06	1
5	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:52.620623-06	1
6	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:52.687477-06	1
7	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:52.745575-06	1
8	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:52.82035-06	1
9	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:52.88696-06	1
10	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:52.961979-06	1
11	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:53.028276-06	1
12	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:53.094883-06	1
13	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:53.161466-06	1
14	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:09:53.228076-06	1
15	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:09:53.294626-06	1
16	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:09:53.361245-06	1
17	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:09:53.427824-06	1
18	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	2	2015-06-02 03:09:53.49426-06	1
19	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	1	2015-06-02 03:09:53.552522-06	1
20	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	3	2015-06-02 03:09:53.619243-06	1
21	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	2	2015-06-02 03:09:53.677505-06	1
22	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	3	2015-06-02 03:09:53.743993-06	1
23	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	1	2015-06-02 03:09:53.810552-06	1
24	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:09:53.877266-06	1
25	1025	Red	network interface lo	unspecified	1	2015-06-02 03:09:53.943741-06	1
26	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:09:54.010156-06	1
27	1027	Red	network interface eth1	unspecified	1	2015-06-02 03:09:54.068464-06	1
28	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:09:54.126701-06	1
29	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:09:54.21004-06	1
30	1030	Red	network interface sit0	unspecified	2	2015-06-02 03:09:54.276473-06	1
31	1031	Red	network interface sync0	unspecified	3	2015-06-02 03:09:54.368406-06	1
32	1032	Red	network interface sync1	unspecified	3	2015-06-02 03:09:54.434724-06	1
33	1033	Red	network interface sync2	unspecified	2	2015-06-02 03:09:54.50135-06	1
34	1034	Red	network interface sync3	unspecified	3	2015-06-02 03:09:54.559629-06	1
35	1119	Red	network interface fsxsk0	unspecified	1	2015-06-02 03:09:54.617944-06	1
36	1120	Red	network interface fsxsk1	unspecified	0	2015-06-02 03:09:54.684485-06	1
37	1121	Red	network interface fsxsk2	unspecified	1	2015-06-02 03:09:54.751103-06	1
38	1122	Red	network interface fsxsk3	unspecified	2	2015-06-02 03:09:54.817718-06	1
39	1280	Impresora	man_lp4	unspecified	1	2015-06-02 03:09:54.884046-06	1
40	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:09:54.95923-06	1
41	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:09:55.033917-06	1
42	1283	Impresora	man_lp3	unspecified	1	2015-06-02 03:09:55.092042-06	1
43	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	2	2015-06-02 03:09:55.167039-06	1
44	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:00.14318-06	26
45	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:00.209755-06	26
46	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:00.284932-06	26
47	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.351257-06	26
48	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.417857-06	26
49	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.492759-06	26
50	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.5592-06	26
51	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.625755-06	26
52	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.692458-06	26
53	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.750717-06	26
54	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.817165-06	26
55	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.892245-06	26
56	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:00.958707-06	26
57	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:01.033637-06	26
58	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:01.108839-06	26
59	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:01.175216-06	26
60	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:01.241816-06	26
61	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:01.30816-06	26
62	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	1	2015-06-02 03:10:01.374799-06	26
63	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:01.441421-06	26
64	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:01.516306-06	26
65	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:01.582856-06	26
66	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:01.657787-06	26
67	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:01.732946-06	26
68	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:01.799008-06	26
69	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:01.857431-06	26
70	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:01.915717-06	26
71	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:01.98242-06	26
72	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:02.057576-06	26
73	1030	Red	network interface sit0	unspecified	1	2015-06-02 03:10:02.123983-06	26
74	1031	Red	network interface sync0	unspecified	1	2015-06-02 03:10:02.19025-06	26
75	1032	Red	network interface sync1	unspecified	0	2015-06-02 03:10:02.24849-06	26
76	1033	Red	network interface sync2	unspecified	0	2015-06-02 03:10:02.306712-06	26
77	1034	Red	network interface sync3	unspecified	1	2015-06-02 03:10:02.373543-06	26
78	1095	Red	network interface fsxsk0	unspecified	1	2015-06-02 03:10:02.448272-06	26
79	1096	Red	network interface fsxsk1	unspecified	0	2015-06-02 03:10:02.52307-06	26
80	1097	Red	network interface fsxsk2	unspecified	1	2015-06-02 03:10:02.60655-06	26
81	1098	Red	network interface fsxsk3	unspecified	0	2015-06-02 03:10:02.673024-06	26
82	1280	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:02.739493-06	26
83	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:02.806081-06	26
84	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:02.872594-06	26
85	1283	Impresora	man_lp3	unspecified	1	2015-06-02 03:10:02.947507-06	26
86	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	2	2015-06-02 03:10:03.02272-06	26
87	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:07.757476-06	25
88	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:07.823862-06	25
89	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:07.898511-06	25
90	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:07.965455-06	25
91	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:08.031768-06	25
92	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:08.09863-06	25
93	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:08.164954-06	25
94	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:08.231457-06	25
95	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:08.298114-06	25
96	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:08.36463-06	25
97	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:08.431321-06	25
98	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:08.497817-06	25
99	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:08.565161-06	25
100	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:08.630735-06	25
101	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:08.697467-06	25
102	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:08.763998-06	25
103	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:08.839016-06	25
104	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:08.905354-06	25
105	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:08.972198-06	25
106	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:09.038919-06	25
107	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:09.105424-06	25
108	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:09.171831-06	25
109	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:09.24686-06	25
110	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:09.313374-06	25
111	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:09.388171-06	25
112	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:09.454993-06	25
113	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:09.521302-06	25
114	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:09.579477-06	25
115	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:09.646062-06	25
116	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:09.721883-06	25
117	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:09.804282-06	25
118	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:09.879128-06	25
119	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:09.954312-06	25
120	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:10.020531-06	25
121	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:10.087061-06	25
122	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:10.153777-06	25
123	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:10.22044-06	25
124	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:10.295104-06	25
125	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:10.362006-06	25
307	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:36.407193-06	28
126	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:13.09938-06	22
127	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:13.174209-06	22
128	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:13.241152-06	22
129	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:13.31603-06	22
130	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:13.390609-06	22
131	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:13.457304-06	22
132	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:13.523705-06	22
133	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:13.59037-06	22
134	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:13.665255-06	22
135	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:13.731911-06	22
136	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:13.807003-06	22
137	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:14.075543-06	22
138	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:14.148467-06	22
139	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:14.214827-06	22
140	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.289471-06	22
141	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.36445-06	22
142	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.430805-06	22
143	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.497653-06	22
144	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.563986-06	22
145	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.630488-06	22
146	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.688484-06	22
147	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.764262-06	22
148	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.846915-06	22
149	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:14.913482-06	22
150	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:14.988659-06	22
151	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:15.055023-06	22
152	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:15.121658-06	22
153	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:15.188376-06	22
154	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:15.262859-06	22
155	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:15.32979-06	22
156	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:15.404496-06	22
157	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:15.47101-06	22
158	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:15.554303-06	22
159	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:15.687262-06	22
160	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:15.745546-06	22
161	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:15.812146-06	22
162	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:15.878793-06	22
163	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:15.953768-06	22
164	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:16.02042-06	22
165	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:18.749669-06	21
166	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:18.816483-06	21
167	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:18.88296-06	21
168	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:18.949419-06	21
169	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:19.015976-06	21
170	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:19.082407-06	21
171	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:19.149286-06	21
172	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:19.232269-06	21
173	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:19.298861-06	21
174	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:19.365291-06	21
175	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:19.431891-06	21
176	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:19.49854-06	21
177	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:19.565362-06	21
178	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:19.631625-06	21
179	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:19.698385-06	21
180	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:19.764932-06	21
181	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:19.831457-06	21
182	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:19.897799-06	21
183	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:19.956144-06	21
184	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:20.022638-06	21
185	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:20.089294-06	21
186	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:20.16451-06	21
187	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:20.239347-06	21
188	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:20.305745-06	21
189	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:20.372487-06	21
190	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:20.438737-06	21
191	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:20.513624-06	21
192	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:20.589792-06	21
193	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:20.67185-06	21
194	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:20.738376-06	21
195	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:20.826696-06	21
196	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:20.896481-06	21
197	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:20.963137-06	21
198	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:21.029575-06	21
199	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:21.096417-06	21
200	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:21.162702-06	21
201	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:21.229329-06	21
202	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:21.304326-06	21
203	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:21.370741-06	21
204	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:24.291459-06	24
205	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:24.358056-06	24
206	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:24.424672-06	24
207	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:24.491464-06	24
208	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:24.549519-06	24
209	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:24.616063-06	24
210	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:24.674195-06	24
211	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:24.740929-06	24
212	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:24.807654-06	24
213	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:24.873913-06	24
214	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:24.949109-06	24
215	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:25.015379-06	24
216	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:25.082021-06	24
217	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:25.148547-06	24
218	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.215394-06	24
219	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.27348-06	24
220	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.339909-06	24
221	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.398336-06	24
222	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.464929-06	24
223	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.531311-06	24
224	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.615749-06	24
225	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.697831-06	24
226	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.764351-06	24
227	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:25.831201-06	24
228	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:25.897419-06	24
229	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:25.964195-06	24
230	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:26.030737-06	24
231	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:26.089066-06	24
232	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:26.15554-06	24
233	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:26.222104-06	24
234	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:26.288919-06	24
235	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:26.346997-06	24
236	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:26.413518-06	24
237	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:26.480321-06	24
238	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:26.546559-06	24
239	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:26.613514-06	24
240	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:26.679711-06	24
241	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:26.746205-06	24
242	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:26.821371-06	24
243	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:30.22445-06	23
244	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:30.291059-06	23
245	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:30.357676-06	23
246	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:30.424217-06	23
247	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:30.49086-06	23
308	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:36.46543-06	28
248	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:30.548958-06	23
249	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:30.625712-06	23
250	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:30.707101-06	23
251	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:30.782248-06	23
252	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:30.848519-06	23
253	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:30.906721-06	23
254	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:30.973725-06	23
255	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:31.039906-06	23
256	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:31.10652-06	23
257	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.181465-06	23
258	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.239762-06	23
259	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.306245-06	23
260	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.372767-06	23
261	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.448086-06	23
262	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.514377-06	23
263	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.580895-06	23
264	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.647535-06	23
265	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.714015-06	23
266	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:31.772361-06	23
267	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:31.838966-06	23
268	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:31.905476-06	23
269	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:31.971998-06	23
270	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:32.030263-06	23
271	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:32.096925-06	23
272	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:32.163409-06	23
273	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:32.229912-06	23
274	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:32.288202-06	23
275	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:32.346469-06	23
276	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:32.413249-06	23
277	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:32.479632-06	23
278	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:32.546368-06	23
279	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:32.613101-06	23
280	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:32.679266-06	23
281	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:32.746171-06	23
282	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:34.693192-06	28
283	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:34.759703-06	28
284	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:34.834542-06	28
285	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:34.901165-06	28
286	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:34.967752-06	28
287	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:35.025945-06	28
288	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:35.092581-06	28
289	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:35.167416-06	28
290	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:35.233949-06	28
291	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:35.300514-06	28
292	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:35.40058-06	28
293	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:35.458503-06	28
294	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:35.525383-06	28
295	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:35.591955-06	28
296	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:35.670039-06	28
297	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:35.741665-06	28
298	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:35.808035-06	28
299	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:35.874774-06	28
300	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:35.941174-06	28
301	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:36.007886-06	28
302	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:36.074334-06	28
303	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:36.149207-06	28
304	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:36.215841-06	28
305	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:36.28249-06	28
306	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:36.340733-06	28
309	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:36.532107-06	28
310	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:36.598627-06	28
311	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:36.665517-06	28
312	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:36.740073-06	28
313	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:36.806783-06	28
314	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:36.873331-06	28
315	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:36.940222-06	28
316	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:37.006601-06	28
317	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:37.073216-06	28
318	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:37.139366-06	28
319	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:37.197719-06	28
320	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:37.256256-06	28
321	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:38.629082-06	27
322	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:38.687295-06	27
323	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:38.754047-06	27
324	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:38.829088-06	27
325	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:38.895269-06	27
326	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:38.961825-06	27
327	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:39.02848-06	27
328	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:39.09497-06	27
329	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:39.161687-06	27
330	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:39.228205-06	27
331	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:39.303134-06	27
332	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:39.361341-06	27
333	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:39.428541-06	27
334	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:39.486265-06	27
335	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:39.552743-06	27
336	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:39.619448-06	27
337	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:39.694367-06	27
338	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:39.760601-06	27
339	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:39.827267-06	27
340	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:39.902395-06	27
341	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:39.968724-06	27
342	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:40.035336-06	27
343	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:40.102087-06	27
344	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:40.168444-06	27
345	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:40.24345-06	27
346	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:40.309957-06	27
347	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:40.376599-06	27
348	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:40.442987-06	27
349	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:40.509836-06	27
350	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:40.567936-06	27
351	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:40.634435-06	27
352	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:40.712346-06	27
353	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:40.792882-06	27
354	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:40.859049-06	27
355	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:40.926026-06	27
356	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:40.992299-06	27
357	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:41.050681-06	27
358	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:41.11728-06	27
359	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:41.175237-06	27
360	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:42.565402-06	3
361	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:42.632009-06	3
362	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:42.698089-06	3
363	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	running	0	2015-06-02 03:10:42.76467-06	3
364	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:42.831563-06	3
365	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:42.899087-06	3
366	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:42.956378-06	3
367	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:43.022652-06	3
368	776	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:43.08949-06	3
369	777	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	down	0	2015-06-02 03:10:43.197345-06	3
370	778	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:43.264254-06	3
371	779	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:43.330805-06	3
372	780	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:43.397239-06	3
373	781	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unknown	0	2015-06-02 03:10:43.4719-06	3
374	782	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:43.588605-06	3
375	783	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:43.671655-06	3
376	784	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:43.755024-06	3
377	785	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:43.821508-06	3
378	786	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:43.888092-06	3
379	787	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:43.954685-06	3
380	788	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:44.021432-06	3
381	789	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:44.087776-06	3
382	790	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:44.15428-06	3
383	791	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-2640 0 @ 2.50GHz	unspecified	0	2015-06-02 03:10:44.22113-06	3
384	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:44.295876-06	3
385	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:44.362426-06	3
386	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:44.429257-06	3
387	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:44.50392-06	3
388	1029	Red	network interface eth3	unspecified	0	2015-06-02 03:10:44.570372-06	3
389	1030	Red	network interface eth4	unspecified	0	2015-06-02 03:10:44.628568-06	3
390	1031	Red	network interface eth5	unspecified	0	2015-06-02 03:10:44.687-06	3
391	1032	Red	network interface eth6	unspecified	0	2015-06-02 03:10:44.75378-06	3
392	1033	Red	network interface eth7	unspecified	0	2015-06-02 03:10:44.820205-06	3
393	1034	Red	network interface sit0	unspecified	0	2015-06-02 03:10:44.886726-06	3
394	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:44.953136-06	3
395	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:45.019966-06	3
396	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:45.094926-06	3
397	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:45.1612-06	3
398	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:45.236353-06	3
399	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:46.551073-06	2
400	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:46.61764-06	2
401	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:46.684011-06	2
402	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:46.758771-06	2
403	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:10:46.825491-06	2
404	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:46.892235-06	2
405	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:46.958644-06	2
406	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	1	2015-06-02 03:10:47.033754-06	2
407	1025	Red	network interface lo	unknown	1	2015-06-02 03:10:47.09164-06	2
408	1026	Red	network interface eth0	unknown	2	2015-06-02 03:10:47.158373-06	2
409	1027	Red	network interface eth1	unspecified	1	2015-06-02 03:10:47.22492-06	2
410	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:47.283146-06	2
411	1029	Red	network interface sit0	unspecified	1	2015-06-02 03:10:47.349961-06	2
412	1280	Impresora	man_lp3	unspecified	2	2015-06-02 03:10:47.416378-06	2
413	1281	Impresora	kuw_lp1	unspecified	0	2015-06-02 03:10:47.482937-06	2
414	1282	Impresora	man_lp1	unspecified	1	2015-06-02 03:10:47.541276-06	2
415	1283	Impresora	man_lp2	unspecified	2	2015-06-02 03:10:47.599235-06	2
416	1284	Impresora	man_lp4	unspecified	3	2015-06-02 03:10:47.657689-06	2
417	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	4	2015-06-02 03:10:47.715752-06	2
418	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	5	2015-06-02 03:10:47.782444-06	2
419	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	2	2015-06-02 03:10:47.849412-06	2
420	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:49.05545-06	5
421	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:49.122411-06	5
422	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:49.188762-06	5
423	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:49.255275-06	5
424	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:10:49.313829-06	5
425	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:49.380102-06	5
426	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:49.454973-06	5
427	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:49.521609-06	5
428	1025	Red	network interface lo	unspecified	0	2015-06-02 03:10:49.588142-06	5
429	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:49.665108-06	5
430	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:49.739459-06	5
431	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:49.806213-06	5
432	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:10:49.864401-06	5
433	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:49.947977-06	5
434	1281	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:50.031147-06	5
435	1282	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:50.097323-06	5
436	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:10:50.1638-06	5
437	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:10:50.230592-06	5
438	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:50.30542-06	5
439	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:51.561878-06	4
440	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:51.611732-06	4
441	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:51.669964-06	4
442	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:51.75322-06	4
443	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:10:51.82802-06	4
444	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:51.895038-06	4
445	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:51.952885-06	4
446	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:52.028183-06	4
447	1025	Red	network interface lo	unknown	0	2015-06-02 03:10:52.10281-06	4
448	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:52.177679-06	4
449	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:52.244302-06	4
450	1028	Red	network interface eth2	running	0	2015-06-02 03:10:52.319138-06	4
451	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:10:52.3855-06	4
452	1280	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:52.452523-06	4
453	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:52.518842-06	4
454	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:52.585364-06	4
455	1283	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:52.65189-06	4
456	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:10:52.718654-06	4
457	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:10:52.785229-06	4
458	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:52.860162-06	4
459	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:54.099825-06	7
460	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:54.166429-06	7
461	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:54.233387-06	7
462	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:54.299884-06	7
463	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:10:54.357873-06	7
464	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:54.432875-06	7
465	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:54.499307-06	7
466	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:54.566218-06	7
467	1025	Red	network interface lo	unknown	0	2015-06-02 03:10:54.63259-06	7
468	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:54.698964-06	7
469	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:54.765677-06	7
470	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:54.83219-06	7
471	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:10:54.898968-06	7
472	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:54.965544-06	7
473	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:55.023677-06	7
474	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:55.090259-06	7
475	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:55.156706-06	7
476	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:10:55.223478-06	7
477	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:10:55.290015-06	7
478	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:55.356954-06	7
479	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:56.596992-06	6
480	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:56.672487-06	6
481	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:56.738882-06	6
482	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:56.797119-06	6
483	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:10:56.863834-06	6
484	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:56.930297-06	6
485	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:56.988665-06	6
486	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:57.054892-06	6
487	1025	Red	network interface lo	unknown	0	2015-06-02 03:10:57.121638-06	6
488	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:57.179795-06	6
489	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:10:57.24651-06	6
490	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:57.312908-06	6
491	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:10:57.379481-06	6
492	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:57.446029-06	6
493	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:57.512935-06	6
494	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:57.571111-06	6
495	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:10:57.637776-06	6
496	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:10:57.696141-06	6
497	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:10:57.762221-06	6
498	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:10:57.828915-06	6
499	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:59.002032-06	9
500	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:59.060414-06	9
501	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:59.127082-06	9
502	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:10:59.193758-06	9
569	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:06.932548-06	10
503	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:10:59.251746-06	9
504	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:59.301733-06	9
505	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:59.368146-06	9
506	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:10:59.435116-06	9
507	1025	Red	network interface lo	unknown	0	2015-06-02 03:10:59.50175-06	9
508	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:10:59.560156-06	9
509	1027	Red	network interface eth1	unknown	0	2015-06-02 03:10:59.61794-06	9
510	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:10:59.68454-06	9
511	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:10:59.751374-06	9
512	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:10:59.809354-06	9
513	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:10:59.867677-06	9
514	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:10:59.934203-06	9
515	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:00.000812-06	9
516	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:00.058936-06	9
517	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:00.11728-06	9
518	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:00.183935-06	9
519	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:01.423811-06	8
520	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:01.540465-06	8
521	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:01.665309-06	8
522	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:01.783354-06	8
523	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:01.889604-06	8
524	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:02.000313-06	8
525	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:02.064467-06	8
526	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:02.130912-06	8
527	1025	Red	network interface lo	unknown	0	2015-06-02 03:11:02.197696-06	8
528	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:02.264235-06	8
529	1027	Red	network interface eth1	testing	0	2015-06-02 03:11:02.322368-06	8
530	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:02.380578-06	8
531	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:02.447084-06	8
532	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:02.513821-06	8
533	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:02.580353-06	8
534	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:02.671798-06	8
535	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:02.730308-06	8
536	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:02.779988-06	8
537	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:02.838258-06	8
538	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:02.888199-06	8
539	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:04.069874-06	11
540	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:04.136317-06	11
541	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:04.202906-06	11
542	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:04.269626-06	11
543	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:04.335994-06	11
544	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:04.394256-06	11
545	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:04.461105-06	11
546	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:04.519201-06	11
547	1025	Red	network interface lo	unknown	0	2015-06-02 03:11:04.577687-06	11
548	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:04.635737-06	11
549	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:04.69389-06	11
550	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:04.760881-06	11
551	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:04.835355-06	11
552	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:04.893667-06	11
553	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:04.95184-06	11
554	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:05.010087-06	11
555	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:05.068189-06	11
556	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:05.126374-06	11
557	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:05.176325-06	11
558	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:05.226711-06	11
559	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:06.407954-06	10
560	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:06.457862-06	10
561	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:06.507716-06	10
562	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:06.557861-06	10
563	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	2	2015-06-02 03:11:06.615942-06	10
564	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	3	2015-06-02 03:11:06.665884-06	10
565	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	1	2015-06-02 03:11:06.715892-06	10
566	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unspecified	1	2015-06-02 03:11:06.774333-06	10
567	1025	Red	network interface lo	unspecified	1	2015-06-02 03:11:06.824026-06	10
568	1026	Red	network interface eth0	unspecified	2	2015-06-02 03:11:06.873917-06	10
570	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:07.001135-06	10
571	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:07.065295-06	10
572	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:07.123703-06	10
573	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:07.181814-06	10
574	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:07.240574-06	10
575	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:07.306933-06	10
576	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:07.365017-06	10
577	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:09.262526-06	14
578	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:09.320657-06	14
579	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:09.370519-06	14
580	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:09.4287-06	14
581	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:09.48721-06	14
582	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:09.54545-06	14
583	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:09.603547-06	14
584	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:09.661697-06	14
585	1025	Red	network interface lo	unknown	0	2015-06-02 03:11:09.728465-06	14
586	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:09.795075-06	14
587	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:09.86159-06	14
588	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:09.928154-06	14
589	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:09.994726-06	14
590	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:10.061419-06	14
591	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:10.127734-06	14
592	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:10.194348-06	14
593	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:10.261457-06	14
594	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:10.327613-06	14
595	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:10.394018-06	14
596	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:10.469403-06	14
597	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:11.675231-06	15
598	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:11.725456-06	15
599	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:11.783794-06	15
600	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:11.850237-06	15
601	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:11.917204-06	15
602	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:11.992104-06	15
603	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:12.058376-06	15
604	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:12.133458-06	15
605	1025	Red	network interface lo	unknown	0	2015-06-02 03:11:12.208178-06	15
606	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:12.266437-06	15
607	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:12.333145-06	15
608	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:12.391265-06	15
609	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:12.457724-06	15
610	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:12.524375-06	15
611	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:12.599132-06	15
612	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:12.665817-06	15
613	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:12.732311-06	15
614	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:12.799195-06	15
615	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:12.865861-06	15
616	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:12.9319-06	15
617	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:14.12197-06	16
618	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:14.180168-06	16
619	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:14.26679-06	16
620	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:14.338368-06	16
621	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:14.405068-06	16
622	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:14.47144-06	16
623	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:14.538092-06	16
624	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:14.604616-06	16
625	1025	Red	network interface lo	unspecified	0	2015-06-02 03:11:14.671463-06	16
626	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:14.729507-06	16
627	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:14.795902-06	16
628	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:14.862534-06	16
629	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:14.92913-06	16
630	1280	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:14.995578-06	16
631	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:15.062296-06	16
632	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:15.12921-06	16
633	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:15.195445-06	16
634	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:15.262119-06	16
635	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:15.328746-06	16
636	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:16.892878-06	17
637	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:16.943208-06	17
638	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:17.001128-06	17
639	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:17.059403-06	17
640	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:17.126014-06	17
641	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:17.200955-06	17
642	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:17.26741-06	17
643	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:17.334036-06	17
644	1025	Red	network interface lo	unknown	0	2015-06-02 03:11:17.400771-06	17
645	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:17.475504-06	17
646	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:17.542041-06	17
647	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:17.608557-06	17
648	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:17.675194-06	17
649	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:17.750411-06	17
650	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:17.817084-06	17
651	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:17.883175-06	17
652	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:17.958062-06	17
653	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:18.016711-06	17
654	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:18.091368-06	17
655	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:18.166306-06	17
656	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:19.422495-06	18
657	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:19.480678-06	18
658	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:19.539278-06	18
659	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:19.605746-06	18
660	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:19.672252-06	18
661	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:19.730444-06	18
662	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:19.79732-06	18
663	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:19.863777-06	18
664	1025	Red	network interface lo	unknown	0	2015-06-02 03:11:19.921982-06	18
665	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:19.988563-06	18
666	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:20.063741-06	18
667	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:20.130094-06	18
668	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:20.196579-06	18
669	1280	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:20.271592-06	18
670	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:20.338142-06	18
671	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:20.404604-06	18
672	1283	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:20.471331-06	18
673	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:20.546128-06	18
674	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:20.621153-06	18
675	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:20.704405-06	18
676	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:21.918955-06	19
677	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:21.977177-06	19
678	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:22.035593-06	19
679	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:22.110744-06	19
680	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	0	2015-06-02 03:11:22.177269-06	19
681	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:22.243645-06	19
682	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:22.310179-06	19
683	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unknown	0	2015-06-02 03:11:22.376747-06	19
684	1025	Red	network interface lo	unknown	0	2015-06-02 03:11:22.451653-06	19
685	1026	Red	network interface eth0	unspecified	0	2015-06-02 03:11:22.518235-06	19
686	1027	Red	network interface eth1	unspecified	0	2015-06-02 03:11:22.584877-06	19
687	1028	Red	network interface eth2	unspecified	0	2015-06-02 03:11:22.651364-06	19
688	1029	Red	network interface sit0	unspecified	0	2015-06-02 03:11:22.741551-06	19
689	1280	Impresora	man_lp3	unspecified	0	2015-06-02 03:11:22.817843-06	19
690	1281	Impresora	man_lp1	unspecified	0	2015-06-02 03:11:22.884342-06	19
691	1282	Impresora	man_lp2	unspecified	0	2015-06-02 03:11:22.951012-06	19
692	1283	Impresora	man_lp4	unspecified	0	2015-06-02 03:11:23.026017-06	19
693	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	0	2015-06-02 03:11:23.092412-06	19
694	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	0	2015-06-02 03:11:23.158988-06	19
695	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	0	2015-06-02 03:11:23.225762-06	19
696	768	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:24.656683-06	20
697	769	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	0	2015-06-02 03:11:24.715028-06	20
698	770	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	3	2015-06-02 03:11:24.773257-06	20
699	771	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	running	1	2015-06-02 03:11:24.840095-06	20
700	772	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	down	1	2015-06-02 03:11:24.906397-06	20
701	773	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unspecified	1	2015-06-02 03:11:24.981441-06	20
702	774	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unspecified	3	2015-06-02 03:11:25.047803-06	20
703	775	Procesador	GenuineIntel:        Intel(R) Xeon(R) CPU E5-1620 0 @ 3.60GHz	unspecified	1	2015-06-02 03:11:25.114376-06	20
704	1025	Red	network interface lo	unspecified	1	2015-06-02 03:11:25.189636-06	20
705	1026	Red	network interface eth0	unspecified	1	2015-06-02 03:11:25.255906-06	20
706	1027	Red	network interface eth1	unspecified	1	2015-06-02 03:11:25.322504-06	20
707	1028	Red	network interface eth2	unspecified	2	2015-06-02 03:11:25.389244-06	20
708	1029	Red	network interface sit0	unspecified	3	2015-06-02 03:11:25.455613-06	20
709	1552	Disco de Almacenamiento	SCSI disk (/dev/sda)	unspecified	4	2015-06-02 03:11:25.513727-06	20
710	1553	Disco de Almacenamiento	SCSI disk (/dev/sdb)	unspecified	5	2015-06-02 03:11:25.580662-06	20
711	3072	Coprocesador	Guessing that there's a floating point co-processor	unspecified	1	2015-06-02 03:11:25.638714-06	20
712	768	Procesador	GenuineIntel: Intel(R) Pentium(R) 4 CPU 3.40GHz	unspecified	2	2015-06-02 03:11:38.086565-06	13
713	769	Procesador	GenuineIntel: Intel(R) Pentium(R) 4 CPU 3.40GHz	unspecified	1	2015-06-02 03:11:38.161756-06	13
714	1025	Red	network interface lo	unknown	2	2015-06-02 03:11:38.228302-06	13
715	1026	Red	network interface eth0	running	0	2015-06-02 03:11:38.294833-06	13
716	1027	Red	network interface eth1	warning	134217727	2015-06-02 03:11:38.352725-06	13
717	1280	Impresora	DymoLabelWriter400	running	1	2015-06-02 03:11:38.411009-06	13
718	1536	Disco de Almacenamiento	MATSHITADVD-RAM SW-9576S	unknown	2	2015-06-02 03:11:38.46924-06	13
719	1538	Disco de Almacenamiento	ST3500514NS	unknown	3	2015-06-02 03:11:38.527442-06	13
720	3072	Coprocesador	Guessing that there's a floating point co-processor	running	4	2015-06-02 03:11:38.577721-06	13
\.


--
-- Name: gestion_red_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_device_id_seq', 720, true);


--
-- Data for Name: gestion_red_diskhistory; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_diskhistory (id, path, device, min_free, size, used, percent_used, flag, msg, created, host_id) FROM stdin;
1	/	/dev/cciss/c0d0p1	15	131613	30407952	24	t	0	2015-06-02 02:50:43.222883-06	1
2	/	/dev/cciss/c0d0p1	10	131613	7953836	6	t	0	2015-06-02 02:50:43.466998-06	26
3	/	/dev/cciss/c0d0p1	10	131613	6999648	5	t	0	2015-06-02 02:50:43.730804-06	25
4	/	/dev/cciss/c0d0p1	10	131613	7701212	6	t	0	2015-06-02 02:50:44.003751-06	22
5	/	/dev/cciss/c0d0p1	10	131613	6047808	5	t	0	2015-06-02 02:50:44.262385-06	21
6	/	/dev/cciss/c0d0p1	10	131613	6255136	5	t	0	2015-06-02 02:50:44.516611-06	24
7	/	/dev/cciss/c0d0p1	10	131613	5717656	4	t	0	2015-06-02 02:50:44.824542-06	23
8	/	/dev/cciss/c0d0p1	-1	131613	5723556	4	t	0	2015-06-02 02:50:45.064165-06	28
9	/	/dev/cciss/c0d0p1	-1	267216	52008068	20	t	0	2015-06-02 02:50:45.319823-06	27
10	/	/dev/cciss/c0d0p1	-1	267216	6108196	2	t	0	2015-06-02 02:50:45.555414-06	3
11	/	/dev/mapper/isw_dabchajehg_Volume0p1	-1	434950	5951580	1	t	0	2015-06-02 02:50:45.820919-06	2
12	/	/dev/mapper/isw_chhdbgcicj_Volume0p1	-1	434950	9376724	2	t	0	2015-06-02 02:50:46.059922-06	5
13	/	/dev/mapper/isw_ibcdbcgdj_Volume0p1	-1	434950	8566108	2	t	0	2015-06-02 02:50:46.312068-06	4
14	/	/dev/mapper/isw_cebhehfb_Volume0p1	-1	434950	15717488	4	t	0	2015-06-02 02:50:46.551295-06	7
15	/	/dev/mapper/isw_baibghhjeb_Volume0p1	-1	434950	9181760	2	t	0	2015-06-02 02:50:46.872835-06	6
16	/	/dev/mapper/isw_ghgaadaha_Volume0p1	-1	434950	8466096	2	t	0	2015-06-02 02:50:47.145042-06	9
17	/	/dev/mapper/isw_ibefbhjj_Volume0p1	-1	434950	10482460	2	t	0	2015-06-02 02:50:47.384657-06	8
18	/	/dev/mapper/isw_gehhjefah_Volume0p1	-1	434950	9643880	2	t	0	2015-06-02 02:50:47.62308-06	11
19	/	/dev/mapper/isw_bghccaicai_Volume0p1	10	434950	7756428	2	t	0	2015-06-02 02:50:47.89158-06	10
20	/	/dev/mapper/isw_dfehadfdea_Volume0p1	-1	434950	12909800	3	t	0	2015-06-02 02:50:48.138988-06	14
21	/	/dev/mapper/isw_dejhdciehc_Volume0p1	-1	434950	10940396	3	t	0	2015-06-02 02:50:48.388906-06	15
22	/	/dev/mapper/isw_ciccdiccdd_Volume0p1	15	434950	194828512	46	t	0	2015-06-02 02:50:48.638212-06	16
23	/	/dev/mapper/isw_bjbjjdbiia_Volume0p1	-1	434950	9768952	2	t	0	2015-06-02 02:50:48.899648-06	17
24	/	/dev/mapper/isw_dbdiebdeif_Volume0p1	-1	434950	9727460	2	t	0	2015-06-02 02:50:49.204288-06	18
25	/	/dev/mapper/isw_bigfcdegdh_Volume0p1	-1	434950	5833176	1	t	0	2015-06-02 02:50:49.443622-06	19
26	/	/dev/mapper/isw_echjejbch_Volume0p1	-1	434950	9092132	2	t	0	2015-06-02 02:50:49.690611-06	20
27	/	/dev/md0	10	3760	2510732	69	t		2015-06-02 02:50:49.965788-06	12
28	/home	/dev/md2	10	19225	1680260	9	t		2015-06-02 02:50:50.010112-06	12
29	/home/rec	/dev/md3	10	907905	436030124	49	t		2015-06-02 02:50:50.055314-06	12
30	/var	/dev/md1	10	3759	175172	5	t		2015-06-02 02:50:50.09777-06	12
31	/	/dev/hdc2	15	3760	2231516	61	t		2015-06-02 02:50:50.362662-06	13
32	/home	/dev/hdc6	15	19225	3655216	20	t		2015-06-02 02:50:50.401858-06	13
33	/home/rec	/dev/hdc7	15	438459	64764204	15	t		2015-06-02 02:50:50.449604-06	13
34	/	/dev/cciss/c0d0p1	15	131613	29695	24	t	0	2015-06-02 02:52:13.47325-06	1
35	/	/dev/cciss/c0d0p1	10	131613	7767	6	t	0	2015-06-02 02:52:13.762046-06	26
36	/	/dev/cciss/c0d0p1	10	131613	6835	5	t	0	2015-06-02 02:52:14.030253-06	25
37	/	/dev/cciss/c0d0p1	10	131613	7521	6	t	0	2015-06-02 02:52:14.299131-06	22
38	/	/dev/cciss/c0d0p1	10	131613	5906	5	t	0	2015-06-02 02:52:14.537506-06	21
39	/	/dev/cciss/c0d0p1	10	131613	6108	5	t	0	2015-06-02 02:52:14.841924-06	24
40	/	/dev/cciss/c0d0p1	10	131613	5583	4	t	0	2015-06-02 02:52:15.069285-06	23
41	/	/dev/cciss/c0d0p1	-1	131613	5589	4	t	0	2015-06-02 02:52:15.317093-06	28
42	/	/dev/cciss/c0d0p1	-1	267216	50789	20	t	0	2015-06-02 02:52:15.566862-06	27
43	/	/dev/cciss/c0d0p1	-1	267216	5965	2	t	0	2015-06-02 02:52:15.875418-06	3
44	/	/dev/mapper/isw_dabchajehg_Volume0p1	-1	434950	5812	1	t	0	2015-06-02 02:52:16.153729-06	2
45	/	/dev/mapper/isw_chhdbgcicj_Volume0p1	-1	434950	9163	2	t	0	2015-06-02 02:52:16.430125-06	5
46	/	/dev/mapper/isw_ibcdbcgdj_Volume0p1	-1	434950	8372	2	t	0	2015-06-02 02:52:16.713713-06	4
47	/	/dev/mapper/isw_cebhehfb_Volume0p1	-1	434950	15355	4	t	0	2015-06-02 02:52:16.9902-06	7
48	/	/dev/mapper/isw_baibghhjeb_Volume0p1	-1	434950	8973	2	t	0	2015-06-02 02:52:17.311704-06	6
49	/	/dev/mapper/isw_ghgaadaha_Volume0p1	-1	434950	8267	2	t	0	2015-06-02 02:52:17.638492-06	9
50	/	/dev/mapper/isw_ibefbhjj_Volume0p1	-1	434950	10243	2	t	0	2015-06-02 02:52:17.891564-06	8
51	/	/dev/mapper/isw_gehhjefah_Volume0p1	-1	434950	9424	2	t	0	2015-06-02 02:52:18.161392-06	11
52	/	/dev/mapper/isw_bghccaicai_Volume0p1	10	434950	7581	2	t	0	2015-06-02 02:52:18.450537-06	10
53	/	/dev/mapper/isw_dfehadfdea_Volume0p1	-1	434950	12607	3	t	0	2015-06-02 02:52:18.736941-06	14
54	/	/dev/mapper/isw_dejhdciehc_Volume0p1	-1	434950	10690	3	t	0	2015-06-02 02:52:19.007222-06	15
55	/	/dev/mapper/isw_ciccdiccdd_Volume0p1	15	434950	190262	46	t	0	2015-06-02 02:52:19.292566-06	16
56	/	/dev/mapper/isw_bjbjjdbiia_Volume0p1	-1	434950	9546	2	t	0	2015-06-02 02:52:19.568156-06	17
57	/	/dev/mapper/isw_dbdiebdeif_Volume0p1	-1	434950	9506	2	t	0	2015-06-02 02:52:19.864988-06	18
58	/	/dev/mapper/isw_bigfcdegdh_Volume0p1	-1	434950	5696	1	t	0	2015-06-02 02:52:20.150708-06	19
59	/	/dev/mapper/isw_echjejbch_Volume0p1	-1	434950	8885	2	t	0	2015-06-02 02:52:20.421284-06	20
60	/	/dev/md0	10	3760	2451	69	t		2015-06-02 02:52:20.722866-06	12
61	/home	/dev/md2	10	19225	1640	9	t		2015-06-02 02:52:20.776319-06	12
62	/home/rec	/dev/md3	10	907905	425810	49	t		2015-06-02 02:52:20.829076-06	12
63	/var	/dev/md1	10	3759	171	5	t		2015-06-02 02:52:20.877296-06	12
64	/	/dev/hdc2	15	3760	2179	61	t		2015-06-02 02:52:21.178602-06	13
65	/home	/dev/hdc6	15	19225	3569	20	t		2015-06-02 02:52:21.241156-06	13
66	/home/rec	/dev/hdc7	15	438459	63246	15	t		2015-06-02 02:52:21.293008-06	13
67	/	/dev/cciss/c0d0p1	15	131613	29695	24	f	0	2015-06-02 02:53:30.016247-06	1
68	/	/dev/cciss/c0d0p1	10	131613	7767	6	f	0	2015-06-02 02:53:30.28519-06	26
69	/	/dev/cciss/c0d0p1	10	131613	6836	5	f	0	2015-06-02 02:53:30.569599-06	25
70	/	/dev/cciss/c0d0p1	10	131613	7521	6	f	0	2015-06-02 02:53:30.85999-06	22
71	/	/dev/cciss/c0d0p1	10	131613	5906	5	f	0	2015-06-02 02:53:31.141233-06	21
72	/	/dev/cciss/c0d0p1	10	131613	6108	5	f	0	2015-06-02 02:53:31.406017-06	24
73	/	/dev/cciss/c0d0p1	10	131613	5583	4	f	0	2015-06-02 02:53:31.725489-06	23
74	/	/dev/cciss/c0d0p1	-1	131613	5589	4	f	0	2015-06-02 02:53:32.018888-06	28
75	/	/dev/cciss/c0d0p1	-1	267216	50789	20	f	0	2015-06-02 02:53:32.321383-06	27
76	/	/dev/cciss/c0d0p1	-1	267216	5965	2	f	0	2015-06-02 02:53:32.567543-06	3
77	/	/dev/mapper/isw_dabchajehg_Volume0p1	-1	434950	5812	1	f	0	2015-06-02 02:53:32.836371-06	2
78	/	/dev/mapper/isw_chhdbgcicj_Volume0p1	-1	434950	9169	2	f	0	2015-06-02 02:53:33.108293-06	5
79	/	/dev/mapper/isw_ibcdbcgdj_Volume0p1	-1	434950	8377	2	f	0	2015-06-02 02:53:33.385727-06	4
80	/	/dev/mapper/isw_cebhehfb_Volume0p1	-1	434950	15361	4	f	0	2015-06-02 02:53:33.68583-06	7
81	/	/dev/mapper/isw_baibghhjeb_Volume0p1	-1	434950	8979	2	f	0	2015-06-02 02:53:33.998736-06	6
82	/	/dev/mapper/isw_ghgaadaha_Volume0p1	-1	434950	8267	2	f	0	2015-06-02 02:53:34.276693-06	9
83	/	/dev/mapper/isw_ibefbhjj_Volume0p1	-1	434950	10249	2	f	0	2015-06-02 02:53:34.702179-06	8
84	/	/dev/mapper/isw_gehhjefah_Volume0p1	-1	434950	9430	2	f	0	2015-06-02 02:53:35.082675-06	11
85	/	/dev/mapper/isw_bghccaicai_Volume0p1	10	434950	7587	2	f	0	2015-06-02 02:53:35.348891-06	10
86	/	/dev/mapper/isw_dfehadfdea_Volume0p1	-1	434950	12607	3	f	0	2015-06-02 02:53:35.614598-06	14
87	/	/dev/mapper/isw_dejhdciehc_Volume0p1	-1	434950	10696	3	f	0	2015-06-02 02:53:35.866508-06	15
88	/	/dev/mapper/isw_ciccdiccdd_Volume0p1	15	434950	190262	46	f	0	2015-06-02 02:53:36.160167-06	16
89	/	/dev/mapper/isw_bjbjjdbiia_Volume0p1	-1	434950	9552	2	f	0	2015-06-02 02:53:36.432705-06	17
90	/	/dev/mapper/isw_dbdiebdeif_Volume0p1	-1	434950	9512	2	f	0	2015-06-02 02:53:36.900984-06	18
91	/	/dev/mapper/isw_bigfcdegdh_Volume0p1	-1	434950	5696	1	f	0	2015-06-02 02:53:37.186271-06	19
92	/	/dev/mapper/isw_echjejbch_Volume0p1	-1	434950	8891	2	f	0	2015-06-02 02:53:37.458175-06	20
93	/	/dev/md0	10	3760	2451	69	f		2015-06-02 02:53:37.768637-06	12
94	/home	/dev/md2	10	19225	1640	9	f		2015-06-02 02:53:37.824138-06	12
95	/home/rec	/dev/md3	10	907905	425810	49	f		2015-06-02 02:53:37.877651-06	12
96	/var	/dev/md1	10	3759	171	5	f		2015-06-02 02:53:37.933449-06	12
97	/	/dev/hdc2	15	3760	2179	61	f		2015-06-02 02:53:38.228639-06	13
98	/home	/dev/hdc6	15	19225	3569	20	f		2015-06-02 02:53:38.322096-06	13
99	/home/rec	/dev/hdc7	15	438459	63246	15	f		2015-06-02 02:53:38.404657-06	13
100	/	/dev/cciss/c0d0p1	15	131613	29697	24	f	0	2015-06-02 03:09:59.684635-06	1
101	/	/dev/cciss/c0d0p1	10	131613	7768	6	f	0	2015-06-02 03:10:07.289554-06	26
102	/	/dev/cciss/c0d0p1	10	131613	6841	5	f	0	2015-06-02 03:10:12.625213-06	25
103	/	/dev/cciss/c0d0p1	10	131613	7526	6	f	0	2015-06-02 03:10:18.297133-06	22
104	/	/dev/cciss/c0d0p1	10	131613	5908	5	f	0	2015-06-02 03:10:23.795221-06	21
105	/	/dev/cciss/c0d0p1	10	131613	6110	5	f	0	2015-06-02 03:10:29.748306-06	24
106	/	/dev/cciss/c0d0p1	10	131613	5584	4	f	0	2015-06-02 03:10:34.201311-06	23
107	/	/dev/cciss/c0d0p1	-1	131613	5590	4	f	0	2015-06-02 03:10:38.16535-06	28
108	/	/dev/cciss/c0d0p1	-1	267216	50790	20	f	0	2015-06-02 03:10:42.102133-06	27
109	/	/dev/cciss/c0d0p1	-1	267216	5966	2	f	0	2015-06-02 03:10:46.159568-06	3
110	/	/dev/mapper/isw_dabchajehg_Volume0p1	-1	434950	5812	1	f	0	2015-06-02 03:10:48.740053-06	2
111	/	/dev/mapper/isw_chhdbgcicj_Volume0p1	-1	434950	8969	2	f	0	2015-06-02 03:10:51.257432-06	5
112	/	/dev/mapper/isw_ibcdbcgdj_Volume0p1	-1	434950	8178	2	f	0	2015-06-02 03:10:53.801538-06	4
113	/	/dev/mapper/isw_cebhehfb_Volume0p1	-1	434950	15162	4	f	0	2015-06-02 03:10:56.272085-06	7
114	/	/dev/mapper/isw_baibghhjeb_Volume0p1	-1	434950	8779	2	f	0	2015-06-02 03:10:58.693626-06	6
115	/	/dev/mapper/isw_ghgaadaha_Volume0p1	-1	434950	8268	2	f	0	2015-06-02 03:11:01.066415-06	9
116	/	/dev/mapper/isw_ibefbhjj_Volume0p1	-1	434950	10050	2	f	0	2015-06-02 03:11:03.759687-06	8
117	/	/dev/mapper/isw_gehhjefah_Volume0p1	-1	434950	9231	2	f	0	2015-06-02 03:11:06.10433-06	11
118	/	/dev/mapper/isw_bghccaicai_Volume0p1	10	434950	7388	2	f	0	2015-06-02 03:11:08.942853-06	10
119	/	/dev/mapper/isw_dfehadfdea_Volume0p1	-1	434950	12608	3	f	0	2015-06-02 03:11:11.367245-06	14
120	/	/dev/mapper/isw_dejhdciehc_Volume0p1	-1	434950	10498	3	f	0	2015-06-02 03:11:13.789537-06	15
121	/	/dev/mapper/isw_ciccdiccdd_Volume0p1	15	434950	190263	46	f	0	2015-06-02 03:11:16.599474-06	16
122	/	/dev/mapper/isw_bjbjjdbiia_Volume0p1	-1	434950	9354	2	f	0	2015-06-02 03:11:19.118167-06	17
123	/	/dev/mapper/isw_dbdiebdeif_Volume0p1	-1	434950	9314	2	f	0	2015-06-02 03:11:21.613923-06	18
124	/	/dev/mapper/isw_bigfcdegdh_Volume0p1	-1	434950	5697	1	f	0	2015-06-02 03:11:24.36853-06	19
125	/	/dev/mapper/isw_echjejbch_Volume0p1	-1	434950	8694	2	f	0	2015-06-02 03:11:26.574859-06	20
\.


--
-- Name: gestion_red_diskhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_diskhistory_id_seq', 125, true);


--
-- Data for Name: gestion_red_generalevent; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_generalevent (id, tabla, uptime, item, warning, mensaje, leido, fecha, host_id) FROM stdin;
1	laTable	30	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 03:12:21.848196-06	16
2	process table	30	dhcpd	t	Too few dhcpd running (# = 0)	f	2015-06-02 03:12:21.918835-06	16
3	process table	30	snmptrapd	t	Too few snmptrapd running (# = 0)	f	2015-06-02 03:12:21.970998-06	16
4	laTable	18564	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 04:48:17.361788-06	1
5	laTable	18564	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 04:48:17.451532-06	1
6	laTable	18569	Load-1	f		f	2015-06-02 04:48:22.365779-06	1
7	laTable	18594	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 04:48:47.367396-06	1
8	laTable	18594	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 04:48:47.447272-06	1
9	laTable	18629	Load-1	f		f	2015-06-02 04:49:22.39672-06	1
10	laTable	21850	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 05:43:03.52459-06	1
11	laTable	21850	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 05:43:03.611135-06	1
12	laTable	21895	Load-1	f		f	2015-06-02 05:43:48.534679-06	1
13	laTable	21900	Load-1	t	1 min Load Average too high (= 1.13)	f	2015-06-02 05:43:53.537199-06	1
14	laTable	21900	Load-1	t	1 min Load Average too high (= 1.13)	f	2015-06-02 05:43:53.640433-06	1
15	laTable	21935	Load-1	f		f	2015-06-02 05:44:28.560935-06	1
16	laTable	25207	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 06:38:59.736045-06	1
17	laTable	25207	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 06:38:59.830222-06	1
18	laTable	25217	Load-1	f		f	2015-06-02 06:39:09.740288-06	1
19	laTable	25222	Load-1	t	1 min Load Average too high (= 1.09)	f	2015-06-02 06:39:14.72618-06	1
20	laTable	25222	Load-1	t	1 min Load Average too high (= 1.09)	f	2015-06-02 06:39:14.801162-06	1
21	laTable	25237	Load-1	f		f	2015-06-02 06:39:29.72856-06	1
22	laTable	25637	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 06:46:09.884619-06	1
23	laTable	25637	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 06:46:09.961886-06	1
24	laTable	25647	Load-1	f		f	2015-06-02 06:46:19.882751-06	1
25	laTable	25662	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 06:46:34.889002-06	1
26	laTable	25662	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 06:46:34.975665-06	1
27	laTable	25667	Load-1	f		f	2015-06-02 06:46:39.884357-06	1
28	laTable	25692	Load-1	t	1 min Load Average too high (= 1.13)	f	2015-06-02 06:47:04.901758-06	1
29	laTable	25692	Load-1	t	1 min Load Average too high (= 1.13)	f	2015-06-02 06:47:04.97506-06	1
30	laTable	25707	Load-1	f		f	2015-06-02 06:47:19.900194-06	1
31	laTable	28443	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 07:32:55.897803-06	1
32	laTable	28443	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 07:32:55.987947-06	1
33	laTable	28453	Load-1	f		f	2015-06-02 07:33:05.899428-06	1
34	laTable	28458	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 07:33:10.904819-06	1
35	laTable	28458	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 07:33:11.0076-06	1
36	laTable	28533	Load-1	f		f	2015-06-02 07:34:25.939925-06	1
37	laTable	31324	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 08:20:57.396917-06	1
38	laTable	31324	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 08:20:57.650102-06	1
39	laTable	31329	Load-1	f		f	2015-06-02 08:21:01.898933-06	1
40	laTable	31349	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:21:21.904492-06	1
41	laTable	31349	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:21:22.000142-06	1
42	laTable	31359	Load-1	f		f	2015-06-02 08:21:31.905233-06	1
43	laTable	31779	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:28:32.062521-06	1
44	laTable	31779	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:28:32.145241-06	1
45	laTable	31789	Load-1	f		f	2015-06-02 08:28:42.06301-06	1
46	laTable	31804	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:28:57.064008-06	1
47	laTable	31804	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:28:57.147798-06	1
48	laTable	31809	Load-1	f		f	2015-06-02 08:29:02.07351-06	1
49	laTable	31814	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:29:07.074445-06	1
50	laTable	31814	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:29:07.159647-06	1
51	laTable	31819	Load-1	f		f	2015-06-02 08:29:12.070834-06	1
52	laTable	31829	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:29:22.070274-06	1
53	laTable	31829	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-02 08:29:22.147848-06	1
54	laTable	31849	Load-1	f		f	2015-06-02 08:29:42.074493-06	1
55	laTable	34760	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 09:18:13.146945-06	1
56	laTable	34760	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 09:18:13.222513-06	1
57	laTable	34765	Load-1	f		f	2015-06-02 09:18:18.143651-06	1
58	laTable	38156	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:14:49.367289-06	1
59	laTable	38156	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:14:49.446088-06	1
60	laTable	38161	Load-1	f		f	2015-06-02 10:14:54.369183-06	1
61	laTable	38171	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 10:15:04.373593-06	1
62	laTable	38171	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 10:15:04.450682-06	1
63	laTable	38191	Load-1	f		f	2015-06-02 10:15:24.371646-06	1
64	laTable	38196	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:15:29.378792-06	1
65	laTable	38196	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:15:29.463192-06	1
66	laTable	38201	Load-1	f		f	2015-06-02 10:15:34.385116-06	1
67	laTable	38206	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:15:39.378054-06	1
68	laTable	38206	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:15:39.481467-06	1
69	laTable	38211	Load-1	f		f	2015-06-02 10:15:44.383651-06	1
70	laTable	38216	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:15:49.388035-06	1
71	laTable	38216	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 10:15:49.478784-06	1
72	laTable	38221	Load-1	f		f	2015-06-02 10:15:54.386278-06	1
73	laTable	41072	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 11:03:25.400675-06	1
74	laTable	41072	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 11:03:25.482604-06	1
75	laTable	41082	Load-1	f		f	2015-06-02 11:03:35.391161-06	1
76	laTable	41087	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 11:03:40.398586-06	1
77	laTable	41087	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 11:03:40.508685-06	1
78	laTable	41092	Load-1	f		f	2015-06-02 11:03:45.396943-06	1
79	laTable	41112	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 11:04:05.506731-06	1
80	laTable	41112	Load-1	t	1 min Load Average too high (= 1.04)	f	2015-06-02 11:04:05.592006-06	1
81	laTable	41122	Load-1	f		f	2015-06-02 11:04:15.407997-06	1
82	laTable	44333	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 11:57:46.539836-06	1
83	laTable	44333	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-02 11:57:46.62324-06	1
84	laTable	44338	Load-1	f		f	2015-06-02 11:57:51.551372-06	1
85	laTable	44423	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 11:59:16.579906-06	1
86	laTable	44423	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-02 11:59:16.660154-06	1
87	laTable	44428	Load-1	f		f	2015-06-02 11:59:21.572218-06	1
88	laTable	82877	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 22:40:10.343701-06	1
89	laTable	82877	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 22:40:10.524069-06	1
90	laTable	82882	Load-1	f		f	2015-06-02 22:40:14.58085-06	1
91	laTable	85733	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 23:27:45.387709-06	1
92	laTable	85733	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-02 23:27:45.503269-06	1
93	laTable	85738	Load-1	f		f	2015-06-02 23:27:50.289658-06	1
94	laTable	86193	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 23:35:25.475933-06	1
95	laTable	86193	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-02 23:35:25.557332-06	1
96	laTable	86198	Load-1	f		f	2015-06-02 23:35:30.475999-06	1
97	laTable	86213	Load-1	t	1 min Load Average too high (= 1.05)	f	2015-06-02 23:35:45.479618-06	1
98	laTable	86213	Load-1	t	1 min Load Average too high (= 1.05)	f	2015-06-02 23:35:45.566067-06	1
99	laTable	86218	Load-1	f		f	2015-06-02 23:35:50.474295-06	1
100	laTable	91895	Load-1	t	1 min Load Average too high (= 1.16)	f	2015-06-03 01:10:27.526388-06	1
101	laTable	91895	Load-1	t	1 min Load Average too high (= 1.16)	f	2015-06-03 01:10:27.632518-06	1
102	laTable	91915	Load-1	f		f	2015-06-03 01:10:47.538081-06	1
103	laTable	91920	Load-1	t	1 min Load Average too high (= 1.13)	f	2015-06-03 01:10:52.543532-06	1
104	laTable	91920	Load-1	t	1 min Load Average too high (= 1.13)	f	2015-06-03 01:10:52.616084-06	1
105	laTable	91935	Load-1	f		f	2015-06-03 01:11:07.538174-06	1
106	laTable	91940	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 01:11:12.54526-06	1
107	laTable	91940	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 01:11:12.626136-06	1
108	laTable	91965	Load-1	f		f	2015-06-03 01:11:37.547686-06	1
109	laTable	94776	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 01:58:28.581991-06	1
110	laTable	94776	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 01:58:28.673097-06	1
111	laTable	94781	Load-1	f		f	2015-06-03 01:58:33.58462-06	1
112	laTable	95231	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 02:06:03.784931-06	1
113	laTable	95231	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 02:06:03.873449-06	1
114	laTable	95241	Load-1	f		f	2015-06-03 02:06:13.778893-06	1
115	laTable	95256	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-03 02:06:28.782058-06	1
116	laTable	95256	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-03 02:06:28.860839-06	1
117	laTable	95261	Load-1	f		f	2015-06-03 02:06:33.787032-06	1
118	laTable	95266	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 02:06:38.783185-06	1
119	laTable	95266	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 02:06:38.883988-06	1
120	laTable	95271	Load-1	f		f	2015-06-03 02:06:43.780469-06	1
121	laTable	98037	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-03 02:52:49.795308-06	1
122	laTable	98037	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-03 02:52:49.871513-06	1
123	laTable	98047	Load-1	f		f	2015-06-03 02:52:59.798466-06	1
124	laTable	98062	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-03 02:53:14.81227-06	1
125	laTable	98062	Load-1	t	1 min Load Average too high (= 1.06)	f	2015-06-03 02:53:14.894628-06	1
126	laTable	98067	Load-1	f		f	2015-06-03 02:53:19.812457-06	1
127	laTable	98087	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 02:53:39.812604-06	1
128	laTable	98087	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 02:53:39.919379-06	1
129	laTable	98097	Load-1	f		f	2015-06-03 02:53:49.816947-06	1
130	laTable	100943	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 03:41:15.844111-06	1
131	laTable	100943	Load-1	t	1 min Load Average too high (= 1.00)	f	2015-06-03 03:41:15.926951-06	1
132	laTable	100953	Load-1	f		f	2015-06-03 03:41:25.854515-06	1
133	laTable	101398	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 03:48:51.00134-06	1
134	laTable	101398	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 03:48:51.080126-06	1
135	laTable	101403	Load-1	f		f	2015-06-03 03:48:56.003618-06	1
136	laTable	101448	Load-1	t	1 min Load Average too high (= 1.16)	f	2015-06-03 03:49:41.023496-06	1
137	laTable	101448	Load-1	t	1 min Load Average too high (= 1.16)	f	2015-06-03 03:49:41.100222-06	1
138	laTable	101463	Load-1	f		f	2015-06-03 03:49:56.020207-06	1
139	laTable	104329	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-03 04:37:42.074204-06	1
140	laTable	104329	Load-1	t	1 min Load Average too high (= 1.01)	f	2015-06-03 04:37:42.216183-06	1
141	laTable	104334	Load-1	f		f	2015-06-03 04:37:47.079471-06	1
142	laTable	104339	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-03 04:37:52.076719-06	1
143	laTable	104339	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-03 04:37:52.178772-06	1
144	laTable	104344	Load-1	f		f	2015-06-03 04:37:57.093295-06	1
145	laTable	104349	Load-1	t	1 min Load Average too high (= 1.18)	f	2015-06-03 04:38:02.09613-06	1
146	laTable	104349	Load-1	t	1 min Load Average too high (= 1.18)	f	2015-06-03 04:38:02.175053-06	1
147	laTable	104374	Load-1	f		f	2015-06-03 04:38:27.095989-06	1
148	laTable	104829	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-03 04:46:02.257006-06	1
149	laTable	104829	Load-1	t	1 min Load Average too high (= 1.02)	f	2015-06-03 04:46:02.336901-06	1
150	laTable	104834	Load-1	f		f	2015-06-03 04:46:07.255148-06	1
151	laTable	104839	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 04:46:12.255377-06	1
152	laTable	104839	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 04:46:12.356716-06	1
153	laTable	104844	Load-1	f		f	2015-06-03 04:46:17.255541-06	1
154	laTable	104854	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 04:46:27.265312-06	1
155	laTable	104854	Load-1	t	1 min Load Average too high (= 1.03)	f	2015-06-03 04:46:27.340136-06	1
156	laTable	104864	Load-1	f		f	2015-06-03 04:46:37.259599-06	1
157	laTable	110491	Load-1	t	1 min Load Average too high (= 1.05)	f	2015-06-03 06:20:24.30915-06	1
158	laTable	110491	Load-1	t	1 min Load Average too high (= 1.05)	f	2015-06-03 06:20:24.395517-06	1
159	laTable	110496	Load-1	f		f	2015-06-03 06:20:29.304284-06	1
\.


--
-- Name: gestion_red_generalevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_generalevent_id_seq', 159, true);


--
-- Data for Name: gestion_red_host; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_host (id, direccion, nombre, descripcion, ubicacion, uptime, servicios, procesos, usuarios, alarma_discos, alarma_procesos, alarma_procesador, alarma_memoria, esta_conectado, fecha, actualizado) FROM stdin;
11	10.160.80.18	mana18	Linux mana18 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		5897988	15	178	0	f	f	f	f	t	2015-06-02 02:49:36.044332-06	2015-06-03 06:47:00.100505-06
23	10.160.80.7	mana7	Linux mana7 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3180567	3	315	2	f	f	f	f	t	2015-06-02 02:49:37.682751-06	2015-06-03 06:46:55.761953-06
18	10.160.80.24	mana24	Linux mana24 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		4832074	50	171	0	f	f	f	f	t	2015-06-02 02:49:36.987582-06	2015-06-03 06:47:02.515777-06
1	10.160.80.1	mana1	Linux mana1 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		2581786	1	352	4	f	f	f	f	t	2015-06-02 02:49:24.796026-06	2015-06-03 06:46:53.039993-06
4	10.160.80.13	mana13	Linux mana13 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		1467638	51	166	0	f	f	f	f	t	2015-06-02 02:49:35.11112-06	2015-06-03 06:46:58.128029-06
10	10.160.80.19	mana19	Linux mana19 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3791641	46	165	0	f	f	f	f	t	2015-06-02 02:49:35.91472-06	2015-06-03 06:47:00.543004-06
28	10.160.80.8	mana8	Linux mana8 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3507853	3	318	2	f	f	f	f	t	2015-06-02 02:49:38.477396-06	2015-06-03 06:46:56.143499-06
19	10.160.80.25	mana25	Linux mana25 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3789779	27	160	1	f	f	f	f	t	2015-06-02 02:49:37.128171-06	2015-06-03 06:47:02.899914-06
26	10.160.80.2	mana2	Linux mana2 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		2996660	3	349	3	f	f	f	f	t	2015-06-02 02:49:38.138176-06	2015-06-03 06:46:53.448584-06
14	10.160.80.20	mana20	Linux mana20 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		861727	33	160	0	f	f	f	f	t	2015-06-02 02:49:36.418025-06	2015-06-03 06:47:00.938118-06
7	10.160.80.14	mana14	Linux mana14 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		4737731	66	167	0	f	f	f	f	t	2015-06-02 02:49:35.536364-06	2015-06-03 06:46:58.521744-06
27	10.160.80.9	mana9	Linux mana9 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3165014	7	317	0	f	f	f	f	t	2015-06-02 02:49:38.286908-06	2015-06-03 06:46:56.517017-06
20	10.160.80.26	mana26	Linux mana26 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		4117028	36	164	0	f	f	f	f	t	2015-06-02 02:49:37.277475-06	2015-06-03 06:47:03.32813-06
25	10.160.80.3	mana3	Linux mana3 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3007772	2	326	2	f	f	f	f	t	2015-06-02 02:49:37.996807-06	2015-06-03 06:46:53.862624-06
6	10.160.80.15	mana15	Linux mana15 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		5898007	50	163	0	f	f	f	f	t	2015-06-02 02:49:35.419669-06	2015-06-03 06:46:58.910362-06
15	10.160.80.21	mana21	Linux mana21 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3769613	51	168	0	f	f	f	f	t	2015-06-02 02:49:36.544277-06	2015-06-03 06:47:01.323211-06
3	10.160.80.10	mana10	Linux mana10 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3179518	5	321	0	f	f	f	f	t	2015-06-02 02:49:34.986637-06	2015-06-03 06:46:56.908499-06
12	10.160.80.190	DMR	Linux DMR 2.4.27-2-686-smp #1 SMP Mon May 16 16:55:31 JST 2005 i686		77195	10	180	1	f	f	f	t	t	2015-06-02 02:49:36.176463-06	2015-06-03 06:47:03.76432-06
22	10.160.80.4	mana4	Linux mana4 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3011683	5	326	2	f	f	f	f	t	2015-06-02 02:49:37.551501-06	2015-06-03 06:46:54.256491-06
9	10.160.80.16	mana16	Linux mana16 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		861470	20	158	0	f	f	f	f	t	2015-06-02 02:49:35.795983-06	2015-06-03 06:46:59.303241-06
16	10.160.80.22	mana22	Linux mana22 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		415350	0	190	5	f	t	t	f	t	2015-06-02 02:49:36.684349-06	2015-06-03 06:47:01.72513-06
2	10.160.80.11	mana11	Linux mana11 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3977285	88	160	0	f	f	f	f	t	2015-06-02 02:49:34.845604-06	2015-06-03 06:46:57.301669-06
13	10.160.80.192	DMR	Linux DMR 2.4.27-2-686-smp #1 SMP Mon May 16 16:55:31 JST 2005 i686		3789169	0	87	1	f	t	f	f	t	2015-06-02 02:49:36.294029-06	2015-06-03 06:47:04.107885-06
21	10.160.80.5	mana5	Linux mana5 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3011966	5	342	3	f	f	f	f	t	2015-06-02 02:49:37.420125-06	2015-06-03 06:46:54.701846-06
8	10.160.80.17	mana17	Linux mana17 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		4891556	72	168	0	f	f	f	f	t	2015-06-02 02:49:35.658334-06	2015-06-03 06:46:59.707282-06
17	10.160.80.23	mana23	Linux mana23 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		3771715	68	168	0	f	f	f	f	t	2015-06-02 02:49:36.842399-06	2015-06-03 06:47:02.122837-06
5	10.160.80.12	mana12	Linux mana12 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		4397071	62	164	0	f	f	f	f	t	2015-06-02 02:49:35.27854-06	2015-06-03 06:46:57.74227-06
24	10.160.80.6	mana6	Linux mana6 2.6.18-274.el5 #1 SMP Fri Jul 8 17:36:59 EDT 2011 x86_64		585702	3	341	2	f	f	f	f	t	2015-06-02 02:49:37.849261-06	2015-06-03 06:46:55.388873-06
\.


--
-- Name: gestion_red_host_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_host_id_seq', 28, true);


--
-- Data for Name: gestion_red_interfaceevent; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_interfaceevent (id, uptime, tipo, nombre, estado_operacional, estado_administrativo, leido, fecha, host_id) FROM stdin;
1	60	linkUp	lo	up	up	f	2015-06-02 03:12:51.883019-06	16
2	60	linkUp	eth0	up	up	f	2015-06-02 03:12:51.979364-06	16
3	60	linkUp	eth1	up	up	f	2015-06-02 03:12:52.079098-06	16
4	60	linkDown	eth2	up	down	f	2015-06-02 03:12:52.185034-06	16
5	60	linkDown	sit0	down	down	f	2015-06-02 03:12:52.27272-06	16
\.


--
-- Name: gestion_red_interfaceevent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_interfaceevent_id_seq', 5, true);


--
-- Data for Name: gestion_red_loadavghistory; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_loadavghistory (id, load1, load5, load15, threshold1, threshold5, threshold15, flag1, flag5, flag15, msg1, msg5, msg15, created, host_id) FROM stdin;
1	0.0200000000000000004	0.0700000000000000067	0.149999999999999994	1	1	1	f	f	f				2015-06-02 03:09:55.89926-06	1
2	0.0599999999999999978	0.0500000000000000028	0.0100000000000000002	12	12	14	f	f	f				2015-06-02 03:10:03.821571-06	26
3	0.0899999999999999967	0.140000000000000013	0.100000000000000006	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:10:11.069388-06	25
4	0.140000000000000013	0.160000000000000003	0.110000000000000001	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:10:16.736138-06	22
5	0	0	0	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:10:22.07848-06	21
6	0	0	0	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:10:27.545509-06	24
7	0.0100000000000000002	0.110000000000000001	0.119999999999999996	12	12	12	f	f	f				2015-06-02 03:10:33.487212-06	23
8	0.0500000000000000028	0.110000000000000001	0.0899999999999999967	12	12	12	f	f	f				2015-06-02 03:10:37.963972-06	28
9	0.0200000000000000004	0.149999999999999994	0.140000000000000013	12	12	12	f	f	f				2015-06-02 03:10:41.916629-06	27
10	0.0100000000000000002	0.130000000000000004	0.100000000000000006	12	12	12	f	f	f				2015-06-02 03:10:45.9684-06	3
11	0.0400000000000000008	0.110000000000000001	0.0400000000000000008	12	12	12	f	f	f				2015-06-02 03:10:48.548699-06	2
12	0.270000000000000018	0.209999999999999992	0.179999999999999993	12	12	12	f	f	f				2015-06-02 03:10:51.06303-06	5
13	0.309999999999999998	0.280000000000000027	0.200000000000000011	12	12	12	f	f	f				2015-06-02 03:10:53.568108-06	4
14	0.280000000000000027	0.309999999999999998	0.270000000000000018	12	12	12	f	f	f				2015-06-02 03:10:56.089289-06	7
15	0.0800000000000000017	0.149999999999999994	0.190000000000000002	12	12	12	f	f	f				2015-06-02 03:10:58.503304-06	6
16	0	0.0100000000000000002	0	12	12	12	f	f	f				2015-06-02 03:11:00.883425-06	9
17	0.0899999999999999967	0.170000000000000012	0.170000000000000012	12	12	12	f	f	f				2015-06-02 03:11:03.570773-06	8
18	0.429999999999999993	0.270000000000000018	0.179999999999999993	12	12	12	f	f	f				2015-06-02 03:11:05.934061-06	11
19	0.209999999999999992	0.170000000000000012	0.160000000000000003	12	12	12	f	f	f				2015-06-02 03:11:08.039236-06	10
20	0	0	0	12	12	12	f	f	f				2015-06-02 03:11:11.184835-06	14
21	0.320000000000000007	0.160000000000000003	0.100000000000000006	12	12	12	f	f	f				2015-06-02 03:11:13.59797-06	15
22	1	1	1	0.900000000000000022	2	5.20000000000000018	t	f	f	1 min Load Average too high (= 1.00)			2015-06-02 03:11:16.0277-06	16
23	0.200000000000000011	0.220000000000000001	0.190000000000000002	12	12	12	f	f	f				2015-06-02 03:11:18.92358-06	17
24	0.110000000000000001	0.130000000000000004	0.100000000000000006	12	12	12	f	f	f				2015-06-02 03:11:21.411749-06	18
25	0.130000000000000004	0.0400000000000000008	0.0100000000000000002	12	12	12	f	f	f				2015-06-02 03:11:24.133027-06	19
26	0.100000000000000006	0.190000000000000002	0.179999999999999993	12	12	12	f	f	f				2015-06-02 03:11:26.388186-06	20
27	0.949999999999999956	0.429999999999999993	0.260000000000000009	1	1	1	f	f	f				2015-06-02 03:13:05.222732-06	1
28	0.0599999999999999978	0.0599999999999999978	0	12	12	14	f	f	f				2015-06-02 03:13:09.416699-06	26
29	0.0599999999999999978	0.110000000000000001	0.0899999999999999967	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:13:13.002438-06	25
30	0.0400000000000000008	0.110000000000000001	0.0899999999999999967	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:13:14.983169-06	22
31	0.0200000000000000004	0.0200000000000000004	0	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:13:16.797144-06	21
32	0	0	0	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-02 03:13:18.869203-06	24
33	0.0700000000000000067	0.100000000000000006	0.110000000000000001	12	12	12	f	f	f				2015-06-02 03:13:21.140634-06	23
34	0	0.0599999999999999978	0.0700000000000000067	12	12	12	f	f	f				2015-06-02 03:13:21.973049-06	28
35	0.239999999999999991	0.149999999999999994	0.140000000000000013	12	12	12	f	f	f				2015-06-02 03:13:22.447424-06	27
36	0.0200000000000000004	0.0899999999999999967	0.0800000000000000017	12	12	12	f	f	f				2015-06-02 03:13:22.871366-06	3
37	0	0.0599999999999999978	0.0299999999999999989	12	12	12	f	f	f				2015-06-02 03:13:23.312481-06	2
38	0.170000000000000012	0.170000000000000012	0.160000000000000003	12	12	12	f	f	f				2015-06-02 03:13:23.753935-06	5
39	0.170000000000000012	0.270000000000000018	0.209999999999999992	12	12	12	f	f	f				2015-06-02 03:13:24.177753-06	4
40	0.100000000000000006	0.220000000000000001	0.239999999999999991	12	12	12	f	f	f				2015-06-02 03:13:24.677202-06	7
41	0.0599999999999999978	0.130000000000000004	0.170000000000000012	12	12	12	f	f	f				2015-06-02 03:13:25.118082-06	6
42	0.0200000000000000004	0.0100000000000000002	0	12	12	12	f	f	f				2015-06-02 03:13:25.550735-06	9
43	0.100000000000000006	0.160000000000000003	0.170000000000000012	12	12	12	f	f	f				2015-06-02 03:13:25.983558-06	8
44	0.220000000000000001	0.239999999999999991	0.179999999999999993	12	12	12	f	f	f				2015-06-02 03:13:26.41635-06	11
45	0.140000000000000013	0.149999999999999994	0.149999999999999994	12	12	12	f	f	f				2015-06-02 03:13:26.924241-06	10
46	0	0	0	12	12	12	f	f	f				2015-06-02 03:13:28.089254-06	14
47	0.110000000000000001	0.160000000000000003	0.110000000000000001	12	12	12	f	f	f				2015-06-02 03:13:28.53851-06	15
48	1	1	1	0.900000000000000022	2	5.20000000000000018	t	f	f	1 min Load Average too high (= 1.00)			2015-06-02 03:13:28.970777-06	16
49	0.260000000000000009	0.209999999999999992	0.190000000000000002	12	12	12	f	f	f				2015-06-02 03:13:29.869962-06	17
50	0.130000000000000004	0.110000000000000001	0.0899999999999999967	12	12	12	f	f	f				2015-06-02 03:13:30.318754-06	18
51	0.28999999999999998	0.0899999999999999967	0.0200000000000000004	12	12	12	f	f	f				2015-06-02 03:13:30.776832-06	19
52	0.349999999999999978	0.260000000000000009	0.200000000000000011	12	12	12	f	f	f				2015-06-02 03:13:31.209577-06	20
53	0.149999999999999994	0.110000000000000001	0.0400000000000000008	0.0100000000000000002	12	12	t	f	f	1 min Load Average too high (= 0.15)			2015-06-02 03:13:43.765255-06	13
54	0.0700000000000000067	0.340000000000000024	0.390000000000000013	1	1	1	f	f	f				2015-06-03 01:25:14.88183-06	1
55	0	0.0100000000000000002	0	12	12	14	f	f	f				2015-06-03 01:25:15.306263-06	26
56	0.0800000000000000017	0.160000000000000003	0.110000000000000001	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:25:15.705088-06	25
57	0.170000000000000012	0.170000000000000012	0.110000000000000001	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:25:16.129803-06	22
58	0	0.0200000000000000004	0.0200000000000000004	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:25:16.64576-06	21
59	0.239999999999999991	0.170000000000000012	0.0599999999999999978	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:25:17.044774-06	24
60	0.119999999999999996	0.100000000000000006	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:25:17.444636-06	23
61	0.130000000000000004	0.170000000000000012	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:25:17.843966-06	28
62	0	0.0400000000000000008	0.0700000000000000067	12	12	12	f	f	f				2015-06-03 01:25:18.251784-06	27
63	0.0200000000000000004	0.0500000000000000028	0.0700000000000000067	12	12	12	f	f	f				2015-06-03 01:25:18.634169-06	3
64	0.0200000000000000004	0.0800000000000000017	0.0400000000000000008	12	12	12	f	f	f				2015-06-03 01:25:19.017009-06	2
65	0.110000000000000001	0.100000000000000006	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:25:19.4582-06	5
66	0.100000000000000006	0.170000000000000012	0.140000000000000013	12	12	12	f	f	f				2015-06-03 01:25:19.886057-06	4
67	0.140000000000000013	0.179999999999999993	0.149999999999999994	12	12	12	f	f	f				2015-06-03 01:25:20.306711-06	7
68	0.100000000000000006	0.149999999999999994	0.140000000000000013	12	12	12	f	f	f				2015-06-03 01:25:20.71438-06	6
69	0.220000000000000001	0.160000000000000003	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:25:21.105733-06	9
70	0.28999999999999998	0.209999999999999992	0.119999999999999996	12	12	12	f	f	f				2015-06-03 01:25:21.555165-06	8
71	0.100000000000000006	0.119999999999999996	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:25:22.295439-06	11
72	0.0700000000000000067	0.0800000000000000017	0.0800000000000000017	12	12	12	f	f	f				2015-06-03 01:25:22.744778-06	10
73	0	0	0	12	12	12	f	f	f				2015-06-03 01:25:23.17723-06	14
74	0.110000000000000001	0.110000000000000001	0.149999999999999994	12	12	12	f	f	f				2015-06-03 01:25:23.576853-06	15
75	1.09000000000000008	1.05000000000000004	1.01000000000000001	0.900000000000000022	2	5.20000000000000018	t	f	f	1 min Load Average too high (= 1.09)			2015-06-03 01:25:23.993224-06	16
76	0.0400000000000000008	0.100000000000000006	0.140000000000000013	12	12	12	f	f	f				2015-06-03 01:25:24.427773-06	17
77	0.349999999999999978	0.190000000000000002	0.119999999999999996	12	12	12	f	f	f				2015-06-03 01:25:24.825569-06	18
78	0.619999999999999996	0.200000000000000011	0.0599999999999999978	12	12	12	f	f	f				2015-06-03 01:25:25.266787-06	19
79	0.390000000000000013	0.200000000000000011	0.119999999999999996	12	12	12	f	f	f				2015-06-03 01:25:25.732447-06	20
80	1.37999999999999989	0.969999999999999973	0.680000000000000049	12	12	12	f	f	f				2015-06-03 01:25:26.156882-06	12
81	0.0500000000000000028	0.0299999999999999989	0	0.0100000000000000002	12	12	t	f	f	1 min Load Average too high (= 0.05)			2015-06-03 01:25:26.805935-06	13
82	0.46000000000000002	0.380000000000000004	0.400000000000000022	1	1	1	f	f	f				2015-06-03 01:26:30.618138-06	1
83	0.0599999999999999978	0.0299999999999999989	0	12	12	14	f	f	f				2015-06-03 01:26:31.026027-06	26
84	0.330000000000000016	0.23000000000000001	0.140000000000000013	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:31.408133-06	25
85	0.320000000000000007	0.190000000000000002	0.119999999999999996	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:31.766647-06	22
86	0.0700000000000000067	0.0299999999999999989	0.0100000000000000002	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:32.207147-06	21
87	0.0700000000000000067	0.130000000000000004	0.0599999999999999978	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:32.598428-06	24
88	0.130000000000000004	0.110000000000000001	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:26:32.98079-06	23
89	0.110000000000000001	0.160000000000000003	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:26:33.363501-06	28
90	0.119999999999999996	0.0599999999999999978	0.0700000000000000067	12	12	12	f	f	f				2015-06-03 01:26:33.754919-06	27
91	0	0.0400000000000000008	0.0599999999999999978	12	12	12	f	f	f				2015-06-03 01:26:34.129737-06	3
92	0	0.0599999999999999978	0.0299999999999999989	12	12	12	f	f	f				2015-06-03 01:26:34.520605-06	2
93	0.200000000000000011	0.119999999999999996	0.100000000000000006	12	12	12	f	f	f				2015-06-03 01:26:34.994879-06	5
94	0.0700000000000000067	0.149999999999999994	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:35.369219-06	4
95	0.179999999999999993	0.179999999999999993	0.149999999999999994	12	12	12	f	f	f				2015-06-03 01:26:35.760184-06	7
96	0.0200000000000000004	0.110000000000000001	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:36.151181-06	6
97	0.179999999999999993	0.149999999999999994	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:26:36.517882-06	9
98	0.270000000000000018	0.220000000000000001	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:36.917028-06	8
99	0.0599999999999999978	0.110000000000000001	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:26:37.341043-06	11
100	0.0200000000000000004	0.0599999999999999978	0.0800000000000000017	12	12	12	f	f	f				2015-06-03 01:26:37.757062-06	10
101	0	0	0	12	12	12	f	f	f				2015-06-03 01:26:38.15641-06	14
102	0.0299999999999999989	0.0899999999999999967	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:38.52297-06	15
103	1.03000000000000003	1.04000000000000004	1.01000000000000001	0.900000000000000022	2	5.20000000000000018	t	f	f	1 min Load Average too high (= 1.03)			2015-06-03 01:26:38.889062-06	16
104	0.149999999999999994	0.100000000000000006	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:39.271814-06	17
105	0.260000000000000009	0.179999999999999993	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:26:39.637687-06	18
106	0.260000000000000009	0.179999999999999993	0.0599999999999999978	12	12	12	f	f	f				2015-06-03 01:26:40.04534-06	19
107	0.280000000000000027	0.209999999999999992	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:40.494943-06	20
108	0.390000000000000013	0.75	0.619999999999999996	12	12	12	f	f	f				2015-06-03 01:26:40.928141-06	12
109	0.0599999999999999978	0.0299999999999999989	0	0.0100000000000000002	12	12	t	f	f	1 min Load Average too high (= 0.06)			2015-06-03 01:26:41.36041-06	13
110	0.330000000000000016	0.349999999999999978	0.390000000000000013	1	1	1	f	f	f				2015-06-03 01:26:47.1172-06	1
111	0.0400000000000000008	0.0299999999999999989	0	12	12	14	f	f	f				2015-06-03 01:26:47.567693-06	26
112	0.260000000000000009	0.220000000000000001	0.140000000000000013	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:47.958939-06	25
113	0.25	0.179999999999999993	0.119999999999999996	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:48.366396-06	22
114	0.0599999999999999978	0.0299999999999999989	0.0100000000000000002	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:48.807477-06	21
115	0.0500000000000000028	0.119999999999999996	0.0500000000000000028	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:26:49.207405-06	24
116	0.100000000000000006	0.100000000000000006	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:26:49.606525-06	23
117	0.0800000000000000017	0.149999999999999994	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:26:50.015626-06	28
118	0.100000000000000006	0.0599999999999999978	0.0700000000000000067	12	12	12	f	f	f				2015-06-03 01:26:50.423399-06	27
119	0	0.0299999999999999989	0.0599999999999999978	12	12	12	f	f	f				2015-06-03 01:26:50.822764-06	3
120	0	0.0500000000000000028	0.0299999999999999989	12	12	12	f	f	f				2015-06-03 01:26:51.230824-06	2
121	0.160000000000000003	0.110000000000000001	0.100000000000000006	12	12	12	f	f	f				2015-06-03 01:26:51.876115-06	5
122	0.119999999999999996	0.149999999999999994	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:52.295863-06	4
123	0.28999999999999998	0.200000000000000011	0.160000000000000003	12	12	12	f	f	f				2015-06-03 01:26:52.695587-06	7
124	0.0200000000000000004	0.110000000000000001	0.119999999999999996	12	12	12	f	f	f				2015-06-03 01:26:53.078395-06	6
125	0.140000000000000013	0.140000000000000013	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:26:53.47786-06	9
126	0.190000000000000002	0.200000000000000011	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:53.885562-06	8
127	0.0500000000000000028	0.100000000000000006	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:26:54.284898-06	11
128	0.239999999999999991	0.110000000000000001	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:26:54.72556-06	10
129	0	0	0	12	12	12	f	f	f				2015-06-03 01:26:55.133046-06	14
130	0.170000000000000012	0.110000000000000001	0.140000000000000013	12	12	12	f	f	f				2015-06-03 01:26:55.507597-06	15
131	1.02000000000000002	1.03000000000000003	1	0.900000000000000022	2	5.20000000000000018	t	f	f	1 min Load Average too high (= 1.02)			2015-06-03 01:26:55.890512-06	16
132	0.100000000000000006	0.100000000000000006	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:26:56.281499-06	17
133	0.179999999999999993	0.170000000000000012	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:26:56.664224-06	18
134	0.190000000000000002	0.170000000000000012	0.0599999999999999978	12	12	12	f	f	f				2015-06-03 01:26:57.113774-06	19
135	0.400000000000000022	0.239999999999999991	0.140000000000000013	12	12	12	f	f	f				2015-06-03 01:26:57.563063-06	20
136	0.369999999999999996	0.729999999999999982	0.619999999999999996	12	12	12	f	f	f				2015-06-03 01:26:57.970495-06	12
137	0.0400000000000000008	0.0299999999999999989	0	0.0100000000000000002	12	12	t	f	f	1 min Load Average too high (= 0.04)			2015-06-03 01:26:58.395024-06	13
138	0.0599999999999999978	0.25	0.340000000000000024	1	1	1	f	f	f				2015-06-03 01:29:18.035419-06	1
139	0.0299999999999999989	0.0500000000000000028	0	12	12	14	f	f	f				2015-06-03 01:29:18.435044-06	26
140	0.160000000000000003	0.179999999999999993	0.130000000000000004	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:29:18.834203-06	25
141	0.179999999999999993	0.149999999999999994	0.100000000000000006	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:29:19.267843-06	22
142	0	0.0100000000000000002	0	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:29:19.774486-06	21
143	0	0.0599999999999999978	0.0400000000000000008	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 01:29:20.173887-06	24
144	0.299999999999999989	0.170000000000000012	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:29:20.581867-06	23
145	0.160000000000000003	0.140000000000000013	0.100000000000000006	12	12	12	f	f	f				2015-06-03 01:29:20.972941-06	28
146	0.0400000000000000008	0.0599999999999999978	0.0700000000000000067	12	12	12	f	f	f				2015-06-03 01:29:21.432232-06	27
147	0.0400000000000000008	0.0400000000000000008	0.0599999999999999978	12	12	12	f	f	f				2015-06-03 01:29:21.879698-06	3
148	0.0400000000000000008	0.0400000000000000008	0.0200000000000000004	12	12	12	f	f	f				2015-06-03 01:29:22.279688-06	2
149	0.130000000000000004	0.140000000000000013	0.100000000000000006	12	12	12	f	f	f				2015-06-03 01:29:22.728543-06	5
150	0.0400000000000000008	0.100000000000000006	0.100000000000000006	12	12	12	f	f	f				2015-06-03 01:29:23.128466-06	4
151	0.149999999999999994	0.160000000000000003	0.140000000000000013	12	12	12	f	f	f				2015-06-03 01:29:23.53563-06	7
152	0.0700000000000000067	0.119999999999999996	0.119999999999999996	12	12	12	f	f	f				2015-06-03 01:29:23.935043-06	6
153	0.0899999999999999967	0.130000000000000004	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:29:24.318323-06	9
154	0.110000000000000001	0.170000000000000012	0.119999999999999996	12	12	12	f	f	f				2015-06-03 01:29:24.750633-06	8
155	0.0400000000000000008	0.0899999999999999967	0.0800000000000000017	12	12	12	f	f	f				2015-06-03 01:29:25.192345-06	11
156	0.179999999999999993	0.0899999999999999967	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 01:29:25.657686-06	10
157	0.0299999999999999989	0.0100000000000000002	0	12	12	12	f	f	f				2015-06-03 01:29:26.065327-06	14
158	0.0899999999999999967	0.160000000000000003	0.160000000000000003	12	12	12	f	f	f				2015-06-03 01:29:26.456896-06	15
159	1	1.02000000000000002	1	0.900000000000000022	2	5.20000000000000018	t	f	f	1 min Load Average too high (= 1.00)			2015-06-03 01:29:26.839008-06	16
160	0.209999999999999992	0.130000000000000004	0.130000000000000004	12	12	12	f	f	f				2015-06-03 01:29:27.355026-06	17
161	0.239999999999999991	0.179999999999999993	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:29:27.746368-06	18
162	0.0100000000000000002	0.100000000000000006	0.0500000000000000028	12	12	12	f	f	f				2015-06-03 01:29:28.170932-06	19
163	0.0299999999999999989	0.140000000000000013	0.110000000000000001	12	12	12	f	f	f				2015-06-03 01:29:28.636953-06	20
164	0.200000000000000011	0.520000000000000018	0.550000000000000044	12	12	12	f	f	f				2015-06-03 01:29:29.035948-06	12
165	0	0.0200000000000000004	0	0.0100000000000000002	12	12	f	f	f				2015-06-03 01:29:29.443503-06	13
166	0.23000000000000001	0.179999999999999993	0.260000000000000009	1	1	1	f	f	f				2015-06-03 06:46:53.054485-06	1
167	0.0700000000000000067	0.0400000000000000008	0	12	12	14	f	f	f				2015-06-03 06:46:53.461983-06	26
168	0.28999999999999998	0.170000000000000012	0.110000000000000001	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 06:46:53.878439-06	25
169	0.0700000000000000067	0.119999999999999996	0.119999999999999996	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 06:46:54.268899-06	22
170	0	0	0	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 06:46:55.01125-06	21
171	0	0.0100000000000000002	0	0.900000000000000022	0.849999999999999978	0.849999999999999978	f	f	f				2015-06-03 06:46:55.400846-06	24
172	0.28999999999999998	0.160000000000000003	0.100000000000000006	12	12	12	f	f	f				2015-06-03 06:46:55.776769-06	23
173	0.0299999999999999989	0.100000000000000006	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 06:46:56.158191-06	28
174	0.0599999999999999978	0.0599999999999999978	0.0299999999999999989	12	12	12	f	f	f				2015-06-03 06:46:56.532487-06	27
175	0.0200000000000000004	0.0599999999999999978	0.0800000000000000017	12	12	12	f	f	f				2015-06-03 06:46:56.923125-06	3
176	0.0400000000000000008	0.0400000000000000008	0.0200000000000000004	12	12	12	f	f	f				2015-06-03 06:46:57.31454-06	2
177	0.0700000000000000067	0.110000000000000001	0.140000000000000013	12	12	12	f	f	f				2015-06-03 06:46:57.755742-06	5
178	0.0700000000000000067	0.140000000000000013	0.179999999999999993	12	12	12	f	f	f				2015-06-03 06:46:58.138493-06	4
179	0.0599999999999999978	0.190000000000000002	0.23000000000000001	12	12	12	f	f	f				2015-06-03 06:46:58.529708-06	7
180	0.0800000000000000017	0.0899999999999999967	0.0899999999999999967	12	12	12	f	f	f				2015-06-03 06:46:58.920372-06	6
181	0.130000000000000004	0.0299999999999999989	0.0100000000000000002	12	12	12	f	f	f				2015-06-03 06:46:59.311846-06	9
182	0.130000000000000004	0.149999999999999994	0.170000000000000012	12	12	12	f	f	f				2015-06-03 06:46:59.719261-06	8
183	0.0299999999999999989	0.160000000000000003	0.209999999999999992	12	12	12	f	f	f				2015-06-03 06:47:00.110266-06	11
184	0.0299999999999999989	0.0700000000000000067	0.0800000000000000017	12	12	12	f	f	f				2015-06-03 06:47:00.551506-06	10
185	0	0	0	12	12	12	f	f	f				2015-06-03 06:47:00.950884-06	14
186	0.0200000000000000004	0.140000000000000013	0.170000000000000012	12	12	12	f	f	f				2015-06-03 06:47:01.333687-06	15
187	1	1	1	0.900000000000000022	2	5.20000000000000018	t	f	f	1 min Load Average too high (= 1.00)			2015-06-03 06:47:01.733041-06	16
188	0.190000000000000002	0.110000000000000001	0.119999999999999996	12	12	12	f	f	f				2015-06-03 06:47:02.132938-06	17
189	0.0899999999999999967	0.119999999999999996	0.119999999999999996	12	12	12	f	f	f				2015-06-03 06:47:02.523487-06	18
190	0	0.0200000000000000004	0.0100000000000000002	12	12	12	f	f	f				2015-06-03 06:47:02.906293-06	19
191	0.0599999999999999978	0.119999999999999996	0.149999999999999994	12	12	12	f	f	f				2015-06-03 06:47:03.33937-06	20
192	0.959999999999999964	0.839999999999999969	0.609999999999999987	12	12	12	f	f	f				2015-06-03 06:47:03.77166-06	12
193	0	0	0	0.0100000000000000002	12	12	f	f	f				2015-06-03 06:47:04.12119-06	13
\.


--
-- Name: gestion_red_loadavghistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_loadavghistory_id_seq', 193, true);


--
-- Data for Name: gestion_red_memoryhistory; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_memoryhistory (id, total_swap, total_ram, free_swap, free_ram, created, host_id) FROM stdin;
1	4094	7946	4094	5024	2015-06-02 03:09:55.780575-06	1
2	4094	7946	4094	3416	2015-06-02 03:10:03.671942-06	26
3	4094	7946	4094	4972	2015-06-02 03:10:10.943496-06	25
4	4094	7946	4094	4650	2015-06-02 03:10:16.612076-06	22
5	4094	7946	4094	6238	2015-06-02 03:10:21.959452-06	21
6	4094	7946	4094	6571	2015-06-02 03:10:27.411578-06	24
7	4094	7946	4094	6416	2015-06-02 03:10:33.364615-06	23
8	4094	7946	4094	6410	2015-06-02 03:10:37.832998-06	28
9	4094	7946	4094	6265	2015-06-02 03:10:41.788052-06	27
10	4094	7946	4094	6155	2015-06-02 03:10:45.846262-06	3
11	4094	7914	4094	6298	2015-06-02 03:10:48.419009-06	2
12	4094	7914	4094	4328	2015-06-02 03:10:50.93598-06	5
13	4094	7914	4094	4619	2015-06-02 03:10:53.431565-06	4
14	4094	7914	4094	4616	2015-06-02 03:10:55.958599-06	7
15	4094	7914	4094	4327	2015-06-02 03:10:58.384865-06	6
16	4094	7914	4094	6440	2015-06-02 03:11:00.752644-06	9
17	4094	7914	4094	3529	2015-06-02 03:11:03.462874-06	8
18	4094	7914	4094	3579	2015-06-02 03:11:05.809408-06	11
19	4094	7914	4094	4734	2015-06-02 03:11:07.920915-06	10
20	4094	7913	4094	6797	2015-06-02 03:11:11.047904-06	14
21	4094	7914	4094	3200	2015-06-02 03:11:13.489107-06	15
22	4094	7914	4094	6510	2015-06-02 03:11:15.896227-06	16
23	4094	7914	4094	3307	2015-06-02 03:11:18.791543-06	17
24	4094	7914	4094	3268	2015-06-02 03:11:21.282111-06	18
25	4094	7914	4094	6376	2015-06-02 03:11:23.851162-06	19
26	4094	7914	4094	4581	2015-06-02 03:11:26.272775-06	20
27	4094	7946	4094	5024	2015-06-02 03:13:05.109532-06	1
28	4094	7946	4094	3416	2015-06-02 03:13:09.293349-06	26
29	4094	7946	4094	4972	2015-06-02 03:13:12.873842-06	25
30	4094	7946	4094	4649	2015-06-02 03:13:14.862379-06	22
31	4094	7946	4094	6238	2015-06-02 03:13:16.698218-06	21
32	4094	7946	4094	6571	2015-06-02 03:13:18.748662-06	24
33	4094	7946	4094	6417	2015-06-02 03:13:21.017996-06	23
34	4094	7946	4094	6410	2015-06-02 03:13:21.856147-06	28
35	4094	7946	4094	6266	2015-06-02 03:13:22.32718-06	27
36	4094	7946	4094	6156	2015-06-02 03:13:22.763295-06	3
37	4094	7914	4094	6298	2015-06-02 03:13:23.200802-06	2
38	4094	7914	4094	4316	2015-06-02 03:13:23.622774-06	5
39	4094	7914	4094	4608	2015-06-02 03:13:24.072141-06	4
40	4094	7914	4094	4605	2015-06-02 03:13:24.554603-06	7
41	4094	7914	4094	4316	2015-06-02 03:13:25.001981-06	6
42	4094	7914	4094	6440	2015-06-02 03:13:25.442153-06	9
43	4094	7914	4094	3518	2015-06-02 03:13:25.864758-06	8
44	4094	7914	4094	3569	2015-06-02 03:13:26.302226-06	11
45	4094	7914	4094	4724	2015-06-02 03:13:26.750174-06	10
46	4094	7913	4094	6797	2015-06-02 03:13:27.979828-06	14
47	4094	7914	4094	3190	2015-06-02 03:13:28.421353-06	15
48	4094	7914	4094	6510	2015-06-02 03:13:28.851906-06	16
49	4094	7914	4094	3298	2015-06-02 03:13:29.756867-06	17
50	4094	7914	4094	3258	2015-06-02 03:13:30.202027-06	18
51	4094	7914	4094	6377	2015-06-02 03:13:30.67039-06	19
52	4094	7914	4094	4573	2015-06-02 03:13:31.095857-06	20
53	494	1008	491	213	2015-06-02 03:13:43.649511-06	13
54	4094	7946	4094	5025	2015-06-02 03:15:49.965078-06	1
55	4094	7946	4094	3415	2015-06-02 03:15:50.223582-06	26
56	4094	7946	4094	4971	2015-06-02 03:15:50.484124-06	25
57	4094	7946	4094	4648	2015-06-02 03:15:50.743926-06	22
58	4094	7946	4094	6238	2015-06-02 03:15:51.00137-06	21
59	4094	7946	4094	6571	2015-06-02 03:15:51.243685-06	24
60	4094	7946	4094	6417	2015-06-02 03:15:51.539002-06	23
61	4094	7946	4094	6410	2015-06-02 03:15:51.773261-06	28
62	4094	7946	4094	6266	2015-06-02 03:15:52.020186-06	27
63	4094	7946	4094	6155	2015-06-02 03:15:52.274089-06	3
64	4094	7914	4094	6298	2015-06-02 03:15:52.536055-06	2
65	4094	7914	4094	4306	2015-06-02 03:15:52.787861-06	5
66	4094	7914	4094	4597	2015-06-02 03:15:53.023987-06	4
67	4094	7914	4094	4593	2015-06-02 03:15:53.278682-06	7
68	4094	7914	4094	4306	2015-06-02 03:15:53.522487-06	6
69	4094	7914	4094	6440	2015-06-02 03:15:53.844896-06	9
70	4094	7914	4094	3508	2015-06-02 03:15:54.101743-06	8
71	4094	7914	4094	3558	2015-06-02 03:15:54.343895-06	11
72	4094	7914	4094	4713	2015-06-02 03:15:54.607303-06	10
73	4094	7913	4094	6797	2015-06-02 03:15:54.851917-06	14
74	4094	7914	4094	3179	2015-06-02 03:15:55.11093-06	15
75	4094	7914	4094	6509	2015-06-02 03:15:55.354659-06	16
76	4094	7914	4094	3287	2015-06-02 03:15:55.604479-06	17
77	4094	7914	4094	3248	2015-06-02 03:15:55.86707-06	18
78	4094	7914	4094	6377	2015-06-02 03:15:56.167722-06	19
79	4094	7914	4094	4561	2015-06-02 03:15:56.448967-06	20
80	494	1008	491	213	2015-06-02 03:16:08.816252-06	13
81	4094	7946	4094	5025	2015-06-02 03:17:46.342833-06	1
82	4094	7946	4094	3416	2015-06-02 03:17:46.604417-06	26
83	4094	7946	4094	4970	2015-06-02 03:17:46.852132-06	25
84	4094	7946	4094	4648	2015-06-02 03:17:47.1211-06	22
85	4094	7946	4094	6238	2015-06-02 03:17:47.382799-06	21
86	4094	7946	4094	6571	2015-06-02 03:17:47.628002-06	24
87	4094	7946	4094	6417	2015-06-02 03:17:47.917533-06	23
88	4094	7946	4094	6410	2015-06-02 03:17:48.17026-06	28
89	4094	7946	4094	6265	2015-06-02 03:17:48.419178-06	27
90	4094	7946	4094	6156	2015-06-02 03:17:48.664135-06	3
91	4094	7914	4094	6298	2015-06-02 03:17:48.904244-06	2
92	4094	7914	4094	4297	2015-06-02 03:17:49.148769-06	5
93	4094	7914	4094	4589	2015-06-02 03:17:49.409801-06	4
94	4094	7914	4094	4585	2015-06-02 03:17:49.674887-06	7
95	4094	7914	4094	4297	2015-06-02 03:17:50.112523-06	6
96	4094	7914	4094	6440	2015-06-02 03:17:50.422249-06	9
97	4094	7914	4094	3499	2015-06-02 03:17:50.677626-06	8
98	4094	7914	4094	3549	2015-06-02 03:17:50.931158-06	11
99	4094	7914	4094	4704	2015-06-02 03:17:51.193719-06	10
100	4094	7913	4094	6797	2015-06-02 03:17:51.439239-06	14
101	4094	7914	4094	3171	2015-06-02 03:17:51.698477-06	15
102	4094	7914	4094	6509	2015-06-02 03:17:51.943272-06	16
103	4094	7914	4094	3279	2015-06-02 03:17:52.196917-06	17
104	4094	7914	4094	3239	2015-06-02 03:17:52.457921-06	18
105	4094	7914	4094	6376	2015-06-02 03:17:52.75516-06	19
106	4094	7914	4094	4553	2015-06-02 03:17:53.013932-06	20
107	494	2020	493	50	2015-06-02 03:17:53.262372-06	12
108	494	1008	491	213	2015-06-02 03:17:53.530588-06	13
109	4094	7946	4094	5022	2015-06-02 03:18:50.94252-06	1
110	4094	7946	4094	3414	2015-06-02 03:18:51.226229-06	26
111	4094	7946	4094	4968	2015-06-02 03:18:51.471841-06	25
112	4094	7946	4094	4646	2015-06-02 03:18:51.753353-06	22
113	4094	7946	4094	6237	2015-06-02 03:18:52.004314-06	21
114	4094	7946	4094	6569	2015-06-02 03:18:52.24761-06	24
115	4094	7946	4094	6416	2015-06-02 03:18:52.537792-06	23
116	4094	7946	4094	6409	2015-06-02 03:18:52.78406-06	28
117	4094	7946	4094	6263	2015-06-02 03:18:53.04696-06	27
118	4094	7946	4094	6153	2015-06-02 03:18:53.297591-06	3
119	4094	7914	4094	6297	2015-06-02 03:18:53.549249-06	2
120	4094	7914	4094	4291	2015-06-02 03:18:53.792259-06	5
121	4094	7914	4094	4582	2015-06-02 03:18:54.037214-06	4
122	4094	7914	4094	4579	2015-06-02 03:18:54.296276-06	7
123	4094	7914	4094	4291	2015-06-02 03:18:54.55891-06	6
124	4094	7914	4094	6438	2015-06-02 03:18:54.856219-06	9
125	4094	7914	4094	3493	2015-06-02 03:18:55.122254-06	8
126	4094	7914	4094	3543	2015-06-02 03:18:55.377693-06	11
127	4094	7914	4094	4698	2015-06-02 03:18:55.628038-06	10
128	4094	7913	4094	6795	2015-06-02 03:18:55.882533-06	14
129	4094	7914	4094	3164	2015-06-02 03:18:56.166198-06	15
130	4094	7914	4094	6508	2015-06-02 03:18:56.40748-06	16
131	4094	7914	4094	3272	2015-06-02 03:18:56.675679-06	17
132	4094	7914	4094	3233	2015-06-02 03:18:56.949459-06	18
133	4094	7914	4094	6374	2015-06-02 03:18:57.20926-06	19
134	4094	7914	4094	4546	2015-06-02 03:18:57.516309-06	20
135	494	2020	493	50	2015-06-02 03:18:57.769727-06	12
136	494	1008	491	213	2015-06-02 03:18:58.013775-06	13
137	4094	7946	4094	4957	2015-06-03 00:20:09.227994-06	1
138	4094	7946	4094	3426	2015-06-03 00:20:09.53478-06	26
139	4094	7946	4094	4594	2015-06-03 00:20:09.785781-06	25
140	4094	7946	4094	4258	2015-06-03 00:20:10.049706-06	22
141	4094	7946	4094	6165	2015-06-03 00:20:10.331228-06	21
142	4094	7946	4094	6484	2015-06-03 00:20:10.597148-06	24
143	4094	7946	4094	6401	2015-06-03 00:20:10.911907-06	23
144	4094	7946	4094	6396	2015-06-03 00:20:11.183915-06	28
145	4094	7946	4094	6265	2015-06-03 00:20:11.468875-06	27
146	4094	7946	4094	6167	2015-06-03 00:20:11.744545-06	3
147	4094	7914	4094	6277	2015-06-03 00:20:12.044086-06	2
148	4094	7914	4094	4283	2015-06-03 00:20:12.312373-06	5
149	4094	7914	4094	4565	2015-06-03 00:20:12.6008-06	4
150	4094	7914	4094	4570	2015-06-03 00:20:12.875378-06	7
151	4094	7914	4094	4286	2015-06-03 00:20:13.154764-06	6
152	4094	7914	4094	6376	2015-06-03 00:20:13.50348-06	9
153	4094	7914	4094	3485	2015-06-03 00:20:13.776518-06	8
154	4094	7914	4094	3537	2015-06-03 00:20:14.038778-06	11
155	4094	7914	4094	4690	2015-06-03 00:20:14.329606-06	10
156	4094	7913	4094	6745	2015-06-03 00:20:14.597221-06	14
157	4094	7914	4094	3147	2015-06-03 00:20:14.87596-06	15
158	4094	7914	4094	6412	2015-06-03 00:20:15.143986-06	16
159	4094	7914	4094	3261	2015-06-03 00:20:15.433434-06	17
160	4094	7914	4094	3213	2015-06-03 00:20:15.73025-06	18
161	4094	7914	4094	6356	2015-06-03 00:20:16.068561-06	19
162	4094	7914	4094	4540	2015-06-03 00:20:16.351287-06	20
163	494	2020	493	49	2015-06-03 00:20:16.639782-06	12
164	494	1008	491	211	2015-06-03 00:20:16.935209-06	13
165	4094	7946	4094	4958	2015-06-03 00:20:45.537812-06	1
166	4094	7946	4094	3426	2015-06-03 00:20:45.816434-06	26
167	4094	7946	4094	4594	2015-06-03 00:20:46.066343-06	25
168	4094	7946	4094	4257	2015-06-03 00:20:46.352617-06	22
169	4094	7946	4094	6165	2015-06-03 00:20:46.681933-06	21
170	4094	7946	4094	6485	2015-06-03 00:20:46.950052-06	24
171	4094	7946	4094	6401	2015-06-03 00:20:47.335155-06	23
172	4094	7946	4094	6396	2015-06-03 00:20:47.622594-06	28
173	4094	7946	4094	6262	2015-06-03 00:20:47.917811-06	27
174	4094	7946	4094	6166	2015-06-03 00:20:48.327904-06	3
175	4094	7914	4094	6277	2015-06-03 00:20:48.602884-06	2
176	4094	7914	4094	4280	2015-06-03 00:20:48.874736-06	5
177	4094	7914	4094	4563	2015-06-03 00:20:49.147662-06	4
178	4094	7914	4094	4567	2015-06-03 00:20:49.394543-06	7
179	4094	7914	4094	4283	2015-06-03 00:20:49.688473-06	6
180	4094	7914	4094	6376	2015-06-03 00:20:50.029608-06	9
181	4094	7914	4094	3483	2015-06-03 00:20:50.320055-06	8
182	4094	7914	4094	3535	2015-06-03 00:20:50.612075-06	11
183	4094	7914	4094	4687	2015-06-03 00:20:50.926517-06	10
184	4094	7913	4094	6745	2015-06-03 00:20:51.240081-06	14
185	4094	7914	4094	3144	2015-06-03 00:20:51.532673-06	15
186	4094	7914	4094	6412	2015-06-03 00:20:51.812554-06	16
187	4094	7914	4094	3259	2015-06-03 00:20:52.099653-06	17
188	4094	7914	4094	3210	2015-06-03 00:20:52.37059-06	18
189	4094	7914	4094	6356	2015-06-03 00:20:52.632221-06	19
190	4094	7914	4094	4537	2015-06-03 00:20:52.956844-06	20
191	494	2020	493	49	2015-06-03 00:20:53.24396-06	12
192	494	1008	491	211	2015-06-03 00:20:53.52502-06	13
193	4094	7946	4094	4958	2015-06-03 00:22:50.711568-06	1
194	4094	7946	4094	3426	2015-06-03 00:22:50.975596-06	26
195	4094	7946	4094	4594	2015-06-03 00:22:51.222095-06	25
196	4094	7946	4094	4258	2015-06-03 00:22:51.508709-06	22
197	4094	7946	4094	6166	2015-06-03 00:22:51.799444-06	21
198	4094	7946	4094	6485	2015-06-03 00:22:52.088592-06	24
199	4094	7946	4094	6401	2015-06-03 00:22:52.424577-06	23
200	4094	7946	4094	6396	2015-06-03 00:22:52.686749-06	28
201	4094	7946	4094	6265	2015-06-03 00:22:52.976438-06	27
202	4094	7946	4094	6167	2015-06-03 00:22:53.25967-06	3
203	4094	7914	4094	6278	2015-06-03 00:22:53.535039-06	2
204	4094	7914	4094	4271	2015-06-03 00:22:53.819041-06	5
205	4094	7914	4094	4553	2015-06-03 00:22:54.093985-06	4
206	4094	7914	4094	4557	2015-06-03 00:22:54.390875-06	7
207	4094	7914	4094	4274	2015-06-03 00:22:54.69653-06	6
208	4094	7914	4094	6376	2015-06-03 00:22:55.056833-06	9
209	4094	7914	4094	3473	2015-06-03 00:22:55.328649-06	8
210	4094	7914	4094	3525	2015-06-03 00:22:55.612669-06	11
211	4094	7914	4094	4679	2015-06-03 00:22:55.900469-06	10
212	4094	7913	4094	6745	2015-06-03 00:22:56.181715-06	14
213	4094	7914	4094	3135	2015-06-03 00:22:56.452083-06	15
214	4094	7914	4094	6411	2015-06-03 00:22:56.710126-06	16
215	4094	7914	4094	3250	2015-06-03 00:22:56.970195-06	17
216	4094	7914	4094	3201	2015-06-03 00:22:57.264413-06	18
217	4094	7914	4094	6357	2015-06-03 00:22:57.935896-06	19
218	4094	7914	4094	4528	2015-06-03 00:22:58.205632-06	20
219	494	2020	493	49	2015-06-03 00:22:58.483151-06	12
220	494	1008	491	211	2015-06-03 00:22:58.755888-06	13
221	4094	7946	4094	4958	2015-06-03 00:23:30.648787-06	1
222	4094	7946	4094	3426	2015-06-03 00:23:30.908521-06	26
223	4094	7946	4094	4593	2015-06-03 00:23:31.186269-06	25
224	4094	7946	4094	4258	2015-06-03 00:23:31.456052-06	22
225	4094	7946	4094	6166	2015-06-03 00:23:31.726076-06	21
226	4094	7946	4094	6485	2015-06-03 00:23:31.966456-06	24
227	4094	7946	4094	6401	2015-06-03 00:23:32.259758-06	23
228	4094	7946	4094	6396	2015-06-03 00:23:32.759695-06	28
229	4094	7946	4094	6266	2015-06-03 00:23:33.028444-06	27
230	4094	7946	4094	6167	2015-06-03 00:23:33.32209-06	3
231	4094	7914	4094	6278	2015-06-03 00:23:33.592539-06	2
232	4094	7914	4094	4268	2015-06-03 00:23:33.883464-06	5
233	4094	7914	4094	4550	2015-06-03 00:23:34.155945-06	4
234	4094	7914	4094	4555	2015-06-03 00:23:34.45246-06	7
235	4094	7914	4094	4270	2015-06-03 00:23:34.713957-06	6
236	4094	7914	4094	6376	2015-06-03 00:23:35.06928-06	9
237	4094	7914	4094	3470	2015-06-03 00:23:35.350264-06	8
238	4094	7914	4094	3522	2015-06-03 00:23:35.641345-06	11
239	4094	7914	4094	4676	2015-06-03 00:23:35.93241-06	10
240	4094	7913	4094	6745	2015-06-03 00:23:36.209114-06	14
241	4094	7914	4094	3132	2015-06-03 00:23:36.506373-06	15
242	4094	7914	4094	6411	2015-06-03 00:23:36.789871-06	16
243	4094	7914	4094	3247	2015-06-03 00:23:37.063808-06	17
244	4094	7914	4094	3198	2015-06-03 00:23:37.357388-06	18
245	4094	7914	4094	6356	2015-06-03 00:23:37.695624-06	19
246	4094	7914	4094	4524	2015-06-03 00:23:37.973318-06	20
247	494	2020	493	49	2015-06-03 00:23:38.239704-06	12
248	494	1008	491	211	2015-06-03 00:23:38.550698-06	13
249	4094	7946	4094	4958	2015-06-03 00:25:55.198-06	1
250	4094	7946	4094	3426	2015-06-03 00:25:55.484452-06	26
251	4094	7946	4094	4593	2015-06-03 00:25:55.759958-06	25
252	4094	7946	4094	4257	2015-06-03 00:25:56.052347-06	22
253	4094	7946	4094	6165	2015-06-03 00:25:56.350641-06	21
254	4094	7946	4094	6485	2015-06-03 00:25:56.635895-06	24
255	4094	7946	4094	6401	2015-06-03 00:25:56.928162-06	23
256	4094	7946	4094	6395	2015-06-03 00:25:57.184564-06	28
257	4094	7946	4094	6265	2015-06-03 00:25:57.476372-06	27
258	4094	7946	4094	6168	2015-06-03 00:25:57.753572-06	3
259	4094	7914	4094	6278	2015-06-03 00:25:58.029004-06	2
260	4094	7914	4094	4257	2015-06-03 00:25:58.309173-06	5
261	4094	7914	4094	4539	2015-06-03 00:25:58.566523-06	4
262	4094	7914	4094	4545	2015-06-03 00:25:58.848048-06	7
263	4094	7914	4094	4260	2015-06-03 00:25:59.133363-06	6
264	4094	7914	4094	6377	2015-06-03 00:25:59.452926-06	9
265	4094	7914	4094	3459	2015-06-03 00:25:59.722823-06	8
266	4094	7914	4094	3512	2015-06-03 00:25:59.97451-06	11
267	4094	7914	4094	4665	2015-06-03 00:26:00.252973-06	10
268	4094	7913	4094	6746	2015-06-03 00:26:00.526509-06	14
269	4094	7914	4094	3122	2015-06-03 00:26:00.801818-06	15
270	4094	7914	4094	6411	2015-06-03 00:26:01.084477-06	16
271	4094	7914	4094	3236	2015-06-03 00:26:01.370478-06	17
272	4094	7914	4094	3188	2015-06-03 00:26:01.654797-06	18
273	4094	7914	4094	6356	2015-06-03 00:26:01.924497-06	19
274	4094	7914	4094	4515	2015-06-03 00:26:02.29001-06	20
275	494	2020	493	18	2015-06-03 00:26:02.553336-06	12
276	494	1008	491	211	2015-06-03 00:26:02.830324-06	13
277	4094	7946	4094	4958	2015-06-03 00:26:37.856924-06	1
278	4094	7946	4094	3425	2015-06-03 00:26:38.123422-06	26
279	4094	7946	4094	4592	2015-06-03 00:26:38.400016-06	25
280	4094	7946	4094	4257	2015-06-03 00:26:38.669737-06	22
281	4094	7946	4094	6166	2015-06-03 00:26:38.973749-06	21
282	4094	7946	4094	6485	2015-06-03 00:26:39.234102-06	24
283	4094	7946	4094	6401	2015-06-03 00:26:40.503224-06	23
284	4094	7946	4094	6395	2015-06-03 00:26:40.787407-06	28
285	4094	7946	4094	6264	2015-06-03 00:26:41.112435-06	27
286	4094	7946	4094	6169	2015-06-03 00:26:41.431749-06	3
287	4094	7914	4094	6278	2015-06-03 00:26:41.748541-06	2
288	4094	7914	4094	4254	2015-06-03 00:26:42.077712-06	5
289	4094	7914	4094	4536	2015-06-03 00:26:42.395748-06	4
290	4094	7914	4094	4541	2015-06-03 00:26:42.6746-06	7
291	4094	7914	4094	4256	2015-06-03 00:26:42.988887-06	6
292	4094	7914	4094	6377	2015-06-03 00:26:43.452981-06	9
293	4094	7914	4094	3457	2015-06-03 00:26:43.699734-06	8
294	4094	7914	4094	3509	2015-06-03 00:26:43.989823-06	11
295	4094	7914	4094	4661	2015-06-03 00:26:44.285039-06	10
296	4094	7913	4094	6746	2015-06-03 00:26:44.548187-06	14
297	4094	7914	4094	3118	2015-06-03 00:26:44.823127-06	15
298	4094	7914	4094	6411	2015-06-03 00:26:45.077132-06	16
299	4094	7914	4094	3233	2015-06-03 00:26:45.386646-06	17
300	4094	7914	4094	3185	2015-06-03 00:26:45.682673-06	18
301	4094	7914	4094	6356	2015-06-03 00:26:46.030511-06	19
302	4094	7914	4094	4511	2015-06-03 00:26:46.290384-06	20
303	494	2020	493	18	2015-06-03 00:26:46.549374-06	12
304	494	1008	491	211	2015-06-03 00:26:46.824083-06	13
305	4094	7946	4094	4959	2015-06-03 00:30:52.549222-06	1
306	4094	7946	4094	3426	2015-06-03 00:30:52.839392-06	26
307	4094	7946	4094	4592	2015-06-03 00:30:53.087334-06	25
308	4094	7946	4094	4256	2015-06-03 00:30:53.35793-06	22
309	4094	7946	4094	6166	2015-06-03 00:30:53.644813-06	21
310	4094	7946	4094	6485	2015-06-03 00:30:53.893947-06	24
311	4094	7946	4094	6401	2015-06-03 00:30:54.211784-06	23
312	4094	7946	4094	6396	2015-06-03 00:30:54.478128-06	28
313	4094	7946	4094	6265	2015-06-03 00:30:54.758102-06	27
314	4094	7946	4094	6168	2015-06-03 00:30:55.164497-06	3
315	4094	7914	4094	6278	2015-06-03 00:30:55.428837-06	2
316	4094	7914	4094	4233	2015-06-03 00:30:55.689359-06	5
317	4094	7914	4094	4515	2015-06-03 00:30:55.960855-06	4
318	4094	7914	4094	4520	2015-06-03 00:30:56.250081-06	7
319	4094	7914	4094	4235	2015-06-03 00:30:56.539406-06	6
320	4094	7914	4094	6376	2015-06-03 00:30:56.887219-06	9
321	4094	7914	4094	3434	2015-06-03 00:30:57.1428-06	8
322	4094	7914	4094	3487	2015-06-03 00:30:57.473468-06	11
323	4094	7914	4094	4640	2015-06-03 00:30:57.760264-06	10
324	4094	7913	4094	6746	2015-06-03 00:30:58.006599-06	14
325	4094	7914	4094	3097	2015-06-03 00:30:58.246075-06	15
326	4094	7914	4094	6412	2015-06-03 00:30:58.510794-06	16
327	4094	7914	4094	3212	2015-06-03 00:30:58.756941-06	17
328	4094	7914	4094	3163	2015-06-03 00:30:59.053892-06	18
329	4094	7914	4094	6357	2015-06-03 00:30:59.366305-06	19
330	4094	7914	4094	4490	2015-06-03 00:30:59.635579-06	20
331	494	2020	493	17	2015-06-03 00:31:00.019572-06	12
332	494	1008	491	211	2015-06-03 00:31:00.290062-06	13
333	4094	7946	4094	4959	2015-06-03 00:31:18.215328-06	1
334	4094	7946	4094	3425	2015-06-03 00:31:18.501699-06	26
335	4094	7946	4094	4592	2015-06-03 00:31:18.763698-06	25
336	4094	7946	4094	4256	2015-06-03 00:31:19.034127-06	22
337	4094	7946	4094	6166	2015-06-03 00:31:19.31166-06	21
338	4094	7946	4094	6485	2015-06-03 00:31:19.580945-06	24
339	4094	7946	4094	6401	2015-06-03 00:31:19.914133-06	23
340	4094	7946	4094	6396	2015-06-03 00:31:20.189774-06	28
341	4094	7946	4094	6265	2015-06-03 00:31:20.475523-06	27
342	4094	7946	4094	6169	2015-06-03 00:31:20.74208-06	3
343	4094	7914	4094	6278	2015-06-03 00:31:21.029037-06	2
344	4094	7914	4094	4231	2015-06-03 00:31:21.308572-06	5
345	4094	7914	4094	4513	2015-06-03 00:31:21.587949-06	4
346	4094	7914	4094	4518	2015-06-03 00:31:21.867676-06	7
347	4094	7914	4094	4234	2015-06-03 00:31:22.159987-06	6
348	4094	7914	4094	6377	2015-06-03 00:31:22.500717-06	9
349	4094	7914	4094	3432	2015-06-03 00:31:22.773817-06	8
350	4094	7914	4094	3486	2015-06-03 00:31:23.035327-06	11
351	4094	7914	4094	4639	2015-06-03 00:31:23.352224-06	10
352	4094	7913	4094	6746	2015-06-03 00:31:23.637367-06	14
353	4094	7914	4094	3095	2015-06-03 00:31:23.933232-06	15
354	4094	7914	4094	6412	2015-06-03 00:31:24.216284-06	16
355	4094	7914	4094	3209	2015-06-03 00:31:24.497546-06	17
356	4094	7914	4094	3161	2015-06-03 00:31:24.78608-06	18
357	4094	7914	4094	6357	2015-06-03 00:31:25.054054-06	19
358	4094	7914	4094	4489	2015-06-03 00:31:25.358926-06	20
359	494	2020	493	17	2015-06-03 00:31:25.62572-06	12
360	494	1008	491	211	2015-06-03 00:31:25.917989-06	13
361	4094	7946	4094	4948	2015-06-03 01:19:29.555692-06	1
362	4094	7946	4094	3418	2015-06-03 01:19:29.822747-06	26
363	4094	7946	4094	4578	2015-06-03 01:19:30.086055-06	25
364	4094	7946	4094	4242	2015-06-03 01:19:30.328281-06	22
365	4094	7946	4094	6159	2015-06-03 01:19:30.58642-06	21
366	4094	7946	4094	6477	2015-06-03 01:19:30.855526-06	24
367	4094	7946	4094	6395	2015-06-03 01:19:31.181576-06	23
368	4094	7946	4094	6390	2015-06-03 01:19:31.43931-06	28
369	4094	7946	4094	6260	2015-06-03 01:19:31.774465-06	27
370	4094	7946	4094	6162	2015-06-03 01:19:32.051616-06	3
371	4094	7914	4094	6273	2015-06-03 01:19:32.301374-06	2
372	4094	7914	4094	4285	2015-06-03 01:19:32.545384-06	5
373	4094	7914	4094	4567	2015-06-03 01:19:32.821327-06	4
374	4094	7914	4094	4572	2015-06-03 01:19:33.121488-06	7
375	4094	7914	4094	4288	2015-06-03 01:19:33.393553-06	6
376	4094	7914	4094	6370	2015-06-03 01:19:33.733862-06	9
377	4094	7914	4094	3486	2015-06-03 01:19:34.008481-06	8
378	4094	7914	4094	3539	2015-06-03 01:19:34.284533-06	11
379	4094	7914	4094	4693	2015-06-03 01:19:34.534313-06	10
380	4094	7913	4094	6740	2015-06-03 01:19:34.783077-06	14
381	4094	7914	4094	3149	2015-06-03 01:19:35.044806-06	15
382	4094	7914	4094	6408	2015-06-03 01:19:35.29864-06	16
383	4094	7914	4094	3265	2015-06-03 01:19:35.566015-06	17
384	4094	7914	4094	3217	2015-06-03 01:19:35.823372-06	18
385	4094	7914	4094	6352	2015-06-03 01:19:36.150231-06	19
386	4094	7914	4094	4543	2015-06-03 01:19:36.390821-06	20
387	494	2020	493	47	2015-06-03 01:19:36.635671-06	12
388	494	1008	491	211	2015-06-03 01:19:36.903299-06	13
389	4094	7946	4094	4950	2015-06-03 01:22:04.637261-06	1
390	4094	7946	4094	3419	2015-06-03 01:22:04.899876-06	26
391	4094	7946	4094	4578	2015-06-03 01:22:05.173914-06	25
392	4094	7946	4094	4241	2015-06-03 01:22:05.454379-06	22
393	4094	7946	4094	6160	2015-06-03 01:22:05.739252-06	21
394	4094	7946	4094	6478	2015-06-03 01:22:06.024578-06	24
395	4094	7946	4094	6396	2015-06-03 01:22:06.513974-06	23
396	4094	7946	4094	6391	2015-06-03 01:22:06.785868-06	28
397	4094	7946	4094	6258	2015-06-03 01:22:07.078506-06	27
398	4094	7946	4094	6162	2015-06-03 01:22:07.359065-06	3
399	4094	7914	4094	6274	2015-06-03 01:22:07.63157-06	2
400	4094	7914	4094	4271	2015-06-03 01:22:07.895727-06	5
401	4094	7914	4094	4554	2015-06-03 01:22:08.163624-06	4
402	4094	7914	4094	4558	2015-06-03 01:22:08.439814-06	7
403	4094	7914	4094	4274	2015-06-03 01:22:08.724961-06	6
404	4094	7914	4094	6370	2015-06-03 01:22:09.060805-06	9
405	4094	7914	4094	3474	2015-06-03 01:22:09.31937-06	8
406	4094	7914	4094	3526	2015-06-03 01:22:09.584926-06	11
407	4094	7914	4094	4679	2015-06-03 01:22:09.88062-06	10
408	4094	7913	4094	6740	2015-06-03 01:22:10.155779-06	14
409	4094	7914	4094	3136	2015-06-03 01:22:10.474451-06	15
410	4094	7914	4094	6408	2015-06-03 01:22:10.740512-06	16
411	4094	7914	4094	3251	2015-06-03 01:22:11.01151-06	17
412	4094	7914	4094	3203	2015-06-03 01:22:11.356272-06	18
413	4094	7914	4094	6353	2015-06-03 01:22:11.735622-06	19
414	4094	7914	4094	4529	2015-06-03 01:22:12.008468-06	20
415	494	2020	493	47	2015-06-03 01:22:12.268065-06	12
416	494	1008	491	211	2015-06-03 01:22:12.547627-06	13
417	4094	7946	4094	4950	2015-06-03 01:22:55.448932-06	1
418	4094	7946	4094	3419	2015-06-03 01:22:55.712728-06	26
419	4094	7946	4094	4578	2015-06-03 01:22:55.981469-06	25
420	4094	7946	4094	4241	2015-06-03 01:22:56.265252-06	22
421	4094	7946	4094	6160	2015-06-03 01:22:56.560714-06	21
422	4094	7946	4094	6479	2015-06-03 01:22:56.837702-06	24
423	4094	7946	4094	6396	2015-06-03 01:22:57.150058-06	23
424	4094	7946	4094	6392	2015-06-03 01:22:57.418576-06	28
425	4094	7946	4094	6259	2015-06-03 01:22:57.681952-06	27
426	4094	7946	4094	6163	2015-06-03 01:22:57.952271-06	3
427	4094	7914	4094	6274	2015-06-03 01:22:58.227132-06	2
428	4094	7914	4094	4268	2015-06-03 01:22:58.489765-06	5
429	4094	7914	4094	4549	2015-06-03 01:22:58.756276-06	4
430	4094	7914	4094	4556	2015-06-03 01:22:59.067636-06	7
431	4094	7914	4094	4271	2015-06-03 01:22:59.343658-06	6
432	4094	7914	4094	6370	2015-06-03 01:22:59.693891-06	9
433	4094	7914	4094	3470	2015-06-03 01:22:59.940165-06	8
434	4094	7914	4094	3522	2015-06-03 01:23:00.217131-06	11
435	4094	7914	4094	4676	2015-06-03 01:23:00.495549-06	10
436	4094	7913	4094	6740	2015-06-03 01:23:00.782236-06	14
437	4094	7914	4094	3131	2015-06-03 01:23:01.115683-06	15
438	4094	7914	4094	6408	2015-06-03 01:23:01.376775-06	16
439	4094	7914	4094	3247	2015-06-03 01:23:01.652162-06	17
440	4094	7914	4094	3199	2015-06-03 01:23:01.949624-06	18
441	4094	7914	4094	6352	2015-06-03 01:23:02.274306-06	19
442	4094	7914	4094	4525	2015-06-03 01:23:02.539624-06	20
443	494	2020	493	47	2015-06-03 01:23:02.809555-06	12
444	494	1008	491	211	2015-06-03 01:23:03.098783-06	13
445	4094	7946	4094	4950	2015-06-03 01:23:14.702328-06	1
446	4094	7946	4094	3419	2015-06-03 01:23:14.967555-06	26
447	4094	7946	4094	4578	2015-06-03 01:23:15.216676-06	25
448	4094	7946	4094	4241	2015-06-03 01:23:15.490349-06	22
449	4094	7946	4094	6160	2015-06-03 01:23:15.774767-06	21
450	4094	7946	4094	6479	2015-06-03 01:23:16.069043-06	24
451	4094	7946	4094	6396	2015-06-03 01:23:16.391083-06	23
452	4094	7946	4094	6392	2015-06-03 01:23:16.686229-06	28
453	4094	7946	4094	6260	2015-06-03 01:23:16.954924-06	27
454	4094	7946	4094	6163	2015-06-03 01:23:17.240192-06	3
455	4094	7914	4094	6274	2015-06-03 01:23:17.538059-06	2
456	4094	7914	4094	4266	2015-06-03 01:23:17.836589-06	5
457	4094	7914	4094	4548	2015-06-03 01:23:18.113711-06	4
458	4094	7914	4094	4554	2015-06-03 01:23:18.38773-06	7
459	4094	7914	4094	4270	2015-06-03 01:23:18.679742-06	6
460	4094	7914	4094	6370	2015-06-03 01:23:19.013967-06	9
461	4094	7914	4094	3468	2015-06-03 01:23:19.282196-06	8
462	4094	7914	4094	3521	2015-06-03 01:23:19.545-06	11
463	4094	7914	4094	4675	2015-06-03 01:23:19.828405-06	10
464	4094	7913	4094	6740	2015-06-03 01:23:20.08853-06	14
465	4094	7914	4094	3130	2015-06-03 01:23:20.346589-06	15
466	4094	7914	4094	6408	2015-06-03 01:23:20.621611-06	16
467	4094	7914	4094	3246	2015-06-03 01:23:20.896588-06	17
468	4094	7914	4094	3198	2015-06-03 01:23:21.180149-06	18
469	4094	7914	4094	6353	2015-06-03 01:23:21.442541-06	19
470	4094	7914	4094	4524	2015-06-03 01:23:21.786638-06	20
471	494	2020	493	47	2015-06-03 01:23:22.039953-06	12
472	494	1008	491	211	2015-06-03 01:23:22.317678-06	13
473	4094	7946	4094	4950	2015-06-03 01:25:14.748567-06	1
474	4094	7946	4094	3419	2015-06-03 01:25:15.171445-06	26
475	4094	7946	4094	4578	2015-06-03 01:25:15.554102-06	25
476	4094	7946	4094	4241	2015-06-03 01:25:15.983551-06	22
477	4094	7946	4094	6161	2015-06-03 01:25:16.420256-06	21
478	4094	7946	4094	6478	2015-06-03 01:25:16.904284-06	24
479	4094	7946	4094	6396	2015-06-03 01:25:17.298714-06	23
480	4094	7946	4094	6392	2015-06-03 01:25:17.704893-06	28
481	4094	7946	4094	6260	2015-06-03 01:25:18.113714-06	27
482	4094	7946	4094	6163	2015-06-03 01:25:18.51019-06	3
483	4094	7914	4094	6274	2015-06-03 01:25:18.880684-06	2
484	4094	7914	4094	4257	2015-06-03 01:25:19.275764-06	5
485	4094	7914	4094	4540	2015-06-03 01:25:19.718384-06	4
486	4094	7914	4094	4545	2015-06-03 01:25:20.169845-06	7
487	4094	7914	4094	4261	2015-06-03 01:25:20.56978-06	6
488	4094	7914	4094	6371	2015-06-03 01:25:20.964129-06	9
489	4094	7914	4094	3459	2015-06-03 01:25:21.36529-06	8
490	4094	7914	4094	3513	2015-06-03 01:25:22.146753-06	11
491	4094	7914	4094	4665	2015-06-03 01:25:22.562324-06	10
492	4094	7913	4094	6740	2015-06-03 01:25:23.030723-06	14
493	4094	7914	4094	3120	2015-06-03 01:25:23.43297-06	15
494	4094	7914	4094	6408	2015-06-03 01:25:23.837899-06	16
495	4094	7914	4094	3236	2015-06-03 01:25:24.26959-06	17
496	4094	7914	4094	3188	2015-06-03 01:25:24.697837-06	18
497	4094	7914	4094	6353	2015-06-03 01:25:25.102153-06	19
498	4094	7914	4094	4515	2015-06-03 01:25:25.590963-06	20
499	494	2020	493	47	2015-06-03 01:25:25.979017-06	12
500	494	1008	491	211	2015-06-03 01:25:26.42581-06	13
501	4094	7946	4094	4950	2015-06-03 01:26:30.467783-06	1
502	4094	7946	4094	3419	2015-06-03 01:26:30.878236-06	26
503	4094	7946	4094	4577	2015-06-03 01:26:31.268107-06	25
504	4094	7946	4094	4241	2015-06-03 01:26:31.646351-06	22
505	4094	7946	4094	6160	2015-06-03 01:26:32.043878-06	21
506	4094	7946	4094	6478	2015-06-03 01:26:32.446061-06	24
507	4094	7946	4094	6396	2015-06-03 01:26:32.857312-06	23
508	4094	7946	4094	6392	2015-06-03 01:26:33.24815-06	28
509	4094	7946	4094	6259	2015-06-03 01:26:33.617983-06	27
510	4094	7946	4094	6164	2015-06-03 01:26:34.004875-06	3
511	4094	7914	4094	6274	2015-06-03 01:26:34.386494-06	2
512	4094	7914	4094	4252	2015-06-03 01:26:34.812723-06	5
513	4094	7914	4094	4535	2015-06-03 01:26:35.24293-06	4
514	4094	7914	4094	4539	2015-06-03 01:26:35.623199-06	7
515	4094	7914	4094	4255	2015-06-03 01:26:36.019536-06	6
516	4094	7914	4094	6371	2015-06-03 01:26:36.381776-06	9
517	4094	7914	4094	3453	2015-06-03 01:26:36.769337-06	8
518	4094	7914	4094	3506	2015-06-03 01:26:37.191934-06	11
519	4094	7914	4094	4660	2015-06-03 01:26:37.591573-06	10
520	4094	7913	4094	6741	2015-06-03 01:26:38.05041-06	14
521	4094	7914	4094	3114	2015-06-03 01:26:38.402173-06	15
522	4094	7914	4094	6408	2015-06-03 01:26:38.756812-06	16
523	4094	7914	4094	3231	2015-06-03 01:26:39.137127-06	17
524	4094	7914	4094	3183	2015-06-03 01:26:39.518238-06	18
525	4094	7914	4094	6353	2015-06-03 01:26:39.928429-06	19
526	4094	7914	4094	4509	2015-06-03 01:26:40.350031-06	20
527	494	2020	493	46	2015-06-03 01:26:40.746851-06	12
528	494	1008	491	211	2015-06-03 01:26:41.219975-06	13
529	4094	7946	4094	4950	2015-06-03 01:26:46.931646-06	1
530	4094	7946	4094	3419	2015-06-03 01:26:47.427826-06	26
531	4094	7946	4094	4577	2015-06-03 01:26:47.822976-06	25
532	4094	7946	4094	4241	2015-06-03 01:26:48.231117-06	22
533	4094	7946	4094	6160	2015-06-03 01:26:48.638295-06	21
534	4094	7946	4094	6478	2015-06-03 01:26:49.065123-06	24
535	4094	7946	4094	6397	2015-06-03 01:26:49.473006-06	23
536	4094	7946	4094	6392	2015-06-03 01:26:49.872547-06	28
537	4094	7946	4094	6260	2015-06-03 01:26:50.279543-06	27
538	4094	7946	4094	6164	2015-06-03 01:26:50.681713-06	3
539	4094	7914	4094	6274	2015-06-03 01:26:51.08655-06	2
540	4094	7914	4094	4251	2015-06-03 01:26:51.532359-06	5
541	4094	7914	4094	4534	2015-06-03 01:26:52.162353-06	4
542	4094	7914	4094	4538	2015-06-03 01:26:52.558733-06	7
543	4094	7914	4094	4254	2015-06-03 01:26:52.942806-06	6
544	4094	7914	4094	6371	2015-06-03 01:26:53.332248-06	9
545	4094	7914	4094	3452	2015-06-03 01:26:53.745813-06	8
546	4094	7914	4094	3505	2015-06-03 01:26:54.151469-06	11
547	4094	7914	4094	4659	2015-06-03 01:26:54.553005-06	10
548	4094	7913	4094	6741	2015-06-03 01:26:55.000932-06	14
549	4094	7914	4094	3114	2015-06-03 01:26:55.375137-06	15
550	4094	7914	4094	6408	2015-06-03 01:26:55.766712-06	16
551	4094	7914	4094	3230	2015-06-03 01:26:56.147-06	17
552	4094	7914	4094	3181	2015-06-03 01:26:56.538523-06	18
553	4094	7914	4094	6353	2015-06-03 01:26:56.97763-06	19
554	4094	7914	4094	4507	2015-06-03 01:26:57.42868-06	20
555	494	2020	493	48	2015-06-03 01:26:57.831737-06	12
556	494	1008	491	211	2015-06-03 01:26:58.22614-06	13
557	4094	7946	4094	4950	2015-06-03 01:29:17.905808-06	1
558	4094	7946	4094	3419	2015-06-03 01:29:18.307818-06	26
559	4094	7946	4094	4577	2015-06-03 01:29:18.68822-06	25
560	4094	7946	4094	4240	2015-06-03 01:29:19.100517-06	22
561	4094	7946	4094	6160	2015-06-03 01:29:19.595419-06	21
562	4094	7946	4094	6478	2015-06-03 01:29:20.03038-06	24
563	4094	7946	4094	6396	2015-06-03 01:29:20.443666-06	23
564	4094	7946	4094	6392	2015-06-03 01:29:20.826478-06	28
565	4094	7946	4094	6259	2015-06-03 01:29:21.242568-06	27
566	4094	7946	4094	6164	2015-06-03 01:29:21.726275-06	3
567	4094	7914	4094	6274	2015-06-03 01:29:22.140817-06	2
568	4094	7914	4094	4239	2015-06-03 01:29:22.533654-06	5
569	4094	7914	4094	4522	2015-06-03 01:29:22.98181-06	4
570	4094	7914	4094	4527	2015-06-03 01:29:23.393642-06	7
571	4094	7914	4094	4242	2015-06-03 01:29:23.797886-06	6
572	4094	7914	4094	6371	2015-06-03 01:29:24.187108-06	9
573	4094	7914	4094	3441	2015-06-03 01:29:24.614288-06	8
574	4094	7914	4094	3494	2015-06-03 01:29:25.00529-06	11
575	4094	7914	4094	4647	2015-06-03 01:29:25.461124-06	10
576	4094	7913	4094	6741	2015-06-03 01:29:25.924226-06	14
577	4094	7914	4094	3103	2015-06-03 01:29:26.319508-06	15
578	4094	7914	4094	6407	2015-06-03 01:29:26.71239-06	16
579	4094	7914	4094	3219	2015-06-03 01:29:27.073877-06	17
580	4094	7914	4094	3170	2015-06-03 01:29:27.608752-06	18
581	4094	7914	4094	6353	2015-06-03 01:29:28.037056-06	19
582	4094	7914	4094	4497	2015-06-03 01:29:28.492502-06	20
583	494	2020	493	46	2015-06-03 01:29:28.889468-06	12
584	494	1008	491	211	2015-06-03 01:29:29.297356-06	13
585	4094	7946	4094	4913	2015-06-03 06:46:52.904307-06	1
586	4094	7946	4094	3393	2015-06-03 06:46:53.309277-06	26
587	4094	7946	4094	4495	2015-06-03 06:46:53.724688-06	25
588	4094	7946	4094	4154	2015-06-03 06:46:54.133227-06	22
589	4094	7946	4094	6123	2015-06-03 06:46:54.518616-06	21
590	4094	7946	4094	6441	2015-06-03 06:46:55.263849-06	24
591	4094	7946	4094	6373	2015-06-03 06:46:55.649374-06	23
592	4094	7946	4094	6368	2015-06-03 06:46:56.026208-06	28
593	4094	7946	4094	6236	2015-06-03 06:46:56.404618-06	27
594	4094	7946	4094	6139	2015-06-03 06:46:56.787822-06	3
595	4094	7914	4094	6253	2015-06-03 06:46:57.182494-06	2
596	4094	7914	4094	4136	2015-06-03 06:46:57.573655-06	5
597	4094	7914	4094	4416	2015-06-03 06:46:58.001942-06	4
598	4094	7914	4094	4422	2015-06-03 06:46:58.396038-06	7
599	4094	7914	4094	4139	2015-06-03 06:46:58.797578-06	6
600	4094	7914	4094	6343	2015-06-03 06:46:59.170584-06	9
601	4094	7914	4094	3336	2015-06-03 06:46:59.567739-06	8
602	4094	7914	4094	3390	2015-06-03 06:46:59.984341-06	11
603	4094	7914	4094	4543	2015-06-03 06:47:00.423051-06	10
604	4094	7913	4094	6716	2015-06-03 06:47:00.804386-06	14
605	4094	7914	4094	2998	2015-06-03 06:47:01.206788-06	15
606	4094	7914	4094	6384	2015-06-03 06:47:01.588753-06	16
607	4094	7914	4094	3116	2015-06-03 06:47:01.985691-06	17
608	4094	7914	4094	3062	2015-06-03 06:47:02.394666-06	18
609	4094	7914	4094	6333	2015-06-03 06:47:02.782298-06	19
610	4094	7914	4094	4393	2015-06-03 06:47:03.198597-06	20
611	494	2020	493	47	2015-06-03 06:47:03.600485-06	12
612	494	1008	491	210	2015-06-03 06:47:03.993049-06	13
\.


--
-- Name: gestion_red_memoryhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_memoryhistory_id_seq', 612, true);


--
-- Data for Name: gestion_red_process; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_process (id, index, name, min, max, count, flag, msg, created, host_id) FROM stdin;
6	6	m_301_refresh	1	1	1	f		2015-06-02 03:13:06.911549-06	1
7	7	m_301_fp_recalc	1	1	1	f		2015-06-02 03:13:06.986238-06	1
8	8	m_302_processor	1	1	1	f		2015-06-02 03:13:07.061156-06	1
9	9	m_303_events	1	1	1	f		2015-06-02 03:13:07.135982-06	1
10	10	m_304_strips_pr	1	1	1	f		2015-06-02 03:13:07.21939-06	1
11	11	m_304_format_st	1	1	1	f		2015-06-02 03:13:07.294094-06	1
12	12	m_304_distribut	1	1	1	f		2015-06-02 03:13:07.369275-06	1
13	13	m_305_rpl_manag	1	1	1	f		2015-06-02 03:13:07.435592-06	1
14	14	m_305_rpl_load	1	1	1	f		2015-06-02 03:13:07.51873-06	1
15	15	m_305_rpl_explo	1	1	1	f		2015-06-02 03:13:07.593662-06	1
16	16	m_305_rpl_refre	1	1	1	f		2015-06-02 03:13:07.668583-06	1
17	17	m_306_conflict_	1	1	1	f		2015-06-02 03:13:07.743645-06	1
18	18	m_308_flow_cont	1	1	1	f		2015-06-02 03:13:07.818374-06	1
19	19	m_308_flow_even	1	1	1	f		2015-06-02 03:13:07.901567-06	1
20	20	m_309_line_writ	1	1	1	f		2015-06-02 03:13:07.984921-06	1
21	21	m_309_line_read	1	1	1	f		2015-06-02 03:13:08.059536-06	1
22	22	m_309_line_rw	1	1	1	f		2015-06-02 03:13:08.134626-06	1
23	23	m_309_processor	1	1	1	f		2015-06-02 03:13:08.209485-06	1
24	24	m_310_processor	1	1	1	f		2015-06-02 03:13:08.28464-06	1
25	25	m_311_notams	1	1	1	f		2015-06-02 03:13:08.35919-06	1
26	26	m_312_line_writ	1	1	1	f		2015-06-02 03:13:08.442619-06	1
27	27	m_312_line_read	1	1	1	f		2015-06-02 03:13:08.517517-06	1
28	28	m_312_processor	1	1	1	f		2015-06-02 03:13:08.592223-06	1
29	29	m_316_airspace_	1	1	1	f		2015-06-02 03:13:08.667055-06	1
30	30	m_316_explorer	1	1	1	f		2015-06-02 03:13:08.733534-06	1
31	31	m_321_fmtp	1	1	1	f		2015-06-02 03:13:08.808773-06	1
32	32	m_322_historica	1	1	1	f		2015-06-02 03:13:08.875018-06	1
33	33	m_323_grib	1	1	1	f		2015-06-02 03:13:08.950288-06	1
34	34	m_325_asm	1	1	1	f		2015-06-02 03:13:09.025113-06	1
35	1	m_350_fdp_task	1	1	1	f		2015-06-02 03:13:10.123339-06	26
36	2	m_307_superviso	1	1	1	f		2015-06-02 03:13:10.206761-06	26
37	3	m_399_presence	1	1	1	f		2015-06-02 03:13:10.281392-06	26
38	4	m_301_init_expl	1	1	1	f		2015-06-02 03:13:10.356183-06	26
39	5	m_301_multiple_	1	1	1	f		2015-06-02 03:13:10.43113-06	26
40	6	m_301_refresh	1	1	1	f		2015-06-02 03:13:10.506237-06	26
41	7	m_301_fp_recalc	1	1	1	f		2015-06-02 03:13:10.580978-06	26
42	8	m_302_processor	1	1	1	f		2015-06-02 03:13:10.647518-06	26
43	9	m_303_events	1	1	1	f		2015-06-02 03:13:10.722265-06	26
44	10	m_304_strips_pr	1	1	1	f		2015-06-02 03:13:10.797439-06	26
45	11	m_304_format_st	1	1	1	f		2015-06-02 03:13:10.86385-06	26
46	12	m_304_distribut	1	1	1	f		2015-06-02 03:13:10.938686-06	26
47	13	m_305_rpl_manag	1	1	1	f		2015-06-02 03:13:11.013529-06	26
48	14	m_305_rpl_load	1	1	1	f		2015-06-02 03:13:11.088707-06	26
49	15	m_305_rpl_explo	1	1	1	f		2015-06-02 03:13:11.155098-06	26
50	16	m_305_rpl_refre	1	1	1	f		2015-06-02 03:13:11.22184-06	26
51	17	m_306_conflict_	1	1	1	f		2015-06-02 03:13:11.288262-06	26
52	18	m_308_flow_cont	1	1	1	f		2015-06-02 03:13:11.36311-06	26
53	19	m_308_flow_even	1	1	1	f		2015-06-02 03:13:11.437988-06	26
54	20	m_309_line_writ	1	1	1	f		2015-06-02 03:13:11.513145-06	26
55	21	m_309_line_read	1	1	1	f		2015-06-02 03:13:11.579373-06	26
56	22	m_309_line_rw	1	1	1	f		2015-06-02 03:13:11.654208-06	26
57	23	m_309_processor	1	1	1	f		2015-06-02 03:13:11.737524-06	26
58	24	m_310_processor	1	1	1	f		2015-06-02 03:13:11.804232-06	26
59	25	m_311_notams	1	1	1	f		2015-06-02 03:13:11.891734-06	26
60	26	m_312_line_writ	1	1	1	f		2015-06-02 03:13:11.970526-06	26
61	27	m_312_line_read	1	1	1	f		2015-06-02 03:13:12.037281-06	26
62	28	m_312_processor	1	1	1	f		2015-06-02 03:13:12.11219-06	26
63	29	m_316_airspace_	1	1	1	f		2015-06-02 03:13:12.178549-06	26
64	30	m_316_explorer	1	1	1	f		2015-06-02 03:13:12.253532-06	26
65	31	m_321_fmtp	1	1	1	f		2015-06-02 03:13:12.328491-06	26
66	32	m_322_historica	1	1	1	f		2015-06-02 03:13:12.403273-06	26
67	33	m_323_grib	1	1	1	f		2015-06-02 03:13:12.478163-06	26
68	34	m_325_asm	1	1	1	f		2015-06-02 03:13:12.55307-06	26
69	35	m_get_status.sh	0	1	0	f		2015-06-02 03:13:12.619544-06	26
70	1	m_sdp_superviso	1	1	1	f		2015-06-02 03:13:13.368455-06	25
71	2	m_sdp_tracker	1	1	1	f		2015-06-02 03:13:13.44331-06	25
72	3	m_sdp_adr	1	1	1	f		2015-06-02 03:13:13.509781-06	25
73	4	m_sdp_meteo	1	1	1	f		2015-06-02 03:13:13.58475-06	25
74	5	m_sdp_presence	1	1	1	f		2015-06-02 03:13:13.65155-06	25
75	6	m_sdp_encode_ca	1	1	1	f		2015-06-02 03:13:13.726371-06	25
76	7	m_sfn_superviso	1	1	1	f		2015-06-02 03:13:13.801498-06	25
77	8	m_sfn_conflict	1	1	1	f		2015-06-02 03:13:13.876125-06	25
78	9	m_sfn_mosaic	1	1	1	f		2015-06-02 03:13:13.951106-06	25
79	10	m_sfn_flight_pl	1	1	1	f		2015-06-02 03:13:14.025899-06	25
80	11	m_sfn_flat_espe	1	1	1	f		2015-06-02 03:13:14.100888-06	25
81	12	m_sfn_sinthetic	1	1	1	f		2015-06-02 03:13:14.184109-06	25
82	13	m_sfn_man_track	1	1	1	f		2015-06-02 03:13:14.350795-06	25
83	14	m_sfn_db_tracks	1	1	1	f		2015-06-02 03:13:14.433694-06	25
84	15	m_sfn_decode_ca	1	1	1	f		2015-06-02 03:13:14.516927-06	25
85	16	m_sfn_presence	1	1	1	f		2015-06-02 03:13:14.591735-06	25
86	1	m_sdp_superviso	1	1	1	f		2015-06-02 03:13:15.357377-06	22
87	2	m_sdp_tracker	1	1	1	f		2015-06-02 03:13:15.440426-06	22
88	3	m_sdp_adr	1	1	1	f		2015-06-02 03:13:15.51562-06	22
89	4	m_sdp_meteo	1	1	1	f		2015-06-02 03:13:15.590452-06	22
90	5	m_sdp_presence	1	1	1	f		2015-06-02 03:13:15.657-06	22
91	6	m_sdp_encode_ca	1	1	1	f		2015-06-02 03:13:15.731692-06	22
1	1	m_350_fdp_task	1	1	1	f		2015-06-02 03:13:06.528649-06	1
2	2	m_307_superviso	1	1	1	f		2015-06-02 03:13:06.603459-06	1
3	3	m_399_presence	1	1	1	f		2015-06-02 03:13:06.678279-06	1
4	4	m_301_init_expl	1	1	1	f		2015-06-02 03:13:06.753653-06	1
5	5	m_301_multiple_	1	1	1	f		2015-06-02 03:13:06.828328-06	1
125	6	m_rdcu_gest_cca	1	1	1	f		2015-06-02 03:13:19.917517-06	24
143	2	m_sdd_grabac	1	0	1	f		2015-06-02 03:13:27.181466-06	10
144	3	m_sdd_graf	1	0	1	f		2015-06-02 03:13:27.239576-06	10
145	4	m_sdd_interac	1	0	1	f		2015-06-02 03:13:27.306502-06	10
146	5	m_sdd_iwm	1	0	1	f		2015-06-02 03:13:27.381393-06	10
92	7	m_sfn_superviso	1	1	1	f		2015-06-02 03:13:15.798547-06	22
93	8	m_sfn_conflict	1	1	1	f		2015-06-02 03:13:15.864883-06	22
107	6	m_rdcu_gest_cca	1	1	1	f		2015-06-02 03:13:17.612254-06	21
108	7	m_rdcu_gest_lan	1	1	1	f		2015-06-02 03:13:17.679113-06	21
109	8	m_rdcu_gest_ar_	1	2	2	f		2015-06-02 03:13:17.74556-06	21
110	9	m_rdcu_gest_sir	1	1	1	f		2015-06-02 03:13:17.811927-06	21
111	10	m_rdcu_tx_lan	1	1	1	f		2015-06-02 03:13:17.887067-06	21
112	11	m_rdcu_rx_lan	1	1	1	f		2015-06-02 03:13:17.961698-06	21
113	12	m_rdcu_vueltas_	1	1	1	f		2015-06-02 03:13:18.036726-06	21
114	13	m_rdcu_empaquet	1	1	1	f		2015-06-02 03:13:18.111439-06	21
115	14	m_rdcu_envio_me	2	2	2	f		2015-06-02 03:13:18.178158-06	21
116	15	m_rdcu_tx_aster	10	10	10	f		2015-06-02 03:13:18.253244-06	21
117	16	m_rdcu_vigilanc	1	1	1	f		2015-06-02 03:13:18.344635-06	21
118	17	m_rdcu_tserie	1	1	1	f		2015-06-02 03:13:18.411169-06	21
119	18	m_rdcu_trecord	1	1	1	f		2015-06-02 03:13:18.485991-06	21
120	1	m_rdcu_supervis	1	1	1	f		2015-06-02 03:13:19.533104-06	24
121	2	m_rdcu_rdrd_0	1	1	1	f		2015-06-02 03:13:19.617911-06	24
122	3	m_rdcu_gest_air	1	1	1	f		2015-06-02 03:13:19.692526-06	24
123	4	m_rdcu_gest_cd2	1	1	1	f		2015-06-02 03:13:19.767381-06	24
126	7	m_rdcu_gest_lan	1	1	1	f		2015-06-02 03:13:19.992136-06	24
127	8	m_rdcu_gest_ar_	1	2	2	f		2015-06-02 03:13:20.058899-06	24
128	9	m_rdcu_gest_sir	1	1	1	f		2015-06-02 03:13:20.125534-06	24
129	10	m_rdcu_tx_lan	1	1	1	f		2015-06-02 03:13:20.20023-06	24
130	11	m_rdcu_rx_lan	1	1	1	f		2015-06-02 03:13:20.26666-06	24
131	12	m_rdcu_vueltas_	1	1	1	f		2015-06-02 03:13:20.341506-06	24
132	13	m_rdcu_empaquet	1	1	1	f		2015-06-02 03:13:20.416481-06	24
133	14	m_rdcu_envio_me	1	2	2	f		2015-06-02 03:13:20.483327-06	24
134	15	m_rdcu_tx_aster	10	12	12	f		2015-06-02 03:13:20.549822-06	24
135	16	m_rdcu_vigilanc	1	1	1	f		2015-06-02 03:13:20.616119-06	24
136	17	m_rdcu_tserie	1	1	1	f		2015-06-02 03:13:20.691147-06	24
137	18	m_rdcu_trecord	1	1	1	f		2015-06-02 03:13:20.766068-06	24
138	1	m_1101_supervis	1	28	1	f		2015-06-02 03:13:21.332054-06	23
139	2	m_1105_aircraft	1	1	1	f		2015-06-02 03:13:21.39865-06	23
140	3	m_1106_handler_	1	28	1	f		2015-06-02 03:13:21.473353-06	23
147	6	m_sdd_remote	1	0	1	f		2015-06-02 03:13:27.447781-06	10
148	7	tdrlocal	1	0	1	f		2015-06-02 03:13:27.514311-06	10
149	8	m_sdp_bypass	1	0	1	f		2015-06-02 03:13:27.589523-06	10
150	9	m_510_strips	1	0	1	f		2015-06-02 03:13:27.664449-06	10
151	10	m_sdd_monitor	1	0	1	f		2015-06-02 03:13:27.730671-06	10
152	1	snmpd	1	3	1	f		2015-06-02 03:13:29.153601-06	16
153	2	dhcpd	1	1	0	t	Too few dhcpd running (# = 0)	2015-06-02 03:13:29.220171-06	16
154	3	crond	1	3	1	f		2015-06-02 03:13:29.428603-06	16
155	4	snmptrapd	1	1	0	t	Too few snmptrapd running (# = 0)	2015-06-02 03:13:29.511361-06	16
156	1	minidiscoRemoto	1	3	10	t	Too many minidiscoRemoto running (# = 10)	2015-06-02 03:13:43.939736-06	13
157	2	cron	1	1	0	t	Too few cron running (# = 0)	2015-06-02 03:13:44.006143-06	13
94	9	m_sfn_mosaic	1	1	1	f		2015-06-02 03:13:15.931546-06	22
95	10	m_sfn_flight_pl	1	1	1	f		2015-06-02 03:13:15.997872-06	22
96	11	m_sfn_flat_espe	1	1	1	f		2015-06-02 03:13:16.072956-06	22
97	12	m_sfn_sinthetic	1	1	1	f		2015-06-02 03:13:16.147695-06	22
98	13	m_sfn_man_track	1	1	1	f		2015-06-02 03:13:16.231203-06	22
99	14	m_sfn_db_tracks	1	1	1	f		2015-06-02 03:13:16.314541-06	22
100	15	m_sfn_decode_ca	1	1	1	f		2015-06-02 03:13:16.380746-06	22
101	16	m_sfn_presence	1	1	1	f		2015-06-02 03:13:16.447376-06	22
102	1	m_rdcu_supervis	1	1	1	f		2015-06-02 03:13:17.225916-06	21
103	2	m_rdcu_rdrd_0	1	1	1	f		2015-06-02 03:13:17.312762-06	21
104	3	m_rdcu_gest_air	1	1	1	f		2015-06-02 03:13:17.387904-06	21
105	4	m_rdcu_gest_cd2	1	1	1	f		2015-06-02 03:13:17.46244-06	21
106	5	m_rdcu_gest_cda	1	1	1	f		2015-06-02 03:13:17.537503-06	21
124	5	m_rdcu_gest_cda	1	1	1	f		2015-06-02 03:13:19.842577-06	24
141	4	m_1109_matip	1	2	2	f		2015-06-02 03:13:21.578416-06	23
142	1	m_sdd_atc	1	0	1	f		2015-06-02 03:13:27.114859-06	10
\.


--
-- Name: gestion_red_process_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_process_id_seq', 157, true);


--
-- Data for Name: gestion_red_storage; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY gestion_red_storage (id, index, type, description, size, used, allocation_failures, host_id, percent_used) FROM stdin;
6	31	Disco Fijo	/	131613	29713	772	1	22
7	1	Memoria RAM	Physical memory	7946	4509	0	26	56
8	3	Memoria Virtual	Virtual memory	12041	4509	768	26	37
9	6	Otro	Memory buffers	7946	213	769	26	2
10	7	Otro	Cached memory	2667	2667	770	26	100
12	31	Disco Fijo	/	131613	7743	772	26	5
13	1	Memoria RAM	Physical memory	7946	3320	0	25	41
14	3	Memoria Virtual	Virtual memory	12041	3321	768	25	27
15	6	Otro	Memory buffers	7946	198	769	25	2
16	7	Otro	Cached memory	2222	2222	770	25	100
17	10	Memoria Virtual	Swap space	4094	0	771	25	0
18	31	Disco Fijo	/	131613	7144	772	25	5
19	1	Memoria RAM	Physical memory	7946	3656	0	22	46
20	3	Memoria Virtual	Virtual memory	12041	3656	768	22	30
21	6	Otro	Memory buffers	7946	183	769	22	2
22	7	Otro	Cached memory	2580	2580	770	22	100
23	10	Memoria Virtual	Swap space	4094	0	771	22	0
24	31	Disco Fijo	/	131613	7840	772	22	5
25	1	Memoria RAM	Physical memory	7946	1767	0	21	22
26	3	Memoria Virtual	Virtual memory	12041	1767	768	21	14
27	6	Otro	Memory buffers	7946	200	769	21	2
28	7	Otro	Cached memory	1248	1248	770	21	100
29	10	Memoria Virtual	Swap space	4094	0	771	21	0
30	31	Disco Fijo	/	131613	5965	772	21	4
31	1	Memoria RAM	Physical memory	7946	1448	0	24	18
33	6	Otro	Memory buffers	7946	189	769	24	2
34	7	Otro	Cached memory	959	959	770	24	100
35	10	Memoria Virtual	Swap space	4094	0	771	24	0
36	31	Disco Fijo	/	131613	6169	772	24	4
37	1	Memoria RAM	Physical memory	7946	1533	0	23	19
38	3	Memoria Virtual	Virtual memory	12041	1533	768	23	12
39	6	Otro	Memory buffers	7946	194	769	23	2
40	7	Otro	Cached memory	1055	1055	770	23	100
41	10	Memoria Virtual	Swap space	4094	0	771	23	0
42	31	Disco Fijo	/	131613	5590	772	23	4
43	1	Memoria RAM	Physical memory	7946	1539	0	28	19
44	3	Memoria Virtual	Virtual memory	12041	1539	768	28	12
45	6	Otro	Memory buffers	7946	194	769	28	2
46	7	Otro	Cached memory	1061	1061	770	28	100
47	10	Memoria Virtual	Swap space	4094	0	771	28	0
48	31	Disco Fijo	/	131613	5594	772	28	4
49	1	Memoria RAM	Physical memory	7946	1671	0	27	21
50	3	Memoria Virtual	Virtual memory	12041	1671	768	27	13
51	6	Otro	Memory buffers	7946	223	769	27	2
52	7	Otro	Cached memory	1110	1110	770	27	100
53	10	Memoria Virtual	Swap space	4094	0	771	27	0
54	31	Disco Fijo	/	267216	50771	772	27	18
56	3	Memoria Virtual	Virtual memory	12041	1774	768	3	14
57	6	Otro	Memory buffers	7946	207	769	3	2
58	7	Otro	Cached memory	1272	1272	770	3	100
59	10	Memoria Virtual	Swap space	4094	0	771	3	0
60	31	Disco Fijo	/	267216	5948	772	3	2
61	1	Memoria RAM	Physical memory	7914	1627	0	2	20
62	3	Memoria Virtual	Virtual memory	12008	1627	768	2	13
63	6	Otro	Memory buffers	7914	198	769	2	2
64	7	Otro	Cached memory	1140	1140	770	2	100
65	10	Memoria Virtual	Swap space	4094	0	771	2	0
66	31	Disco Fijo	/	434950	5814	772	2	1
67	1	Memoria RAM	Physical memory	7914	3555	0	5	44
68	3	Memoria Virtual	Virtual memory	12008	3555	768	5	29
69	6	Otro	Memory buffers	7914	474	769	5	5
70	7	Otro	Cached memory	2547	2547	770	5	100
71	10	Memoria Virtual	Swap space	4094	0	771	5	0
72	31	Disco Fijo	/	434950	8932	772	5	2
73	1	Memoria RAM	Physical memory	7914	3271	0	4	41
75	6	Otro	Memory buffers	7914	290	769	4	3
76	7	Otro	Cached memory	2448	2448	770	4	100
77	10	Memoria Virtual	Swap space	4094	0	771	4	0
78	31	Disco Fijo	/	434950	8143	772	4	1
79	1	Memoria RAM	Physical memory	7914	3266	0	7	41
80	3	Memoria Virtual	Virtual memory	12008	3266	768	7	27
81	6	Otro	Memory buffers	7914	477	769	7	6
82	7	Otro	Cached memory	2249	2249	770	7	100
83	10	Memoria Virtual	Swap space	4094	0	771	7	0
84	31	Disco Fijo	/	434950	15124	772	7	3
85	1	Memoria RAM	Physical memory	7914	3552	0	6	44
86	3	Memoria Virtual	Virtual memory	12008	3552	768	6	29
87	6	Otro	Memory buffers	7914	532	769	6	6
88	7	Otro	Cached memory	2489	2489	770	6	100
89	10	Memoria Virtual	Swap space	4094	0	771	6	0
90	31	Disco Fijo	/	434950	8742	772	6	2
91	1	Memoria RAM	Physical memory	7914	1526	0	9	19
92	3	Memoria Virtual	Virtual memory	12008	1526	768	9	12
93	6	Otro	Memory buffers	7914	190	769	9	2
94	7	Otro	Cached memory	1062	1062	770	9	100
95	10	Memoria Virtual	Swap space	4094	0	771	9	0
96	31	Disco Fijo	/	434950	8292	772	9	1
97	1	Memoria RAM	Physical memory	7914	4351	0	8	54
122	3	Memoria Virtual	Virtual memory	12008	4689	768	15	39
123	6	Otro	Memory buffers	7914	415	769	15	5
124	7	Otro	Cached memory	3648	3648	770	15	100
3	6	Otro	Memory buffers	7946	219	769	1	2
4	7	Otro	Cached memory	1108	1108	770	1	100
5	10	Memoria Virtual	Swap space	4094	0	771	1	0
163	8			0	0	0	13	0
101	10	Memoria Virtual	Swap space	4094	0	771	8	0
119	10	Memoria Virtual	Swap space	4094	0	771	14	0
120	31	Disco Fijo	/	434950	12621	772	14	2
121	1	Memoria RAM	Physical memory	7914	4689	0	15	59
125	10	Memoria Virtual	Swap space	4094	0	771	15	0
140	3	Memoria Virtual	Virtual memory	12008	4623	768	18	38
141	6	Otro	Memory buffers	7914	465	769	18	5
142	7	Otro	Cached memory	3540	3540	770	18	100
143	10	Memoria Virtual	Swap space	4094	0	771	18	0
158	3	Memoria Virtual	Swap Space	494	2	769	13	0
159	4	Disco Fijo	/	3760	2179	1025	13	57
160	5	Disco Fijo	/var	3760	123	1026	13	3
161	6	Disco Fijo	/home	19225	3569	1027	13	18
162	7	Disco Fijo	/home/rec	438459	63246	1280	13	14
1	1	Memoria RAM	Physical memory	7946	2975	0	1	37
2	3	Memoria Virtual	Virtual memory	12041	2976	768	1	24
11	10	Memoria Virtual	Swap space	4094	0	771	26	0
32	3	Memoria Virtual	Virtual memory	12041	1448	768	24	12
55	1	Memoria RAM	Physical memory	7946	1774	0	3	22
74	3	Memoria Virtual	Virtual memory	12008	3271	768	4	27
98	3	Memoria Virtual	Virtual memory	12008	4351	768	8	36
99	6	Otro	Memory buffers	7914	491	769	8	6
100	7	Otro	Cached memory	3249	3249	770	8	100
102	31	Disco Fijo	/	434950	10012	772	8	2
103	1	Memoria RAM	Physical memory	7914	4300	0	11	54
104	3	Memoria Virtual	Virtual memory	12008	4300	768	11	35
105	6	Otro	Memory buffers	7914	523	769	11	6
106	7	Otro	Cached memory	3165	3165	770	11	100
107	10	Memoria Virtual	Swap space	4094	0	771	11	0
108	31	Disco Fijo	/	434950	9193	772	11	2
109	1	Memoria RAM	Physical memory	7914	3147	0	10	39
110	3	Memoria Virtual	Virtual memory	12008	3147	768	10	26
111	6	Otro	Memory buffers	7914	445	769	10	5
112	7	Otro	Cached memory	2155	2155	770	10	100
113	10	Memoria Virtual	Swap space	4094	0	771	10	0
114	31	Disco Fijo	/	434950	7350	772	10	1
115	1	Memoria RAM	Physical memory	7913	1158	0	14	14
116	3	Memoria Virtual	Virtual memory	12008	1158	768	14	9
117	6	Otro	Memory buffers	7913	184	769	14	2
118	7	Otro	Cached memory	708	708	770	14	100
126	31	Disco Fijo	/	434950	10470	772	15	2
127	1	Memoria RAM	Physical memory	7914	1496	0	16	18
128	3	Memoria Virtual	Virtual memory	12008	1496	768	16	12
129	6	Otro	Memory buffers	7914	163	769	16	2
130	7	Otro	Cached memory	1086	1086	770	16	100
131	10	Memoria Virtual	Swap space	4094	0	771	16	0
132	31	Disco Fijo	/	434950	190262	772	16	43
133	1	Memoria RAM	Physical memory	7914	4574	0	17	57
134	3	Memoria Virtual	Virtual memory	12008	4574	768	17	38
135	6	Otro	Memory buffers	7914	432	769	17	5
136	7	Otro	Cached memory	3520	3520	770	17	100
137	10	Memoria Virtual	Swap space	4094	0	771	17	0
138	31	Disco Fijo	/	434950	9316	772	17	2
139	1	Memoria RAM	Physical memory	7914	4623	0	18	58
144	31	Disco Fijo	/	434950	9277	772	18	2
145	1	Memoria RAM	Physical memory	7914	1549	0	19	19
146	3	Memoria Virtual	Virtual memory	12008	1549	768	19	12
147	6	Otro	Memory buffers	7914	197	769	19	2
148	7	Otro	Cached memory	1059	1059	770	19	100
149	10	Memoria Virtual	Swap space	4094	0	771	19	0
150	31	Disco Fijo	/	434950	5698	772	19	1
151	1	Memoria RAM	Physical memory	7914	3297	0	20	41
152	3	Memoria Virtual	Virtual memory	12008	3297	768	20	27
153	6	Otro	Memory buffers	7914	444	769	20	5
154	7	Otro	Cached memory	2322	2322	770	20	100
155	10	Memoria Virtual	Swap space	4094	0	771	20	0
156	31	Disco Fijo	/	434950	8654	772	20	1
157	2	Memoria RAM	Real Memory	1008	797	768	13	79
\.


--
-- Name: gestion_red_storage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('gestion_red_storage_id_seq', 163, true);


--
-- Data for Name: incidencias_actividadcambio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY incidencias_actividadcambio (id, activo, creado, modificado, descripcion, paro_equipo, duracion_paro, inicio_actividad, fin_actividad, cambio_id, creador_id) FROM stdin;
\.


--
-- Name: incidencias_actividadcambio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('incidencias_actividadcambio_id_seq', 1, false);


--
-- Data for Name: incidencias_actividadincidencia; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY incidencias_actividadincidencia (id, activo, creado, modificado, descripcion, paro_equipo, duracion_paro, inicio_actividad, fin_actividad, creador_id, incidencia_id) FROM stdin;
1	t	2015-05-13 14:41:35.928362-06	2015-05-13 14:41:35.928437-06	FDSSDAFSDA FSADF	f	0	2015-05-13 14:41:33-06	2015-05-13 14:41:34-06	1	1
4	t	2015-05-19 14:12:39.108318-06	2015-05-19 14:12:39.108372-06	<p>hay q cerrar tooodo</p>\n	t	7	2015-05-19 14:08:00-06	2015-05-19 14:30:00-06	3	1
6	t	2015-05-19 14:16:16.308874-06	2015-05-19 14:16:16.30893-06	<p>df df gdsfg dfg dsfg dsg</p>\n	f	0	2015-05-18 14:16:00-06	2015-05-18 14:17:00-06	3	9
7	t	2015-05-19 14:17:37.537124-06	2015-05-19 14:17:37.537199-06	<p>fggd fgdfsg dfsgdsf</p>\n	f	0	2015-05-18 14:17:00-06	2015-05-18 14:18:00-06	3	9
8	t	2015-05-19 14:18:37.618019-06	2015-05-19 14:18:37.618111-06	<p>dgdsfs gdsfgdsf gdfsg</p>\n	f	0	2015-05-18 14:18:00-06	2015-05-18 14:19:00-06	3	10
9	t	2015-05-19 14:19:54.15832-06	2015-05-19 14:19:54.158376-06	<p>rtetertre tet gfhgfjhfg jgf j</p>\n	f	0	2015-05-18 14:19:00-06	2015-05-18 14:20:00-06	3	10
10	t	2015-05-19 14:21:13.776435-06	2015-05-19 14:21:13.776496-06	<p>&nbsp;dsfg sdfg sdg dsfgdsfg dsfg dsg</p>\n	f	0	2015-05-18 14:21:00-06	2015-05-18 14:22:00-06	3	10
11	t	2015-05-19 14:22:17.35778-06	2015-05-19 14:22:17.357842-06	<p>sd fffg gsfdfdh fdhdf</p>\n	f	0	2015-05-18 14:22:00-06	2015-05-18 14:23:00-06	3	10
12	t	2015-05-19 14:25:10.146029-06	2015-05-19 14:25:10.146119-06	<p>ds fsdfsdf sdafsadfsda</p>\n	f	0	2015-05-18 14:25:00-06	2015-05-18 14:26:00-06	3	10
13	t	2015-05-19 14:25:34.566579-06	2015-05-19 14:25:34.566654-06	<p>ds rggdss dfg dsfgdfsg dfs</p>\n	f	0	2015-05-18 14:25:00-06	2015-05-18 14:26:00-06	3	10
14	t	2015-05-19 14:26:39.568685-06	2015-05-19 14:26:39.568739-06	<p>,jb jhvyigvb khvguk yg iugft iyfg</p>\n	f	0	2015-05-18 14:26:00-06	2015-05-18 14:27:00-06	3	10
15	t	2015-05-19 14:27:11.629095-06	2015-05-19 14:27:11.62915-06	<p>sdf sadf sadf&nbsp;</p>\n	f	0	2015-05-19 14:26:00-06	2015-05-19 14:27:00-06	3	10
16	t	2015-05-19 14:29:37.100894-06	2015-05-19 14:29:37.100947-06	<p>dfg sdfg dsfg dsfg</p>\n	f	0	2015-05-19 14:27:00-06	2015-05-19 14:28:00-06	3	10
17	t	2015-05-19 14:30:12.400037-06	2015-05-19 14:30:12.400099-06	<p>er dgdfsgdsfg</p>\n	f	0	2015-05-18 14:30:00-06	2015-05-18 14:31:00-06	3	10
18	t	2015-05-19 14:31:07.134395-06	2015-05-19 14:31:07.134461-06	<p>er dgdfsgdsfg</p>\n	f	0	2015-05-18 14:30:00-06	2015-05-18 14:31:00-06	3	10
19	t	2015-05-19 14:32:30.113534-06	2015-05-19 14:32:30.113642-06	<p>khugydytcrsre6s ytrswresrstew4s tresrt</p>\n	f	0	2015-05-18 14:32:00-06	2015-05-18 14:33:00-06	3	10
20	t	2015-05-19 14:33:40.084631-06	2015-05-19 14:33:40.084695-06	<p>,kjnblkjhio uhoiuh</p>\n	f	0	2015-05-19 14:32:00-06	2015-05-19 14:33:00-06	3	10
21	t	2015-05-19 14:34:00.229549-06	2015-05-19 14:34:00.229647-06	<p>mjhgfj yfjyfkufghjh</p>\n	f	0	2015-05-19 14:33:00-06	2015-05-19 14:34:00-06	3	10
22	t	2015-05-19 14:35:16.569917-06	2015-05-19 14:35:16.569973-06	<p>jkgfihg fyfguygfkuhgkugyk</p>\n	f	0	2015-05-19 14:34:00-06	2015-05-19 14:35:00-06	3	10
23	t	2015-05-19 14:35:34.263853-06	2015-05-19 14:35:34.263909-06	<p>,j fkhgfhjfjhfjhfhfdhgf</p>\n	f	0	2015-05-19 14:35:00-06	2015-05-19 14:36:00-06	3	10
24	t	2015-05-19 14:36:54.634496-06	2015-05-19 14:36:54.634556-06	<p>jyd hfdhjhfdjhtdjhc dg</p>\n	f	0	2015-05-18 14:36:00-06	2015-05-18 14:37:00-06	3	9
25	t	2015-05-19 14:37:14.876533-06	2015-05-19 14:37:14.876607-06	<p>j fkhgfjhfhjfjhfgjgdgjhgf jh</p>\n	f	0	2015-05-18 14:37:00-06	2015-05-18 14:38:00-06	3	9
26	t	2015-05-21 18:32:48.412597-06	2015-05-21 18:32:48.412659-06	<p>sffsfsdf sdfsd fsdfsd</p>\n	t	15	2015-05-20 18:32:00-06	2015-05-20 18:33:00-06	1	14
\.


--
-- Name: incidencias_actividadincidencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('incidencias_actividadincidencia_id_seq', 26, true);


--
-- Data for Name: incidencias_cambio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY incidencias_cambio (id, activo, creado, modificado, titulo, proposito, inicio_previsto, creador_id, estado_id, responsable_id, solicitante_id) FROM stdin;
1	t	2015-05-13 14:41:00.292866-06	2015-05-13 14:41:00.292942-06	Base de datos	hghfghfdhfdgh 	2015-05-13	1	1	1	1
2	f	2015-05-13 16:16:18.635002-06	2015-05-13 16:16:18.690179-06	cambio BD	​gvear ard dgfg sdfg	2015-05-13	1	1	1	1
\.


--
-- Data for Name: incidencias_cambio_dispositivos; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY incidencias_cambio_dispositivos (id, cambio_id, dispositivo_id) FROM stdin;
1	2	1
\.


--
-- Name: incidencias_cambio_dispositivos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('incidencias_cambio_dispositivos_id_seq', 1, true);


--
-- Name: incidencias_cambio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('incidencias_cambio_id_seq', 2, true);


--
-- Data for Name: incidencias_cambio_servicios; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY incidencias_cambio_servicios (id, cambio_id, servicio_id) FROM stdin;
1	2	1
\.


--
-- Name: incidencias_cambio_servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('incidencias_cambio_servicios_id_seq', 1, true);


--
-- Data for Name: incidencias_incidencia; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY incidencias_incidencia (id, activo, creado, modificado, problema, causa, solucion, paro_equipo, duracion_paro, creador_id, dispositivo_id, estado_id, medio_notificacion_id, relacion_id, reporta_id, severidad_id, tipo_id, urgencia_id) FROM stdin;
2	t	2015-05-13 16:18:05.285486-06	2015-05-19 11:58:53.596066-06	<p>dfg d</p>\r\n	<p>&nbsp;dfsgdsf gdf</p>\r\n	<p>dfs gdsf gd</p>\r\n	f	0	1	1	1	1	\N	1	1	1	1
3	t	2015-05-14 16:18:24.255021-06	2015-05-19 11:59:01.088104-06	<p>Setting your brand colors to primary and secondary color variables in&nbsp;<code>site.variables</code>, will allow you to use consistent color theming for UI elements</p>\r\n	<p>FGHFHFSetting your brand colors to primary and secondary color variables in&nbsp;<code>site.variables</code>, will allow you to use consistent color theming for UI elements</p>\r\n	<p>Setting your brand colors to primary and secondary color variables in&nbsp;<code>site.variables</code>, will allow you to use consistent color theming for UI elements</p>\r\n	f	0	1	1	1	1	\N	1	2	1	2
5	t	2015-05-14 16:27:47.798988-06	2015-05-19 11:59:09.792169-06	<p>A button will only be keyboard focusable if you set the property&nbsp;<code>tabindex=&quot;0&quot;</code>, or if you use a&nbsp;<code>&lt;button&gt;</code>. You can read more about keyboard focus standards at&nbsp;<a href="http://webaim.org/techniques/keyboard/tabindex">webAIM</a>.</p>\r\n	<p>A button will only be keyboard focusable if you set the property&nbsp;<code>tabindex=&quot;0&quot;</code>, or if you use a&nbsp;<code>&lt;button&gt;</code>. You can read more about keyboard focus standards at&nbsp;<a href="http://webaim.org/techniques/keyboard/tabindex">webAIM</a>.</p>\r\n	<p>A button will only be keyboard focusable if you set the property&nbsp;<code>tabindex=&quot;0&quot;</code>, or if you use a&nbsp;<code>&lt;button&gt;</code>. You can read more about keyboard focus standards at&nbsp;<a href="http://webaim.org/techniques/keyboard/tabindex">webAIM</a>.</p>\r\n <br> Hoooooooooooooooooooooooolaaa Por: edx	f	0	1	2	1	1	3	3	2	1	2
1	t	2015-05-13 14:38:58.58873-06	2015-05-19 14:12:39.137201-06	SDFF DSGSDFG	DFSGDFSGDFSG	DFSGDSFG<p>Agrega un breve descripcion de la solucion empleada para dar por cerrado el incidente Por: [<i>edx<i>]-16/05/2015</p><p>You can use date.strftime(format) to get a string representing the date, controlled by an explicit format string (see above table): [<i>edx-16/05/2015<i>]</p><p>f dgdfgdsfgdsfg sdfg dfg dsfg <br>[<i>edx-16/05/2015<i>]</p><p>e w f asdfsadf sadfsadf sadsdf sdaf <br>[<i>eder-16/05/2015<i>]</p>	f	0	1	1	1	1	\N	1	2	1	2
7	f	2015-05-19 13:16:25.912329-06	2015-05-19 13:16:25.912416-06	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\n\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\n	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\n\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\n	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\n\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\n	f	0	3	1	1	1	\N	1	2	2	2
8	t	2015-05-19 13:18:34.61992-06	2015-05-19 13:21:25.5928-06	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\r\n\r\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\r\n	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\r\n\r\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\r\n	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\r\n\r\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\r\n	f	0	3	3	1	1	\N	2	2	2	2
4	t	2015-05-14 16:24:26.455028-06	2015-05-19 14:47:44.540989-06	<p>En este curso b&aacute;sico gratuito nos introduciremos a la librer&iacute;a de&nbsp;<a href="https://plus.google.com/s/%23Backbonejs">#Backbonejs</a>&nbsp;&nbsp;creando nuestra primera aplicaci&oacute;n. Ingresa a&nbsp;<a href="https://devcode.la/cursos/curso-basico-de-backbonejs/" target="_blank">https://devcode.la/cursos/curso-basico-de-backbonejs/</a>﻿</p>\r\n	<p>En este curso b&aacute;sico gratuito nos introduciremos a la librer&iacute;a de&nbsp;<a href="https://plus.google.com/s/%23Backbonejs">#Backbonejs</a>&nbsp;&nbsp;creando nuestra primera aplicaci&oacute;n. Ingresa a&nbsp;<a href="https://devcode.la/cursos/curso-basico-de-backbonejs/" target="_blank">https://devcode.la/cursos/curso-basico-de-backbonejs/</a>﻿</p>\r\n	<p>En este curso b&aacute;sico gratuito nos introduciremos a la librer&iacute;a de&nbsp;<a href="https://plus.google.com/s/%23Backbonejs">#Backbonejs</a>&nbsp;&nbsp;creando nuestra primera aplicaci&oacute;n. Ingresa a&nbsp;<a href="https://devcode.la/cursos/curso-basico-de-backbonejs/" target="_blank">https://devcode.la/cursos/curso-basico-de-backbonejs/</a>﻿</p>\r\n <br> Se limpioo y reinicio el qeuipo Por: <<edx>> <br> Se limpioo y reinicio el qeuipo Por: [edx] <br> Icons can be used to represent common ways to interact with audio Por: [<i>edx</i>]	f	0	1	1	1	1	\N	2	1	1	1
10	t	2015-05-19 13:22:30.884531-06	2015-05-19 14:48:19.700525-06	<pre>\r\nIcons can be used to represent common ways to interact with audio</pre>\r\n	<p>Icons can be used to represent common ways to interact with audio</p>\r\n	<p>Icons can be used to represent common ways to interact with audio</p>\r\n<p>Icons can be used to represent common ways to interact with audio<br>[<i>bjarquin-19/05/2015</i>]</p><p>gerr yrty tru urtu tr  r<br>[<i>bjarquin-19/05/2015</i>]</p>	f	0	3	3	1	2	\N	1	1	1	2
9	t	2015-05-19 13:19:38.795606-06	2015-05-19 14:37:14.90066-06	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\r\n\r\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\r\n	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\r\n\r\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\r\n	<p>This color palette comprises primary and accent colors that can be used for illustration or to develop your brand colors. They&rsquo;ve been designed to work harmoniously with each other.</p>\r\n\r\n<p>The color palette starts with primary colors and fills in the spectrum to create a complete and usable palette for Android, Web, and iOS. Google suggests using the 500 colors as the primary colors in your app and the other colors as accents colors.</p>\r\n	f	0	3	2	1	3	\N	3	2	1	2
11	t	2015-05-20 17:39:43.0107-06	2015-05-20 17:39:43.010776-06	<p><strong>Dark text on light backgrounds</strong></p>\n\n<p>For dark text on a light background, the most important text has an opacity of 87%. Secondary text, which is lower in the visual hierarchy, has an opacity of 54%. Text hints, like those in text fields and labels, have even lower visual prominence and an opacity of 26%.</p>\n	<p><strong>Dark text on light backgrounds</strong></p>\n\n<p>For dark text on a light background, the most important text has an opacity of 87%. Secondary text, which is lower in the visual hierarchy, has an opacity of 54%. Text hints, like those in text fields and labels, have even lower visual prominence and an opacity of 26%.</p>\n	<p><strong>Dark text on light backgrounds</strong></p>\n\n<p>For dark text on a light background, the most important text has an opacity of 87%. Secondary text, which is lower in the visual hierarchy, has an opacity of 54%. Text hints, like those in text fields and labels, have even lower visual prominence and an opacity of 26%.</p>\n	t	10	3	4	1	1	\N	1	2	1	2
12	t	2015-05-20 18:43:09.868284-06	2015-05-20 18:43:09.868403-06	<p>Confiabilidad<a href="http://stackoverflow.com/questions/8616343/django-calculate-the-sum-of-the-column-values-through-query">Django: Calculate the Sum of the column values through query</a></p>\n	<h1><a href="http://stackoverflow.com/questions/8616343/django-calculate-the-sum-of-the-column-values-through-query">Django: Calculate the Sum of the column values through query</a></h1>\n	<h1><a href="http://stackoverflow.com/questions/8616343/django-calculate-the-sum-of-the-column-values-through-query">Django: Calculate the Sum of the column values through query</a></h1>\n	t	15	3	4	1	1	\N	2	2	2	2
13	t	2015-05-20 20:37:04.84408-06	2015-05-20 20:37:04.844159-06	<p>sdd fgdgdsf</p>\n	<p>dfsgdsgdsgsd</p>\n	<p>dsfgdfsgsdgsdg</p>\n	t	21	3	4	1	1	\N	1	2	1	2
14	t	2015-05-20 21:00:54.127175-06	2015-05-21 18:32:48.434075-06	<p>Disponibilidad</p>\r\n	<p>Disponibilidad</p>\r\n	<p>Disponibilidad</p>\r\n	t	30	3	3	1	2	\N	1	1	2	2
\.


--
-- Name: incidencias_incidencia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('incidencias_incidencia_id_seq', 14, true);


--
-- Data for Name: incidencias_incidencia_servicios; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY incidencias_incidencia_servicios (id, incidencia_id, servicio_id) FROM stdin;
7	5	1
8	4	1
10	14	2
\.


--
-- Name: incidencias_incidencia_servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('incidencias_incidencia_servicios_id_seq', 10, true);


--
-- Data for Name: inventario_componente; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY inventario_componente (id, activo, creado, modificado, marca, modelo, serie, inventario, creador_id, estado_id, instalado_en_id, tipo_id) FROM stdin;
\.


--
-- Name: inventario_componente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('inventario_componente_id_seq', 1, false);


--
-- Data for Name: inventario_dispositivo; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY inventario_dispositivo (id, activo, creado, modificado, marca, modelo, serie, inventario, posicion_logica, instalacion, creador_id, edificio_id, estado_id, oficina_id, sistema_id, tipo_id) FROM stdin;
1	t	2015-05-13 14:38:16.752968-06	2015-05-19 12:09:10.728305-06	DSF	SDFSD	sdfSDF		SDD1	2015-05-13	1	1	1	1	1	1
3	t	2015-05-19 12:19:58.420122-06	2015-05-19 15:02:13.667951-06	hp	z420	324234234		CMD1	2015-05-19	3	1	1	1	1	1
4	t	2015-05-19 12:21:36.037531-06	2015-05-19 15:18:06.335281-06	hp	z420	3q2ewq2342	\N	DBM	2015-05-19	3	1	1	1	1	1
2	t	2015-05-13 14:43:06.53681-06	2015-05-20 21:05:16.434337-06	hewlet Packar	SDFSD	sdfS	fsdfsS	SDD2	2015-05-13	1	1	1	1	1	1
5	t	2015-05-20 21:40:18.154972-06	2015-05-21 19:11:17.645119-06	hewlet Packar	z420	3213486sdf	sdfsdfsd	RDCU1	2015-05-20	3	1	1	1	1	2
\.


--
-- Name: inventario_dispositivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('inventario_dispositivo_id_seq', 5, true);


--
-- Data for Name: inventario_servicio; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY inventario_servicio (id, activo, creado, modificado, nombre, descripcion, creador_id, tipo_id) FROM stdin;
1	t	2015-05-13 14:42:27.099651-06	2015-05-13 14:42:27.099738-06	118.1	SDFSDFSDF	1	1
2	t	2015-05-19 12:23:42.52105-06	2015-05-19 12:24:01.227994-06	121.5	cx	3	1
3	t	2015-05-19 12:24:44.043338-06	2015-05-19 12:24:54.532121-06	VSAT	sdfdsf	3	2
\.


--
-- Name: inventario_servicio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('inventario_servicio_id_seq', 3, true);


--
-- Data for Name: inventario_subsistema; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY inventario_subsistema (id, activo, creado, modificado, nombre, descripcion, creador_id, sistema_id) FROM stdin;
\.


--
-- Name: inventario_subsistema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('inventario_subsistema_id_seq', 1, false);


--
-- Data for Name: mantenimiento_boletatrabajo; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY mantenimiento_boletatrabajo (id, activo, creado, modificado, tipo, descripcion, paro_operacion, tiempo_paro, creador_id, dispositivo_id, estado_final_id, orden_id) FROM stdin;
1	t	2015-05-14 16:04:13.334737-06	2015-05-19 12:02:18.971702-06	1	​F DFGDFG DFGFDGFDGDF	f	0	1	1	1	1
2	t	2015-05-19 14:53:10.25492-06	2015-05-19 14:53:10.254989-06	2	​df gdfsg dsf gdf gdfsg dsfgdg dsfg	t	10	3	4	1	\N
3	t	2015-05-19 14:58:03.424205-06	2015-05-19 14:58:03.42432-06	1	​df gdsf gsdfg sdfg sdfg&nbsp;	f	0	3	4	1	\N
4	t	2015-05-19 15:01:11.872398-06	2015-05-19 15:01:11.872456-06	1	​ f fghg fghfghfgh fhfgh&nbsp;	f	0	3	3	2	\N
5	t	2015-05-19 15:02:13.687607-06	2015-05-19 15:02:13.687694-06	1	​ sdf asdfsad fsdaf&nbsp;	f	0	3	3	1	\N
6	t	2015-05-19 15:18:06.372782-06	2015-05-19 15:18:06.372871-06	1	​dsfgdsfg dsfg dsfg	f	0	3	4	1	3
7	t	2015-05-20 21:05:16.453155-06	2015-05-20 21:05:16.453221-06	1	​sdfsfsfsdfsdf afas fsadf&nbsp;	t	40	3	2	1	\N
8	t	2015-05-21 19:11:17.657134-06	2015-05-21 19:11:17.657218-06	1	​sdfsf sdfsd	f	0	1	5	1	10
\.


--
-- Name: mantenimiento_boletatrabajo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('mantenimiento_boletatrabajo_id_seq', 8, true);


--
-- Data for Name: mantenimiento_programacion; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY mantenimiento_programacion (id, activo, creado, modificado, fecha_inicio_prevista, fecha_fin_prevista, inicio, fin, creador_id, estado_id, responsable_id, rutina_id) FROM stdin;
9	t	2015-05-19 11:53:26.945038-06	2015-05-19 12:27:23.4293-06	2015-05-19 12:00:00-06	2015-05-19 12:00:00-06	\N	\N	3	1	4	1
8	t	2015-05-19 11:47:46.57965-06	2015-05-19 12:27:32.49554-06	2015-05-19 11:46:00-06	2015-05-19 14:46:00-06	\N	\N	3	1	4	3
7	t	2015-05-19 11:46:43.242076-06	2015-05-19 12:27:45.266013-06	2015-05-19 12:00:00-06	2015-05-19 15:00:00-06	\N	\N	3	1	4	3
6	t	2015-05-19 11:35:28.248883-06	2015-05-19 12:27:50.310334-06	2015-06-03 12:00:00-06	2015-06-03 12:00:00-06	\N	\N	3	1	4	5
5	t	2015-05-19 11:19:57.778527-06	2015-05-19 12:27:56.108588-06	2015-05-19 12:00:00-06	2015-05-19 12:00:00-06	\N	\N	3	1	2	4
2	t	2015-05-14 16:03:50.025896-06	2015-05-19 12:28:15.163472-06	2015-05-14 12:00:00-06	2015-05-14 15:00:00-06	2015-05-18 14:21:00-06	\N	1	2	1	3
1	t	2015-05-14 16:02:29.195103-06	2015-05-19 12:28:18.743659-06	2015-06-01 12:00:00-06	2015-06-01 12:00:00-06	2015-05-14 16:03:00-06	2015-05-14 16:04:00-06	1	4	1	1
3	t	2015-05-18 21:45:25.65433-06	2015-05-19 15:32:55.016149-06	2015-05-21 12:00:00-06	2015-05-21 12:00:00-06	2015-05-19 15:17:00-06	2015-05-19 15:32:00-06	3	4	1	1
4	t	2015-05-18 21:49:06.065542-06	2015-05-20 17:10:58.613043-06	2015-05-18 09:45:00-06	2015-05-18 09:45:00-06	2015-05-20 17:10:00-06	\N	3	2	3	6
10	t	2015-05-21 19:08:46.3871-06	2015-05-21 19:11:26.648658-06	2015-05-21 12:00:00-06	2015-05-21 12:00:00-06	2015-05-21 19:10:00-06	2015-05-21 19:11:00-06	1	4	4	1
\.


--
-- Name: mantenimiento_programacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('mantenimiento_programacion_id_seq', 10, true);


--
-- Data for Name: mantenimiento_programacion_personal; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY mantenimiento_programacion_personal (id, programacion_id, personal_id) FROM stdin;
11	9	4
12	8	4
15	7	4
16	6	4
17	5	2
18	4	1
21	2	1
22	1	1
29	3	1
30	3	2
31	10	4
\.


--
-- Name: mantenimiento_programacion_personal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('mantenimiento_programacion_personal_id_seq', 31, true);


--
-- Data for Name: mantenimiento_rutina; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY mantenimiento_rutina (id, activo, creado, modificado, titulo, recomendacion, duracion_estimada, creador_id, frecuencia_id, sistema_id) FROM stdin;
1	t	2015-05-13 14:48:44.902871-06	2015-05-13 14:48:44.914194-06	MANTTO MENSUAL AIRCON	Ninguna	0	1	1	1
3	t	2015-05-13 14:56:13.625072-06	2015-05-13 14:56:13.625137-06	Mantto Mensual SDC	Ninguna	3	1	2	2
4	f	2015-05-13 16:33:29.667658-06	2015-05-13 16:33:29.667731-06	MANTTO SEMESTRAL RADAR	DFGDF	0	1	1	2
5	f	2015-05-13 17:04:37.046807-06	2015-05-13 17:04:37.081611-06	Mantto Anual Radar	sdfsdfsdf	0	1	1	2
6	f	2015-05-13 17:12:37.554903-06	2015-05-13 17:12:37.627207-06	Mantto Anual Radar	Ninguna	0	1	1	2
\.


--
-- Name: mantenimiento_rutina_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('mantenimiento_rutina_id_seq', 6, true);


--
-- Data for Name: mantenimiento_tarea; Type: TABLE DATA; Schema: public; Owner: sgimuser
--

COPY mantenimiento_tarea (id, activo, creado, modificado, nombre, valor_ref, creador_id, rutina_id) FROM stdin;
1	t	2015-05-13 14:58:13.218763-06	2015-05-13 14:58:13.218838-06	MEMORIA RAM	n/a	1	1
3	t	2015-05-14 10:41:36.176375-06	2015-05-14 10:41:36.214009-06	dfggggg	gggggg	1	3
4	t	2015-05-14 10:43:56.50832-06	2015-05-14 10:43:56.508376-06	dfggggg	gggggg	1	3
5	t	2015-05-14 10:49:34.138799-06	2015-05-14 10:49:34.13888-06	Prueba 1	N/A	1	4
6	t	2015-05-14 10:49:50.137595-06	2015-05-14 10:49:50.137675-06	sdf	sdfsdf	1	4
7	t	2015-05-14 10:50:14.386879-06	2015-05-14 10:50:14.38693-06	fffff	fff	1	6
8	t	2015-05-14 10:50:34.827104-06	2015-05-14 10:50:34.827156-06	fffff	fff	1	6
9	t	2015-05-14 10:51:56.924665-06	2015-05-14 10:51:56.924726-06	Procesos CPU	200 +/- 50	1	1
10	t	2015-05-14 10:53:18.835461-06	2015-05-14 10:53:18.83553-06	FECHA	SINC	1	1
11	t	2015-05-14 10:54:30.291331-06	2015-05-14 10:54:30.291392-06	PING	OK 	1	1
12	t	2015-05-14 10:55:08.4371-06	2015-05-14 10:55:08.437166-06	sar	0.1 +- 5	1	1
13	t	2015-05-14 10:58:38.965064-06	2015-05-14 10:58:38.965118-06	Memoria SWAP	NA.	1	1
14	t	2015-05-14 10:59:28.968453-06	2015-05-14 10:59:28.968507-06	Uso de HD	 OK < 90%	1	1
15	t	2015-05-14 11:00:19.296203-06	2015-05-14 11:00:19.296292-06	UPTIME	OK < 65 dias	1	1
16	t	2015-05-14 15:53:44.419116-06	2015-05-14 15:53:44.41924-06	Prueba de algo	n/a	1	5
17	t	2015-05-14 15:59:08.900962-06	2015-05-14 15:59:08.901089-06	Prueba 2	OK.	1	5
18	t	2015-05-17 06:19:08.698584-06	2015-05-17 06:19:08.698639-06	prueba2	n/a	3	4
\.


--
-- Name: mantenimiento_tarea_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sgimuser
--

SELECT pg_catalog.setval('mantenimiento_tarea_id_seq', 18, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


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
-- Name: cuentas_usuario_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY cuentas_usuario_groups
    ADD CONSTRAINT cuentas_usuario_groups_pkey PRIMARY KEY (id);


--
-- Name: cuentas_usuario_groups_usuario_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY cuentas_usuario_groups
    ADD CONSTRAINT cuentas_usuario_groups_usuario_id_group_id_key UNIQUE (usuario_id, group_id);


--
-- Name: cuentas_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY cuentas_usuario
    ADD CONSTRAINT cuentas_usuario_pkey PRIMARY KEY (id);


--
-- Name: cuentas_usuario_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY cuentas_usuario_user_permissions
    ADD CONSTRAINT cuentas_usuario_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: cuentas_usuario_user_permissions_usuario_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY cuentas_usuario_user_permissions
    ADD CONSTRAINT cuentas_usuario_user_permissions_usuario_id_permission_id_key UNIQUE (usuario_id, permission_id);


--
-- Name: cuentas_usuario_username_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY cuentas_usuario
    ADD CONSTRAINT cuentas_usuario_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


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
-- Name: gestion_red_interfaceevent_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY gestion_red_interfaceevent
    ADD CONSTRAINT gestion_red_interfaceevent_pkey PRIMARY KEY (id);


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
-- Name: incidencias_actividadcambio_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_actividadcambio
    ADD CONSTRAINT incidencias_actividadcambio_pkey PRIMARY KEY (id);


--
-- Name: incidencias_actividadincidencia_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_actividadincidencia
    ADD CONSTRAINT incidencias_actividadincidencia_pkey PRIMARY KEY (id);


--
-- Name: incidencias_cambio_dispositivos_cambio_id_dispositivo_id_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_cambio_dispositivos
    ADD CONSTRAINT incidencias_cambio_dispositivos_cambio_id_dispositivo_id_key UNIQUE (cambio_id, dispositivo_id);


--
-- Name: incidencias_cambio_dispositivos_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_cambio_dispositivos
    ADD CONSTRAINT incidencias_cambio_dispositivos_pkey PRIMARY KEY (id);


--
-- Name: incidencias_cambio_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_cambio
    ADD CONSTRAINT incidencias_cambio_pkey PRIMARY KEY (id);


--
-- Name: incidencias_cambio_servicios_cambio_id_servicio_id_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_cambio_servicios
    ADD CONSTRAINT incidencias_cambio_servicios_cambio_id_servicio_id_key UNIQUE (cambio_id, servicio_id);


--
-- Name: incidencias_cambio_servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_cambio_servicios
    ADD CONSTRAINT incidencias_cambio_servicios_pkey PRIMARY KEY (id);


--
-- Name: incidencias_incidencia_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT incidencias_incidencia_pkey PRIMARY KEY (id);


--
-- Name: incidencias_incidencia_servicios_incidencia_id_servicio_id_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_incidencia_servicios
    ADD CONSTRAINT incidencias_incidencia_servicios_incidencia_id_servicio_id_key UNIQUE (incidencia_id, servicio_id);


--
-- Name: incidencias_incidencia_servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY incidencias_incidencia_servicios
    ADD CONSTRAINT incidencias_incidencia_servicios_pkey PRIMARY KEY (id);


--
-- Name: inventario_componente_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_componente
    ADD CONSTRAINT inventario_componente_pkey PRIMARY KEY (id);


--
-- Name: inventario_componente_serie_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_componente
    ADD CONSTRAINT inventario_componente_serie_key UNIQUE (serie);


--
-- Name: inventario_dispositivo_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inventario_dispositivo_pkey PRIMARY KEY (id);


--
-- Name: inventario_dispositivo_serie_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inventario_dispositivo_serie_key UNIQUE (serie);


--
-- Name: inventario_servicio_nombre_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_servicio
    ADD CONSTRAINT inventario_servicio_nombre_key UNIQUE (nombre);


--
-- Name: inventario_servicio_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_servicio
    ADD CONSTRAINT inventario_servicio_pkey PRIMARY KEY (id);


--
-- Name: inventario_subsistema_descripcion_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_subsistema
    ADD CONSTRAINT inventario_subsistema_descripcion_key UNIQUE (descripcion);


--
-- Name: inventario_subsistema_nombre_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_subsistema
    ADD CONSTRAINT inventario_subsistema_nombre_key UNIQUE (nombre);


--
-- Name: inventario_subsistema_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY inventario_subsistema
    ADD CONSTRAINT inventario_subsistema_pkey PRIMARY KEY (id);


--
-- Name: mantenimiento_boletatrabajo_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY mantenimiento_boletatrabajo
    ADD CONSTRAINT mantenimiento_boletatrabajo_pkey PRIMARY KEY (id);


--
-- Name: mantenimiento_programacion_pers_programacion_id_personal_id_key; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY mantenimiento_programacion_personal
    ADD CONSTRAINT mantenimiento_programacion_pers_programacion_id_personal_id_key UNIQUE (programacion_id, personal_id);


--
-- Name: mantenimiento_programacion_personal_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY mantenimiento_programacion_personal
    ADD CONSTRAINT mantenimiento_programacion_personal_pkey PRIMARY KEY (id);


--
-- Name: mantenimiento_programacion_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY mantenimiento_programacion
    ADD CONSTRAINT mantenimiento_programacion_pkey PRIMARY KEY (id);


--
-- Name: mantenimiento_rutina_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY mantenimiento_rutina
    ADD CONSTRAINT mantenimiento_rutina_pkey PRIMARY KEY (id);


--
-- Name: mantenimiento_tarea_pkey; Type: CONSTRAINT; Schema: public; Owner: sgimuser; Tablespace: 
--

ALTER TABLE ONLY mantenimiento_tarea
    ADD CONSTRAINT mantenimiento_tarea_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


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
-- Name: cuentas_usuario_groups_0e939a4f; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX cuentas_usuario_groups_0e939a4f ON cuentas_usuario_groups USING btree (group_id);


--
-- Name: cuentas_usuario_groups_abfe0f96; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX cuentas_usuario_groups_abfe0f96 ON cuentas_usuario_groups USING btree (usuario_id);


--
-- Name: cuentas_usuario_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX cuentas_usuario_user_permissions_8373b171 ON cuentas_usuario_user_permissions USING btree (permission_id);


--
-- Name: cuentas_usuario_user_permissions_abfe0f96; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX cuentas_usuario_user_permissions_abfe0f96 ON cuentas_usuario_user_permissions USING btree (usuario_id);


--
-- Name: cuentas_usuario_username_437ea6c39e326da6_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX cuentas_usuario_username_437ea6c39e326da6_like ON cuentas_usuario USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: gestion_red_bootevent_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_bootevent_8396f175 ON gestion_red_bootevent USING btree (host_id);


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
-- Name: gestion_red_interfaceevent_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_interfaceevent_8396f175 ON gestion_red_interfaceevent USING btree (host_id);


--
-- Name: gestion_red_loadavghistory_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_loadavghistory_8396f175 ON gestion_red_loadavghistory USING btree (host_id);


--
-- Name: gestion_red_memoryhistory_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_memoryhistory_8396f175 ON gestion_red_memoryhistory USING btree (host_id);


--
-- Name: gestion_red_process_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_process_8396f175 ON gestion_red_process USING btree (host_id);


--
-- Name: gestion_red_storage_8396f175; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX gestion_red_storage_8396f175 ON gestion_red_storage USING btree (host_id);


--
-- Name: incidencias_actividadcambio_9b610f75; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_actividadcambio_9b610f75 ON incidencias_actividadcambio USING btree (cambio_id);


--
-- Name: incidencias_actividadcambio_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_actividadcambio_f4a1f771 ON incidencias_actividadcambio USING btree (creador_id);


--
-- Name: incidencias_actividadincidencia_5da13093; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_actividadincidencia_5da13093 ON incidencias_actividadincidencia USING btree (incidencia_id);


--
-- Name: incidencias_actividadincidencia_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_actividadincidencia_f4a1f771 ON incidencias_actividadincidencia USING btree (creador_id);


--
-- Name: incidencias_cambio_1ba06e10; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_1ba06e10 ON incidencias_cambio USING btree (responsable_id);


--
-- Name: incidencias_cambio_2c189993; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_2c189993 ON incidencias_cambio USING btree (estado_id);


--
-- Name: incidencias_cambio_7e9f34ab; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_7e9f34ab ON incidencias_cambio USING btree (solicitante_id);


--
-- Name: incidencias_cambio_dispositivos_6b6050b7; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_dispositivos_6b6050b7 ON incidencias_cambio_dispositivos USING btree (dispositivo_id);


--
-- Name: incidencias_cambio_dispositivos_9b610f75; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_dispositivos_9b610f75 ON incidencias_cambio_dispositivos USING btree (cambio_id);


--
-- Name: incidencias_cambio_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_f4a1f771 ON incidencias_cambio USING btree (creador_id);


--
-- Name: incidencias_cambio_servicios_4bb699dc; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_servicios_4bb699dc ON incidencias_cambio_servicios USING btree (servicio_id);


--
-- Name: incidencias_cambio_servicios_9b610f75; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_cambio_servicios_9b610f75 ON incidencias_cambio_servicios USING btree (cambio_id);


--
-- Name: incidencias_incidencia_13e87e2d; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_13e87e2d ON incidencias_incidencia USING btree (medio_notificacion_id);


--
-- Name: incidencias_incidencia_1ec89e09; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_1ec89e09 ON incidencias_incidencia USING btree (reporta_id);


--
-- Name: incidencias_incidencia_2c189993; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_2c189993 ON incidencias_incidencia USING btree (estado_id);


--
-- Name: incidencias_incidencia_4b9bef48; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_4b9bef48 ON incidencias_incidencia USING btree (severidad_id);


--
-- Name: incidencias_incidencia_4c879c8b; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_4c879c8b ON incidencias_incidencia USING btree (urgencia_id);


--
-- Name: incidencias_incidencia_6b6050b7; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_6b6050b7 ON incidencias_incidencia USING btree (dispositivo_id);


--
-- Name: incidencias_incidencia_d3c0c18a; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_d3c0c18a ON incidencias_incidencia USING btree (tipo_id);


--
-- Name: incidencias_incidencia_d3d77f93; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_d3d77f93 ON incidencias_incidencia USING btree (relacion_id);


--
-- Name: incidencias_incidencia_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_f4a1f771 ON incidencias_incidencia USING btree (creador_id);


--
-- Name: incidencias_incidencia_servicios_4bb699dc; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_servicios_4bb699dc ON incidencias_incidencia_servicios USING btree (servicio_id);


--
-- Name: incidencias_incidencia_servicios_5da13093; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX incidencias_incidencia_servicios_5da13093 ON incidencias_incidencia_servicios USING btree (incidencia_id);


--
-- Name: inventario_componente_2c189993; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_componente_2c189993 ON inventario_componente USING btree (estado_id);


--
-- Name: inventario_componente_a7fdc209; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_componente_a7fdc209 ON inventario_componente USING btree (instalado_en_id);


--
-- Name: inventario_componente_d3c0c18a; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_componente_d3c0c18a ON inventario_componente USING btree (tipo_id);


--
-- Name: inventario_componente_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_componente_f4a1f771 ON inventario_componente USING btree (creador_id);


--
-- Name: inventario_componente_inventario_77599480c14d25dd_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_componente_inventario_77599480c14d25dd_like ON inventario_componente USING btree (inventario varchar_pattern_ops);


--
-- Name: inventario_componente_serie_756021ecac65accd_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_componente_serie_756021ecac65accd_like ON inventario_componente USING btree (serie varchar_pattern_ops);


--
-- Name: inventario_dispositivo_2c189993; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_2c189993 ON inventario_dispositivo USING btree (estado_id);


--
-- Name: inventario_dispositivo_8a1efaf1; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_8a1efaf1 ON inventario_dispositivo USING btree (edificio_id);


--
-- Name: inventario_dispositivo_c4af0210; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_c4af0210 ON inventario_dispositivo USING btree (oficina_id);


--
-- Name: inventario_dispositivo_d3c0c18a; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_d3c0c18a ON inventario_dispositivo USING btree (tipo_id);


--
-- Name: inventario_dispositivo_dae62520; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_dae62520 ON inventario_dispositivo USING btree (sistema_id);


--
-- Name: inventario_dispositivo_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_f4a1f771 ON inventario_dispositivo USING btree (creador_id);


--
-- Name: inventario_dispositivo_inventario_4972e705f56f1c69_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_inventario_4972e705f56f1c69_like ON inventario_dispositivo USING btree (inventario varchar_pattern_ops);


--
-- Name: inventario_dispositivo_serie_776b1e302acce361_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_dispositivo_serie_776b1e302acce361_like ON inventario_dispositivo USING btree (serie varchar_pattern_ops);


--
-- Name: inventario_servicio_d3c0c18a; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_servicio_d3c0c18a ON inventario_servicio USING btree (tipo_id);


--
-- Name: inventario_servicio_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_servicio_f4a1f771 ON inventario_servicio USING btree (creador_id);


--
-- Name: inventario_servicio_nombre_2f9a0822a607b7d1_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_servicio_nombre_2f9a0822a607b7d1_like ON inventario_servicio USING btree (nombre varchar_pattern_ops);


--
-- Name: inventario_subsistema_dae62520; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_subsistema_dae62520 ON inventario_subsistema USING btree (sistema_id);


--
-- Name: inventario_subsistema_descripcion_30b1cdfb1b147828_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_subsistema_descripcion_30b1cdfb1b147828_like ON inventario_subsistema USING btree (descripcion varchar_pattern_ops);


--
-- Name: inventario_subsistema_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_subsistema_f4a1f771 ON inventario_subsistema USING btree (creador_id);


--
-- Name: inventario_subsistema_nombre_5c093ccb95d04b25_like; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX inventario_subsistema_nombre_5c093ccb95d04b25_like ON inventario_subsistema USING btree (nombre varchar_pattern_ops);


--
-- Name: mantenimiento_boletatrabajo_210aa360; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_boletatrabajo_210aa360 ON mantenimiento_boletatrabajo USING btree (estado_final_id);


--
-- Name: mantenimiento_boletatrabajo_6b6050b7; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_boletatrabajo_6b6050b7 ON mantenimiento_boletatrabajo USING btree (dispositivo_id);


--
-- Name: mantenimiento_boletatrabajo_c33caba2; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_boletatrabajo_c33caba2 ON mantenimiento_boletatrabajo USING btree (orden_id);


--
-- Name: mantenimiento_boletatrabajo_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_boletatrabajo_f4a1f771 ON mantenimiento_boletatrabajo USING btree (creador_id);


--
-- Name: mantenimiento_programacion_1ba06e10; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_programacion_1ba06e10 ON mantenimiento_programacion USING btree (responsable_id);


--
-- Name: mantenimiento_programacion_2c189993; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_programacion_2c189993 ON mantenimiento_programacion USING btree (estado_id);


--
-- Name: mantenimiento_programacion_d1bb122a; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_programacion_d1bb122a ON mantenimiento_programacion USING btree (rutina_id);


--
-- Name: mantenimiento_programacion_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_programacion_f4a1f771 ON mantenimiento_programacion USING btree (creador_id);


--
-- Name: mantenimiento_programacion_personal_4df638e8; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_programacion_personal_4df638e8 ON mantenimiento_programacion_personal USING btree (personal_id);


--
-- Name: mantenimiento_programacion_personal_58aacf56; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_programacion_personal_58aacf56 ON mantenimiento_programacion_personal USING btree (programacion_id);


--
-- Name: mantenimiento_rutina_6a9fece5; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_rutina_6a9fece5 ON mantenimiento_rutina USING btree (frecuencia_id);


--
-- Name: mantenimiento_rutina_dae62520; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_rutina_dae62520 ON mantenimiento_rutina USING btree (sistema_id);


--
-- Name: mantenimiento_rutina_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_rutina_f4a1f771 ON mantenimiento_rutina USING btree (creador_id);


--
-- Name: mantenimiento_tarea_d1bb122a; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_tarea_d1bb122a ON mantenimiento_tarea USING btree (rutina_id);


--
-- Name: mantenimiento_tarea_f4a1f771; Type: INDEX; Schema: public; Owner: sgimuser; Tablespace: 
--

CREATE INDEX mantenimiento_tarea_f4a1f771 ON mantenimiento_tarea USING btree (creador_id);


--
-- Name: D7491386c348bc8e430e418286339622; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion_personal
    ADD CONSTRAINT "D7491386c348bc8e430e418286339622" FOREIGN KEY (programacion_id) REFERENCES mantenimiento_programacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: D8e898bae1772798048f6476b954908a; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_boletatrabajo
    ADD CONSTRAINT "D8e898bae1772798048f6476b954908a" FOREIGN KEY (estado_final_id) REFERENCES catalogo_estadooperacional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: c936ea1dc8dcd77e7f75c22fb064ad61; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT c936ea1dc8dcd77e7f75c22fb064ad61 FOREIGN KEY (medio_notificacion_id) REFERENCES catalogo_medionotificaion(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: cuentas_us_permission_id_684f9321742361d4_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY cuentas_usuario_user_permissions
    ADD CONSTRAINT cuentas_us_permission_id_684f9321742361d4_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cuentas_usuar_usuario_id_45e799de2a3fee1c_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY cuentas_usuario_user_permissions
    ADD CONSTRAINT cuentas_usuar_usuario_id_45e799de2a3fee1c_fk_cuentas_usuario_id FOREIGN KEY (usuario_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cuentas_usuar_usuario_id_70f303fb42cd2282_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY cuentas_usuario_groups
    ADD CONSTRAINT cuentas_usuar_usuario_id_70f303fb42cd2282_fk_cuentas_usuario_id FOREIGN KEY (usuario_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cuentas_usuario_grou_group_id_3cd94bdbd49773ed_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY cuentas_usuario_groups
    ADD CONSTRAINT cuentas_usuario_grou_group_id_3cd94bdbd49773ed_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_cuentas_usuario_id FOREIGN KEY (user_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: frecuencia_id_5f99db969a8a7445_fk_catalogo_frecuenciamantto_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_rutina
    ADD CONSTRAINT frecuencia_id_5f99db969a8a7445_fk_catalogo_frecuenciamantto_id FOREIGN KEY (frecuencia_id) REFERENCES catalogo_frecuenciamantto(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: gestion_red_int_host_id_16ed54f272730719_fk_gestion_red_host_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY gestion_red_interfaceevent
    ADD CONSTRAINT gestion_red_int_host_id_16ed54f272730719_fk_gestion_red_host_id FOREIGN KEY (host_id) REFERENCES gestion_red_host(id) DEFERRABLE INITIALLY DEFERRED;


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
-- Name: i_instalado_en_id_39e350b54652b246_fk_inventario_dispositivo_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_componente
    ADD CONSTRAINT i_instalado_en_id_39e350b54652b246_fk_inventario_dispositivo_id FOREIGN KEY (instalado_en_id) REFERENCES inventario_dispositivo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: i_urgencia_id_73a10a5fdb487cb8_fk_catalogo_severidadurgencia_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT i_urgencia_id_73a10a5fdb487cb8_fk_catalogo_severidadurgencia_id FOREIGN KEY (urgencia_id) REFERENCES catalogo_severidadurgencia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: in_dispositivo_id_3a4172fc77ec76fc_fk_inventario_dispositivo_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio_dispositivos
    ADD CONSTRAINT in_dispositivo_id_3a4172fc77ec76fc_fk_inventario_dispositivo_id FOREIGN KEY (dispositivo_id) REFERENCES inventario_dispositivo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: in_dispositivo_id_59dcb1792814c4ce_fk_inventario_dispositivo_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT in_dispositivo_id_59dcb1792814c4ce_fk_inventario_dispositivo_id FOREIGN KEY (dispositivo_id) REFERENCES inventario_dispositivo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inc_incidencia_id_19595084a4ffa773_fk_incidencias_incidencia_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia_servicios
    ADD CONSTRAINT inc_incidencia_id_19595084a4ffa773_fk_incidencias_incidencia_id FOREIGN KEY (incidencia_id) REFERENCES incidencias_incidencia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inc_incidencia_id_1d7fb65370b54015_fk_incidencias_incidencia_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_actividadincidencia
    ADD CONSTRAINT inc_incidencia_id_1d7fb65370b54015_fk_incidencias_incidencia_id FOREIGN KEY (incidencia_id) REFERENCES incidencias_incidencia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incid_estado_id_30404ebc2ae06842_fk_catalogo_estadoincidente_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT incid_estado_id_30404ebc2ae06842_fk_catalogo_estadoincidente_id FOREIGN KEY (estado_id) REFERENCES catalogo_estadoincidente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incid_relacion_id_5272639c439b7dd1_fk_incidencias_incidencia_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT incid_relacion_id_5272639c439b7dd1_fk_incidencias_incidencia_id FOREIGN KEY (relacion_id) REFERENCES incidencias_incidencia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inciden_responsable_id_66c759d58703747f_fk_catalogo_personal_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio
    ADD CONSTRAINT inciden_responsable_id_66c759d58703747f_fk_catalogo_personal_id FOREIGN KEY (responsable_id) REFERENCES catalogo_personal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inciden_solicitante_id_24ab37835c080bea_fk_catalogo_personal_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio
    ADD CONSTRAINT inciden_solicitante_id_24ab37835c080bea_fk_catalogo_personal_id FOREIGN KEY (solicitante_id) REFERENCES catalogo_personal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidenc_estado_id_30d87310f1007f90_fk_catalogo_estadocambio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio
    ADD CONSTRAINT incidenc_estado_id_30d87310f1007f90_fk_catalogo_estadocambio_id FOREIGN KEY (estado_id) REFERENCES catalogo_estadocambio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidenc_servicio_id_49917efbf1fa6708_fk_inventario_servicio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio_servicios
    ADD CONSTRAINT incidenc_servicio_id_49917efbf1fa6708_fk_inventario_servicio_id FOREIGN KEY (servicio_id) REFERENCES inventario_servicio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidenc_servicio_id_57a6442a66b729fe_fk_inventario_servicio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia_servicios
    ADD CONSTRAINT incidenc_servicio_id_57a6442a66b729fe_fk_inventario_servicio_id FOREIGN KEY (servicio_id) REFERENCES inventario_servicio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidenci_tipo_id_1b154904a1f21004_fk_catalogo_tipoincidente_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT incidenci_tipo_id_1b154904a1f21004_fk_catalogo_tipoincidente_id FOREIGN KEY (tipo_id) REFERENCES catalogo_tipoincidente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias__cambio_id_a87087724fd80d9_fk_incidencias_cambio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio_dispositivos
    ADD CONSTRAINT incidencias__cambio_id_a87087724fd80d9_fk_incidencias_cambio_id FOREIGN KEY (cambio_id) REFERENCES incidencias_cambio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias_a_creador_id_62ba1a09d3acc04b_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_actividadincidencia
    ADD CONSTRAINT incidencias_a_creador_id_62ba1a09d3acc04b_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias_ac_creador_id_17c753ebd7c3d8f_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_actividadcambio
    ADD CONSTRAINT incidencias_ac_creador_id_17c753ebd7c3d8f_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias_c_creador_id_2e99786cb44bb393_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio
    ADD CONSTRAINT incidencias_c_creador_id_2e99786cb44bb393_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias_cambio_id_2981c923f386c669_fk_incidencias_cambio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_cambio_servicios
    ADD CONSTRAINT incidencias_cambio_id_2981c923f386c669_fk_incidencias_cambio_id FOREIGN KEY (cambio_id) REFERENCES incidencias_cambio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias_cambio_id_6b8b4839d1751ced_fk_incidencias_cambio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_actividadcambio
    ADD CONSTRAINT incidencias_cambio_id_6b8b4839d1751ced_fk_incidencias_cambio_id FOREIGN KEY (cambio_id) REFERENCES incidencias_cambio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias_i_creador_id_5e82b342bb8b6b9b_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT incidencias_i_creador_id_5e82b342bb8b6b9b_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: incidencias_reporta_id_598e0ef0b4d6326a_fk_catalogo_personal_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT incidencias_reporta_id_598e0ef0b4d6326a_fk_catalogo_personal_id FOREIGN KEY (reporta_id) REFERENCES catalogo_personal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inv_estado_id_3980ede9ee8d9689_fk_catalogo_estadooperacional_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inv_estado_id_3980ede9ee8d9689_fk_catalogo_estadooperacional_id FOREIGN KEY (estado_id) REFERENCES catalogo_estadooperacional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inv_estado_id_582de2f97b332b43_fk_catalogo_estadooperacional_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_componente
    ADD CONSTRAINT inv_estado_id_582de2f97b332b43_fk_catalogo_estadooperacional_id FOREIGN KEY (estado_id) REFERENCES catalogo_estadooperacional(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventa_tipo_id_26fb65482fd701bd_fk_catalogo_tipodispositivo_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inventa_tipo_id_26fb65482fd701bd_fk_catalogo_tipodispositivo_id FOREIGN KEY (tipo_id) REFERENCES catalogo_tipodispositivo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventar_tipo_id_72127cd0a700a389_fk_catalogo_tipocomponente_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_componente
    ADD CONSTRAINT inventar_tipo_id_72127cd0a700a389_fk_catalogo_tipocomponente_id FOREIGN KEY (tipo_id) REFERENCES catalogo_tipocomponente(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_co_creador_id_169c1435553c51e6_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_componente
    ADD CONSTRAINT inventario_co_creador_id_169c1435553c51e6_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_d_oficina_id_1eba02815260c435_fk_catalogo_oficina_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inventario_d_oficina_id_1eba02815260c435_fk_catalogo_oficina_id FOREIGN KEY (oficina_id) REFERENCES catalogo_oficina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_d_sistema_id_632c5873417330cc_fk_catalogo_sistema_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inventario_d_sistema_id_632c5873417330cc_fk_catalogo_sistema_id FOREIGN KEY (sistema_id) REFERENCES catalogo_sistema(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_di_creador_id_51b4df204c3fd42c_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inventario_di_creador_id_51b4df204c3fd42c_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_edificio_id_7b641817e951d14f_fk_catalogo_edificio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_dispositivo
    ADD CONSTRAINT inventario_edificio_id_7b641817e951d14f_fk_catalogo_edificio_id FOREIGN KEY (edificio_id) REFERENCES catalogo_edificio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_s_sistema_id_60f182caed4acf4a_fk_catalogo_sistema_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_subsistema
    ADD CONSTRAINT inventario_s_sistema_id_60f182caed4acf4a_fk_catalogo_sistema_id FOREIGN KEY (sistema_id) REFERENCES catalogo_sistema(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_se_creador_id_2366dab790a763c2_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_servicio
    ADD CONSTRAINT inventario_se_creador_id_2366dab790a763c2_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_su_creador_id_68d2f19be2a02616_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_subsistema
    ADD CONSTRAINT inventario_su_creador_id_68d2f19be2a02616_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: inventario_tipo_id_7705d2c2f15b3db3_fk_catalogo_tiposervicio_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY inventario_servicio
    ADD CONSTRAINT inventario_tipo_id_7705d2c2f15b3db3_fk_catalogo_tiposervicio_id FOREIGN KEY (tipo_id) REFERENCES catalogo_tiposervicio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: m_estado_id_7185c40f9f473a19_fk_catalogo_estadomantenimiento_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion
    ADD CONSTRAINT m_estado_id_7185c40f9f473a19_fk_catalogo_estadomantenimiento_id FOREIGN KEY (estado_id) REFERENCES catalogo_estadomantenimiento(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: ma_dispositivo_id_4f55437f52be8cd0_fk_inventario_dispositivo_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_boletatrabajo
    ADD CONSTRAINT ma_dispositivo_id_4f55437f52be8cd0_fk_inventario_dispositivo_id FOREIGN KEY (dispositivo_id) REFERENCES inventario_dispositivo(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mante_orden_id_9851b5a39888373_fk_mantenimiento_programacion_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_boletatrabajo
    ADD CONSTRAINT mante_orden_id_9851b5a39888373_fk_mantenimiento_programacion_id FOREIGN KEY (orden_id) REFERENCES mantenimiento_programacion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: manteni_responsable_id_20cd1b8fa48788f8_fk_catalogo_personal_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion
    ADD CONSTRAINT manteni_responsable_id_20cd1b8fa48788f8_fk_catalogo_personal_id FOREIGN KEY (responsable_id) REFERENCES catalogo_personal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimi_rutina_id_732cbaf19027a218_fk_mantenimiento_rutina_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion
    ADD CONSTRAINT mantenimi_rutina_id_732cbaf19027a218_fk_mantenimiento_rutina_id FOREIGN KEY (rutina_id) REFERENCES mantenimiento_rutina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimie_personal_id_3bc21867fcc50e95_fk_catalogo_personal_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion_personal
    ADD CONSTRAINT mantenimie_personal_id_3bc21867fcc50e95_fk_catalogo_personal_id FOREIGN KEY (personal_id) REFERENCES catalogo_personal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimie_rutina_id_a4497d6a0dfdb66_fk_mantenimiento_rutina_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_tarea
    ADD CONSTRAINT mantenimie_rutina_id_a4497d6a0dfdb66_fk_mantenimiento_rutina_id FOREIGN KEY (rutina_id) REFERENCES mantenimiento_rutina(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimiento__creador_id_b77121743b2443c_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_programacion
    ADD CONSTRAINT mantenimiento__creador_id_b77121743b2443c_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimiento_creador_id_4ecf2585dc39f1eb_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_rutina
    ADD CONSTRAINT mantenimiento_creador_id_4ecf2585dc39f1eb_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimiento_creador_id_613f139340aa7176_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_tarea
    ADD CONSTRAINT mantenimiento_creador_id_613f139340aa7176_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimiento_creador_id_6f30ac84c932858f_fk_cuentas_usuario_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_boletatrabajo
    ADD CONSTRAINT mantenimiento_creador_id_6f30ac84c932858f_fk_cuentas_usuario_id FOREIGN KEY (creador_id) REFERENCES cuentas_usuario(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: mantenimiento_sistema_id_77cd655a1b2488b_fk_catalogo_sistema_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY mantenimiento_rutina
    ADD CONSTRAINT mantenimiento_sistema_id_77cd655a1b2488b_fk_catalogo_sistema_id FOREIGN KEY (sistema_id) REFERENCES catalogo_sistema(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: severidad_id_60a27cd066f14b48_fk_catalogo_severidadurgencia_id; Type: FK CONSTRAINT; Schema: public; Owner: sgimuser
--

ALTER TABLE ONLY incidencias_incidencia
    ADD CONSTRAINT severidad_id_60a27cd066f14b48_fk_catalogo_severidadurgencia_id FOREIGN KEY (severidad_id) REFERENCES catalogo_severidadurgencia(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

