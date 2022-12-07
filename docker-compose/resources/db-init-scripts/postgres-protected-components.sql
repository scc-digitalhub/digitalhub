-- Create database

CREATE DATABASE digitalhub;

\c digitalhub

-- Install extensions

CREATE EXTENSION IF NOT EXISTS timescaledb;
CREATE EXTENSION IF NOT EXISTS postgis;

-- Setup role and permissions

CREATE ROLE test_scenario_user NOLOGIN;

CREATE SCHEMA IF NOT EXISTS test_scenario;

GRANT USAGE ON SCHEMA test_scenario TO test_scenario_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA test_scenario GRANT ALL ON tables TO test_scenario_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA test_scenario GRANT ALL ON functions TO test_scenario_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA test_scenario GRANT ALL ON sequences TO test_scenario_user;

-- Setup test table

CREATE TABLE IF NOT EXISTS test_scenario.cities (
    id int NOT NULL,
    name varchar(100),
    country varchar(100),
    location geometry(Point, 4326),
    PRIMARY KEY (id)
);

INSERT INTO test_scenario.cities (id, name, country, location) VALUES (1, 'London', 'United Kingdom', ST_SetSRID(ST_MakePoint(-0.1275, 51.5069), 4326));

INSERT INTO test_scenario.cities (id, name, country, location) VALUES (2, 'Paris', 'France', ST_SetSRID(ST_MakePoint(2.3473, 48.8540), 4326));

INSERT INTO test_scenario.cities (id, name, country, location) VALUES (3, 'Rome', 'Italy', ST_SetSRID(ST_MakePoint(12.4829, 41.8932), 4326));

INSERT INTO test_scenario.cities (id, name, country, location) VALUES (4, 'Cambridge', 'United Kingdom', ST_SetSRID(ST_MakePoint(0.1311, 52.1952), 4326));

CREATE OR REPLACE FUNCTION test_scenario.find_cities_in(area text) RETURNS setof test_scenario.cities AS $$
    SELECT id, name, country, ST_AsText(location)
    FROM test_scenario.cities
    WHERE ST_Contains(ST_GeomFromText('POLYGON((' || area || '))', 4326), location);
$$ LANGUAGE SQL;

-- Create Dagster storage DB

CREATE DATABASE dagster_storage;
