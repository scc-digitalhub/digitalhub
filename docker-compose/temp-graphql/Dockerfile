FROM postgis/postgis:14-master as build

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
      build-essential \
      ca-certificates \
      cmake \
      git \
      postgresql-server-dev-14 \
      python2 \
      curl \
      libkrb5-dev \
    && rm -rf "/var/lib/apt/lists/*"

RUN export \
      VERSION="v0.7.0" \
      REPO_URL="https://github.com/graphql/libgraphqlparser" \
    && git clone -b "${VERSION}" --depth 1 "${REPO_URL}" \
    && cd libgraphqlparser \
    && cmake . \
    && make install

COPY . pg_graphql
WORKDIR /pg_graphql
RUN ./bin/pgc build
RUN make install

RUN export TS_VERSION="2.8.1" \
    && curl -SL https://codeload.github.com/timescale/timescaledb/tar.gz/refs/tags/${TS_VERSION} \
    | tar -zx \
    && cd timescaledb-${TS_VERSION} \
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