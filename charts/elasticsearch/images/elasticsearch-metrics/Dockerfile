FROM alpine:3.4

ENV RELEASE https://github.com/ewr/elasticsearch_exporter/releases/download/0.3.0/elasticsearch_exporter-0.3.0.linux-amd64.tar.gz

RUN apk add --update --no-cache curl && \
	curl -sSf -L ${RELEASE} | tar xz > /elasticsearch_exporter && \
	apk del curl

ENTRYPOINT [ "/elasticsearch_exporter" ]
