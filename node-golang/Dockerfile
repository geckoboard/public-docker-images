FROM node:8-slim

ENV GOLANG_VERSION 1.10.5
ENV GOLANG_DOWNLOAD_SHA a035d9beda8341b645d3f45a1b620cf2d8fb0c5eb409be36b389c0fd384ecc3a
ENV GOPATH /go
ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN set -eux; \
	wget -O go.tgz "https://golang.org/dl/go${GOLANG_VERSION}.linux-amd64.tar.gz"; \
	echo "${GOLANG_DOWNLOAD_SHA} *go.tgz" | sha256sum -c -; \
	tar -C /usr/local -xzf go.tgz; \
	rm go.tgz; \
	\
	export PATH="/usr/local/go/bin:$PATH"; \
	go version

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
RUN apt update
RUN apt install -y git make gcc unzip

# Install cfssl dependencies so we don't spend 30secs
# building them each time
RUN go get -u github.com/cloudflare/cfssl/cmd/cfssl
RUN go get -u github.com/cloudflare/cfssl/cmd/cfssljson
RUN go get -u github.com/cloudflare/cfssl/cmd/mkbundle

CMD [ "node" ]
