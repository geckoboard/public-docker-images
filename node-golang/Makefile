NAME=node-golang
GO_VERSION=1.10.5
NODE_VERSION=8
RELEASE=debian.stretch

DOCKER_VERSION=$(RELEASE)-node$(NODE_VERSION)-go$(GO_VERSION)

build:
	docker build -t $(NAME) .
	docker tag $(NAME) geckoboard/$(NAME):${DOCKER_VERSION}

release: build
	docker push geckoboard/$(NAME):${DOCKER_VERSION}
