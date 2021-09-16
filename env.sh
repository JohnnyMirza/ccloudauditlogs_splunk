export CONNECTOR_OWNER=splunk
export CONNECTOR_NAME=kafka-connect-splunk
export CONNECTOR_VERSION=2.0.2

export BASIC_AUTH_CREDENTIALS_SOURCE="USER_INFO"
export SCHEMA_REGISTRY_BASIC_AUTH_USER_INFO="SR API Key:SR API Secret"
export SCHEMA_REGISTRY_URL="SR Confluent Cloud endpoint"

# for standalone mode BOOTSTRAP_SERVERS is your audit logs cluster
# To access your Credentials on Confluent Cloud, see below examples
export BOOTSTRAP_SERVERS=
export SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username='Your API Key' password='Your API Secret';"



# For Distributed Mode, fill out the below with your Confluent Cloud Audit Log API Credentials.
# In distributed mode BOOTSTRAP_SERVERS your kafka/confluent cloud cluster is where your offset topics are stored
# export PRODUCE_CONSUME_BOOTSTRAP_SERVERS=
# export PRODUCE_CONSUME_SASL_JAAS_CONFIG=
