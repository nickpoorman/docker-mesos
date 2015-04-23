# Mesos
#
# VERSION 0.0.1

FROM nickpoorman/docker-spark-postgresql-base:0.0.1
MAINTAINER Nick Poorman <mail@nickpoorman.com>

RUN echo "deb http://repos.mesosphere.io/debian wheezy main" | tee /etc/apt/sources.list.d/mesosphere.list \
	&& apt-key adv --keyserver keyserver.ubuntu.com --recv E56151BF

RUN apt-get -y update \
	&& apt-get -y install mesos=0.22.0-1.0.debian78
