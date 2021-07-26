# VERSION 2.1.0
# AUTHOR: piyushh.singhal@gmail.com
# DESCRIPTION: Install airflow

ARG AIRFLOW_VERSION="2.1.0"

FROM apache/airflow:${AIRFLOW_VERSION}-python3.7
USER root
# INSTALL TOOLS
RUN apt-get update \
&& apt-get -y install libaio-dev \
&& apt-get install postgresql-client

USER airflow
# ENTRYPOINT SCRIPT
COPY scripts/init.sh /init.sh

ENTRYPOINT ["/init.sh"]
