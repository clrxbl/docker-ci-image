FROM debian:buster
USER root

RUN apt update && apt install -y wget gnupg patch
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | apt-key add -
RUN apt install -y software-properties-common apt-transport-https ca-certificates gnupg
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt update

RUN apt install -y adoptopenjdk-14-hotspot maven git
RUN apt clean

RUN wget https://dl.min.io/client/mc/release/linux-amd64/mc -O /usr/local/bin/mc
RUN chmod +x /usr/local/bin/mc
