# Confluent Cloud AuditLogs with Splunk Dashboards
This repo will walk you through a 'how to' on visualising your Confluent Cloud Auditlogs with Splunk Pre-Built dashboards. This repo runs a Kafka standalone-connect worker which needs to be configured to connect to a Confluent Cloud instance.

There are two options for building the local kafka connect docker image, standalone and distributed. Standalone (docker-compose.connect.standalone.yml) is suggested for dev/test and what is used in this demo, and where offsets are stored in a local file .e.g /tmp/offsets. Distributed (docker-compose.connect.distributed.yml) allows you to scale out connect workers and also store your offsets in another Kafka instance, e.g. confluent cloud cluster or local kafka instance. To learn more about this process in more detail take a look at this git repo: https://github.com/javabrett/cp-all-in-one/tree/splunk-connector/Docker-connect.

This repo includes Kafka Connect and a Splunk enterprise instance running in docker.

<p align="center">
   <img src="images/splunk_cc_auditlogs.png" width="50%" height="50%">
   &nbsp;
   <img src="images/cc_auditlogs.png" width="45%" height="45%">
</p>

   
To get started:
```
1. git clone https://github.com/JohnnyMirza/ccloudauditlogs_splunk.git
2. cd ccloudauditlogs_splunk
3. Fill out your details in env.sh
4. run `source env.sh` from cmd
5. docker build \
    --build-arg CONNECTOR_OWNER=${CONNECTOR_OWNER} \
    --build-arg CONNECTOR_NAME=${CONNECTOR_NAME} \
    --build-arg CONNECTOR_VERSION=${CONNECTOR_VERSION} \
    -t localbuild/connect_standalone_with_${CONNECTOR_NAME}:${CONNECTOR_VERSION} \
    -f ./Docker-connect/standalone/Dockerfile ./Docker-connect/standalone
6. docker-compose up -d (copy standalone/distributed.example.yml files as needed)
```

**Access to Splunk Dashboards
to log into splunk go to:
- `http://localhost:8000/en-GB/app/confluent_cloud_app/audit_overview`
- `http://localhost:8000`
(admin/Password1)
