FROM alpine:3.12

ADD https://github.com/igk1972/netlify-cms-oauth-provider-go/releases/download/0.2.1/netlify-cms-oauth-provider_linux-amd64 /

RUN chmod +x /netlify-cms-oauth-provider_linux-amd64

CMD ["/netlify-cms-oauth-provider_linux-amd64"]