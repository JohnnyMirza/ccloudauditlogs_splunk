export CONNECTOR_OWNER=splunk
export CONNECTOR_NAME=kafka-connect-splunk
export CONNECTOR_VERSION=2.0.2
# for standalone mode BOOTSTRAP_SERVERS is your audit logs cluster, in distributed mode BOOTSTRAP_SERVERS is your kafka/confluent cloud cluster where your offsets will be stored.
# To access your Credentials on Confluent Cloud, see below examples
#Confluent Cloud -> cluster->Settings->Bootstrap server
#Confluent Cloud -> cluster->API keys
#Confluent Cloud ->  cluster->API keys
#Confluent Cloud -> Environment->Schema Registry->API endpoint
export BOOTSTRAP_SERVERS=
export SASL_JAAS_CONFIG="org.apache.kafka.common.security.plain.PlainLoginModule required username='Your API Key' password='Your API Secret';"
export BASIC_AUTH_CREDENTIALS_SOURCE="USER_INFO"
export SCHEMA_REGISTRY_BASIC_AUTH_USER_INFO="SR API Key:SR API Secret"
export SCHEMA_REGISTRY_URL="SR Confluent Cloud endpoint"


# For Distributed Mode, fill out the below with your Confluent Cloud Audit Log API Credentials.
# export PRODUCE_CONSUME_BOOTSTRAP_SERVERS=
# export PRODUCE_CONSUME_SASL_JAAS_CONFIG=