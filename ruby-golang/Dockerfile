FROM geckoboard/ruby:xenial-2.4

ENV GOLANG_VERSION 1.9.7
ENV GOLANG_DOWNLOAD_SHA 88573008f4f6233b81f81d8ccf92234b4f67238df0f0ab173d75a302a1f3d6ee
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
