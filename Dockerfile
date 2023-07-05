FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qqq

RUN apt-get upgrade -qqq

RUN apt-get install -qq git maven

WORKDIR /app

RUN git clone --depth 1 --branch "master" --single-branch "https://github.com/icann/rdap-conformance-tool.git" .

RUN mvn package -DskipTests

ADD config.json .

ADD --chmod=0755 test.sh .

ENTRYPOINT ["./test.sh"]
