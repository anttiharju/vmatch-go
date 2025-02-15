#!/bin/sh
set -eu

mkdir -p "$1"

path="$1"
goversion="$2"
goos="$3"
goarch="$4"

url="https://go.dev/dl/${goversion}.${goos}-${goarch}.tar.gz"
curl -sL "$url" | tar -C "$path" --strip-components=2 -xz
