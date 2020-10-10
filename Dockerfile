FROM debian:buster-slim
USER root

RUN apt update && apt install -y wget gnupg
RUN wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
RUN apt install -y software-properties-common apt-transport-https ca-certificates gnupg
RUN add-apt-repository --yes https://adoptopenjdk.jfrog.io/adoptopenjdk/deb/
RUN apt update

RUN apt install -y adoptopenjdk-11-hotspot ca-certificates-java maven git
RUN apt clean
