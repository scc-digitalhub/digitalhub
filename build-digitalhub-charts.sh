#!/bin/bash
set -e
build_chart () {
  array=('aac' 'digitalhub' 'digitalhub-crds' 'mlrun' 'nakamasato-mysql-operator' 'mlrun-ce' 'minio-operator')
  for f in charts/*
  do
  IFS='/'
  read -ra newarr <<< "$f"
  chart="${newarr[1]}"
    if ! [[ ${array[*]} =~ $chart ]]; then
      echo "Packing $f)"
      helm package "$f" -d charts/digitalhub/charts
    fi
  done
}

build_chart
