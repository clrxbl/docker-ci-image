FROM debian:buster
USER root

RUN apt update && apt install -y wget gnupg patch
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN apt install -y software-properties-common apt-transport-https ca-certificates gnupg
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt update

RUN apt install -y adoptopenjdk-11-hotspot maven git
RUN apt clean
