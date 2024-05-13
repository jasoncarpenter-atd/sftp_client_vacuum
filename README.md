# SFTP client vacuum

## Usage

* Build the container image

```shell
make build
```

* Connect to SFTP instance

Set the SFTP_HOST variable with the target IP address and the SFTP_USER variable
with the target SFTP user.

```shell
make run SFTP_HOST=x.x.x.x SFTP_USER=username
```
