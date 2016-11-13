#! /bin/bash
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

fluentd_image=quay.io/roboll/fluentd-kubernetes:v1.19
docker build -t $fluentd_image $dir/fluentd-kubernetes
docker push $fluentd_image
