#!/bin/bash
TOKEN=$(curl -s -X POST "http://${DREMIO_URL}:9047/apiv2/login" --header 'Content-Type: application/json' --data-raw "{\"userName\": \"${DREMIO_CODER_EMAIL}\",\"password\": \"${ADMIN_PASSWORD}\"}" | jq -r .token)

echo "add postgres"
curl -v -s -X POST "http://${DREMIO_URL}:9047/api/v3/catalog" \
--header "Authorization: _dremio${TOKEN}" \
--header 'Content-Type: application/json' \
--data-raw "{\"entityType\":\"source\",\"config\":{\"hostname\":\"$PSQL_HOSTNAME\",\"port\":\"5432\",\"databaseName\":\"$PSQL_DB_NAME\",\"username\":\"$PSQL_USERNAME\",\"password\":\"$PSQL_PASSWORD\",\"authenticationType\":\"MASTER\",\"fetchSize\":200,\"useSsl\":false,\"encryptionValidationMode\":\"CERTIFICATE_AND_HOSTNAME_VALIDATION\",\"maxIdleConns\":8,\"idleTimeSec\":60,\"queryTimeoutSec\":0,\"propertyList\":[]},\"type\":\"POSTGRES\",\"name\":\"database\",\"metadataPolicy\":{\"authTTLMs\":86400000,\"namesRefreshMs\":3600000,\"datasetRefreshAfterMs\":3600000,\"datasetExpireAfterMs\":10800000,\"datasetUpdateMode\":\"PREFETCH_QUERIED\",\"deleteUnavailableDatasets\":true,\"autoPromoteDatasets\":false},\"accelerationGracePeriodMs\":10800000,\"accelerationRefreshPeriodMs\":3600000,\"accelerationNeverExpire\":false,\"accelerationNeverRefresh\":false,\"allowCrossSourceSelection\":false,\"disableMetadataValidityCheck\":false,\"accessControlList\":{\"userControls\":[],\"roleControls\":[]}}"

echo "add minio"
curl -v -s -X POST "http://${DREMIO_URL}:9047/api/v3/catalog" \
--header "Authorization: _dremio${TOKEN}" \
--header 'Content-Type: application/json' \
--data-raw "{\"entityType\":\"source\",\"config\":{\"credentialType\":\"ACCESS_KEY\",\"accessKey\":\"$MINIO_USERNAME\",\"accessSecret\":\"$MINIO_PASSWORD\",\"secure\":false,\"externalBucketList\":[],\"enableAsync\":true,\"compatibilityMode\":true,\"enableFileStatusCheck\":true,\"rootPath\":\"/\",\"defaultCtasFormat\":\"PARQUET\",\"propertyList\":[{\"name\":\"fs.s3a.endpoint\",\"value\":\"$MINIO_ENDPOINT\"},{\"name\":\"fs.s3a.path.style.access\",\"value\":\"true\"}],\"whitelistedBuckets\":[\"$MINIO_BUCKET\"],\"isCachingEnabled\":true,\"maxCacheSpacePct\":100},\"type\":\"S3\",\"name\":\"minio\",\"metadataPolicy\":{\"authTTLMs\":86400000,\"namesRefreshMs\":3600000,\"datasetRefreshAfterMs\":3600000,\"datasetExpireAfterMs\":10800000,\"datasetUpdateMode\":\"PREFETCH_QUERIED\",\"deleteUnavailableDatasets\":true,\"autoPromoteDatasets\":false},\"accelerationGracePeriodMs\":10800000,\"accelerationRefreshPeriodMs\":3600000,\"accelerationNeverExpire\":false,\"accelerationNeverRefresh\":false,\"allowCrossSourceSelection\":false,\"disableMetadataValidityCheck\":false,\"accessControlList\":{\"userControls\":[],\"roleControls\":[]}}"
