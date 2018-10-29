# Dump postgres container databases into a file.

DATABASE_CONTAINER_NAME=${DATABASE_CONTAINER_NAME:-dist-slcs-database}
DATABASE_USER="${DATABASE_USER:-slcs}"
OUT_FILE="${OUT_FILE:-slcs.dump}"

docker exec -t "${DATABASE_CONTAINER_NAME}" \
    pg_dumpall -U "${DATABASE_USER}" -c > "${OUT_FILE}"

