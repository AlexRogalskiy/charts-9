#! /bin/bash
dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

for chart in $dir/charts/*; do
    pushd $chart >/dev/null
    helm dep update
    popd >/dev/null
done
