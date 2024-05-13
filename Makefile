IMAGE ?= sftp-client
VERSION ?= latest
TAG ?= $(IMAGE):$(VERSION)
VOLUMES=--volume $(PWD)/ssh:/root/.ssh \
	    --volume $(PWD):/app
SFTP_PORT ?= 2222
SFTP_HOST ?=
SFTP_USER ?=

build:
	@docker build -f Dockerfile -t $(TAG) .

run:
	@docker run \
		--interactive \
		--tty \
		--rm \
		--name $(IMAGE) \
		--workdir /app \
		$(VOLUMES) $(TAG) \
		-P $(SFTP_PORT) $(SFTP_USER)@$(SFTP_HOST)

shell:
	@docker run \
		--interactive \
		--tty \
		--rm \
		--name $(IMAGE) \
		--workdir /app \
		--entrypoint /bin/bash \
		$(VOLUMES) $(TAG)
