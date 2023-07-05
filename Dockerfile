FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -qqq

RUN apt-get upgrade -qqq

RUN apt-get install -qq git maven

WORKDIR /app

RUN git clone --depth 1 --branch "master" --single-branch "https://github.com/icann/rdap-conformance-tool.git" .

RUN mvn package -DskipTests

RUN echo '{"definitionIdentifier": "test"}' > config.json

RUN <<END bash

cat > test.sh <<EOF
#!/bin/bash

rm -rf results/*

java -jar tool/bin/rdapct-1.0.jar -c config.json "\\\$1" 1>&2

cat results/*

EOF

chmod +x test.sh

END
