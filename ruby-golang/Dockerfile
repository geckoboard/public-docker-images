FROM geckoboard/ruby:xenial-2.4

ENV GOLANG_VERSION 1.8.5
ENV GOLANG_DOWNLOAD_SHA 4f8aeea2033a2d731f2f75c4d0a4995b357b22af56ed69b3015f4291fca4d42d
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

CMD [ "irb" ]
