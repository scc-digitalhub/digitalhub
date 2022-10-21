# Building NiFi image for OpenID Connect
The image publicly available on Docker Hub does not run on ARM processors. In addition, its startup scripts are missing instructions to enable OpenID Connect.

This document and folder are meant to be temporary and unnecessary once an appropriate image is available on Docker Hub.

Clone the official repository:
```shell
git clone https://github.com/apache/nifi.git
```

Then, `cd` to *nifi/nifi-docker/dockerhub*. Replace the *DockerImage.txt* and *Dockerfile* files present there with the ones in this folder. This is to use a previous version of NiFi (1.18.0), as NiFi-Toolkit for the newest version (1.19.0) seems to be unavailable at the address used within, causing a build error.

`cd` to the *sh* folder, replace the *start.sh* file within with the one in this folder, and add the *oidc.sh* file. These are to enable OpenID Connect authentication.

Build the image:
```shell
podman build -t nifi-dh .
```