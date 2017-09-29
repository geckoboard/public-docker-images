FROM geckoboard/ruby:xenial-2.4

ENV GOLANG_VERSION 1.8.3
ENV GOLANG_DOWNLOAD_SHA 1862f4c3d3907e59b04a757cfda0ea7aa9ef39274af99a784f5be843c80c6772
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
