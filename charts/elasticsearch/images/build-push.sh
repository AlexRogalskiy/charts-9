#! /bin/bash
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

es_image=quay.io/roboll/elasticsearch-kubernetes:2.4.1
docker build -t $es_image $dir/elasticsearch-kubernetes
docker push $es_image

metrics_image=quay.io/roboll/elasticsearch-metrics:0.3.0
docker build -t $metrics_image $dir/elasticsearch-metrics
docker push $metrics_image
