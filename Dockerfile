# Use the official Neo4j image
FROM neo4j:latest

# Set environment variables
ENV NEO4J_ACCEPT_LICENSE_AGREEMENT="yes"
ENV NEO4J_AUTH="neo4j/passw0rd"
ENV NEO4J_dbms_connector_bolt_listen__address="0.0.0.0:7687"
ENV NEO4J_server.http.enabled="false"
# ENV NEO4J_dbms_connector_http_listen__address="0.0.0.0:7474"
ENV NEO4J_dbms_connector_https_listen__address="0.0.0.0:7473"
ENV NEO4J_server.https.advertised_address="0.0.0.0:7473"
# ENV NEO4J_dbms.security.procedures.unrestricted="gds.*"
ENV NEO4J_dbms_memory_heap_initial__size="256m"
ENV NEO4J_dbms_memory_heap_max__size="256m"
ENV NEO4J_dbms_memory_pagecache_size="100m"

# Expose necessary ports
EXPOSE 7474 7687

# Start Neo4j
CMD ["neo4j"]

