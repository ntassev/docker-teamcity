FROM sjoerdmulder/teamcity

MAINTAINER "Nikola Tassev" <ntassev@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y mercurial

