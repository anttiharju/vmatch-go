#!/bin/sh
set -eu

mkdir -p "$1"
path="$(realpath "$1")"
goos="$2"
goarch="$3"
goversion="$4"

url="https://go.dev/dl/${goversion}.${goos}-${goarch}.tar.gz"
curl -sL "$url" | tar -C "$path" -xz
