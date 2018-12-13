VERSION=1.0

POSTGRES94_IMAGE=postgres9.4-ssl
POSTGRES95_IMAGE=postgres9.5-ssl
POSTGRES96_IMAGE=postgres9.6-ssl

build-94:
	docker build -t ${POSTGRES94_IMAGE} 9.4/
	docker tag ${POSTGRES94_IMAGE} geckoboard/${POSTGRES94_IMAGE}:${VERSION}
release-94:
	docker push geckoboard/${POSTGRES94_IMAGE}:${VERSION}

build-95:
	docker build -t ${POSTGRES95_IMAGE} 9.5/
	docker tag ${POSTGRES95_IMAGE} geckoboard/${POSTGRES95_IMAGE}:${VERSION}
release-95:
	docker push geckoboard/${POSTGRES95_IMAGE}:${VERSION}

build-96:
	docker build -t ${POSTGRES96_IMAGE} 9.6/
	docker tag ${POSTGRES96_IMAGE} geckoboard/${POSTGRES96_IMAGE}:${VERSION}
release-96:
	docker push geckoboard/${POSTGRES96_IMAGE}:${VERSION}


build-all: build-94 build-95
release-all: release-94 release-95
