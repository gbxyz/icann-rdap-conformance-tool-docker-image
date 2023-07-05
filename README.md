# ICANN RDAP Conformance Tool Docker Image

[ICANN](https://www.icann.org) maintains an [RDAP conformance tool](https://github.com/icann/rdap-conformance-tool) which is used to verify the conformance of gTLD registry RDAP servers against the RFCs and the gTLD RDAP Profile.

This tool is written in Java and binaries are not provided, so those wishing to use it most compile it themselves. This makes it hard to integrate into CI/CD pipelines.

This repository contains a Docker image allowing easy use of the tool:

```
$ docker run --rm -it gbxyz/icann-rdap-conformance-tool "https://rdap.example.com/rdap/domain/example.com"
```

GitHub repository: https://github.com/gbxyz/icann-rdap-conformance-tool-docker-image/

Docker Hub Image: https://hub.docker.com/repository/docker/gbxyz/icann-rdap-conformance-tool-docker-image
