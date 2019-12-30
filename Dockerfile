FROM breauxaj/alpine:latest

RUN apk add varnish \
  && rm -rf /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh

CMD ["sh"]

EXPOSE 6081

LABEL org.opencontainers.image.vendor="Breaux Heavy Industries" \
	org.opencontainers.image.url="https://breaux.io" \
	org.opencontainers.image.title="Varnish" \
	org.opencontainers.image.description="Varnish basic installation, no config included" \
	org.opencontainers.image.version="v0.0.1" \
	org.opencontainers.image.documentation="https://docs.breaux.io"