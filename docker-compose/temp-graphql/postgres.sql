-- Install extensions

CREATE SCHEMA IF NOT EXISTS extensions;
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS pg_graphql WITH SCHEMA extensions CASCADE;
CREATE EXTENSION IF NOT EXISTS timescaledb;

-- Setup role and permissions

CREATE ROLE test_scenario_user NOLOGIN;

GRANT USAGE ON SCHEMA graphql TO test_scenario_user;
GRANT SELECT ON graphql.field, graphql.type, graphql.enum_value TO test_scenario_user;
GRANT ALL ON FUNCTION graphql.resolve TO test_scenario_user;

ALTER DEFAULT PRIVILEGES IN SCHEMA graphql GRANT ALL ON tables TO test_scenario_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA graphql GRANT ALL ON functions TO test_scenario_user;
ALTER DEFAULT PRIVILEGES IN SCHEMA graphql GRANT ALL ON sequences TO test_scenario_user;

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

-- GraphQL Entrypoint
CREATE FUNCTION test_scenario.graphql(
    "operationName" text default null,
    query text default null,
    variables jsonb default null,
    extensions jsonb default null
)
    returns jsonb
    language sql
AS $$
    select graphql.resolve(
        query := query,
        variables := coalesce(variables, '{}'),
        "operationName" := "operationName",
        extensions := extensions
    );
$$;

COMMENT ON SCHEMA test_scenario IS '@graphql({"inflect_names": true})';

-- Sync the GraphQL schema
SELECT graphql.rebuild_schema();