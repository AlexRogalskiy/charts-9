FROM gcr.io/google_containers/fluentd-elasticsearch:1.19

RUN td-agent-gem install \
	fluent-plugin-kubernetes_metadata_filter \
	fluent-plugin-systemd \
	fluent-plugin-prometheus
