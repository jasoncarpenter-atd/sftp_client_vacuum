FROM ubuntu:latest

RUN apt update && apt install --assume-yes --no-install-recommends openssh-sftp-server

ENTRYPOINT ["/usr/bin/sftp"]
CMD ["-h"]
