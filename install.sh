#!/bin/sh
set -eu

goversion="$1"
goos="$2"
goarch="$3"

path="$HOME/.vmatch/go/v${goversion}"
mkdir -p "$path"

url="https://go.dev/dl/go${goversion}.${goos}-${goarch}.tar.gz"
curl -sL "$url" | tar -C "$path" --strip-components=1 -xz
