IMAGE="postgres9.4-ssl"
VERSION="1.0"

build:
	docker build -t ${IMAGE} .
	docker tag ${IMAGE} geckoboard/${IMAGE}:${VERSION}

release:
	docker push geckoboard/${IMAGE}:${VERSION}

