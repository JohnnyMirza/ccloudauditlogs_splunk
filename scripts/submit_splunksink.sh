#!/bin/bash
HEADER="Content-Type: application/json"
DATA=$( cat << EOF
{
  "name": "SplunkSink",
  "config": {
    "connector.class": "com.splunk.kafka.connect.SplunkSinkConnector",
    "topics":"confluent-audit-log-events",
    "splunk.indexes": "main",
    "splunk.hec.uri" : "https://localhost:8889",
    "splunk.hec.token" : "3bca5f4c-1eff-4eee-9113-ea94c284478a",
    "splunk.sourcetypes"  : "ccloud_audit_logs",
    "confluent.topic.bootstrap.servers"    : "$BOOTSTRAP_SERVERS",
    "splunk.hec.ssl.validate.certs": "false",
    "confluent.topic.replication.factor": "1",
    "value.converter": "org.apache.kafka.connect.storage.StringConverter",
    "tasks.max": "1"
  }
}
EOF
)

curl -X POST -H "${HEADER}" --data "${DATA}" http://localhost:8083/connectors
