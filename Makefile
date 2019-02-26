REGISTRY ?= saymosaic
DOCKER_IMAGE ?= metricbeat
VERSION ?= 6.5.4

build:
	docker build --build-arg METRICBEAT_VERSION=${VERSION} -t $(REGISTRY)/$(DOCKER_IMAGE):$(VERSION) -t $(REGISTRY)/$(DOCKER_IMAGE):latest .

run:
	docker-compose up

publish:
	docker push $(REGISTRY)/$(DOCKER_IMAGE):$(VERSION)
	docker push $(REGISTRY)/$(DOCKER_IMAGE):latest
