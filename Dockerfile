FROM golang as src

RUN git clone -b gomod-travis-goreleaser-integration https://github.com/kishaningithub/netlify-cms-oauth-provider-go.git && \
    cd netlify-cms-oauth-provider-go && \
    make build-linux

FROM alpine:3.12

COPY --from=src /go/netlify-cms-oauth-provider-go/bin/netlify-cms-oauth-provider_linux-amd64 /

CMD ["/netlify-cms-oauth-provider_linux-amd64"]