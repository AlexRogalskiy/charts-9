#! /bin/bash
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p $dir/docs
for chart in $dir/charts/*; do
    name=$(sed s,$dir/charts/,,g <<< $chart)
    helm package $chart
    mv $name-*.tgz docs/
done

helm repo index docs --url http://roboll.io/charts
