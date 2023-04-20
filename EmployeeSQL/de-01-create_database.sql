-- Database: ph_employee_db

-- DROP DATABASE IF EXISTS ph_employee_db;

CREATE DATABASE ph_employee_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE ph_employee_db
    IS 'Created for sotrage and analysis of Pewlett Hackard employee data from the 1980s and 1990s.';