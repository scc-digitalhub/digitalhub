FROM postgis/postgis:14-master as build

ARG GRAPHQL_VERSION=0.4.1
ARG TIMESCALEDB_VERSION=2.8.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      build-essential \
      ca-certificates \
      cmake \
      git \
      curl \
      postgresql-server-dev-14 \
      python2 \
      libkrb5-dev \
    && rm -rf "/var/lib/apt/lists/*"
    
RUN export \
      VERSION="v0.7.0" \
      REPO_URL="https://github.com/graphql/libgraphqlparser" \
    && git clone -b "${VERSION}" --depth 1 "${REPO_URL}" \
    && cd libgraphqlparser \
    && cmake . \
    && make install

RUN curl -L https://codeload.github.com/supabase/pg_graphql/tar.gz/refs/tags/v${GRAPHQL_VERSION} \
    | tar -xz \
    && mv pg_graphql-${GRAPHQL_VERSION} pg_graphql \
    && cd pg_graphql \
    && ./bin/pgc build \
    && make install

RUN curl -L https://codeload.github.com/timescale/timescaledb/tar.gz/refs/tags/${TIMESCALEDB_VERSION} \
    | tar -xz \
    && cd timescaledb-${TIMESCALEDB_VERSION} \
    && ./bootstrap \
    && cd build && make \
    && make install

FROM postgis/postgis:14-master as main

# libgraphqlparser
ENV LD_LIBRARY_PATH="/usr/local/lib:${LD_LIBRARY_PATH}"
COPY --from=build ["/usr/local/lib/libgraphqlparser.so", "/usr/local/lib/libgraphqlparser.so"]

# pg_graphql
COPY --from=build ["/usr/lib/postgresql", "/usr/lib/postgresql"]
COPY --from=build ["/usr/share/postgresql", "/usr/share/postgresql"]