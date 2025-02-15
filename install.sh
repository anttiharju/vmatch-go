#!/usr/bin/env sh

PATH="$(realpath "$1")"
GOOS="$2"
GOARCH="$3"
GOVERSION="$4"

echo "https://go.dev/dl/${GOVERSION}.${GOOS}-${GOARCH}.tar.gz"
