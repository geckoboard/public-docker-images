NAME=node-golang
GO_VERSION=1.12.9
NODE_VERSION=12
RELEASE=debian.stretch

DOCKER_VERSION=$(RELEASE)-node$(NODE_VERSION)-go$(GO_VERSION)

build:
	docker build -t $(NAME) .
	docker tag $(NAME) geckoboard/$(NAME):${DOCKER_VERSION}

release: build
	docker push geckoboard/$(NAME):${DOCKER_VERSION}
