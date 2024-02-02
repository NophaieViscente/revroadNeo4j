# Use the official Neo4j image
FROM neo4j:latest

# Set environment variables
ENV NEO4J_ACCEPT_LICENSE_AGREEMENT="yes"
ENV NEO4J_AUTH="neo4j/passw0rd"
ENV NEO4J_dbms_connector_bolt_listen__address="0.0.0.0:7687"
ENV NEO4J_dbms_connector_http_listen__address="0.0.0.0:7474"
ENV NEO4J_dbms.security.procedures.unrestricted="gds.*"
ENV server.memory.heap.initial_size="100m"
ENV server.memory.heap.max_size="100m"
ENV server.memory.pagecache.size="100m"

# Expose necessary ports
EXPOSE 7474 7687

# Start Neo4j
CMD ["neo4j"]
