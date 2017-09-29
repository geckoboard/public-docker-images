NAME=ruby-golang
GO_VERSION=1.8.3
RUBY_VERSION=2.4
RELEASE=xenial

DOCKER_VERSION=$(RELEASE)-ruby$(RUBY_VERSION)-go$(GO_VERSION)

build:
	docker build -t $(NAME) .
	docker tag $(NAME) geckoboard/$(NAME):${DOCKER_VERSION}

release: build
	docker push geckoboard/$(NAME):${DOCKER_VERSION}
