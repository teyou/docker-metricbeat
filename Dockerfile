ARG METRICBEAT_VERSION
FROM docker.elastic.co/beats/metricbeat:${METRICBEAT_VERSION}

LABEL maintainer=rudy.ng@mosaix.ai
LABEL image=saymosaic/metricbeat

COPY metricbeat.yml /usr/share/metricbeat/metricbeat.yml
USER root