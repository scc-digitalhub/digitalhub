CREATE DATABASE digitalhub;

\c digitalhub

CREATE SCHEMA IF NOT EXISTS test_scenario;

CREATE TABLE IF NOT EXISTS test_scenario.cities (
    id int NOT NULL,
    name varchar(100),
    country varchar(100),
    PRIMARY KEY (id)
);

CREATE ROLE test_scenario_user NOLOGIN;
GRANT USAGE ON SCHEMA test_scenario TO test_scenario_user;
GRANT ALL ON test_scenario.cities TO test_scenario_user;
