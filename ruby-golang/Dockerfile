FROM geckoboard/ruby:xenial-2.4

ENV GOLANG_VERSION 1.7.3
ENV GOLANG_DOWNLOAD_SHA 508028aac0654e993564b6e2014bf2d4a9751e3b286661b0b0040046cf18028e
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
