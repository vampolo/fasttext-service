#!/bin/sh

set -ex

mkdir -p /opt/data

GOOGLENEWS_VECTORS_FILE=/opt/data/wiki.en.bin

if [ "$SKIP_DATA_DOWNLOAD" != true ] && [ ! -f  "$GOOGLENEWS_VECTORS_FILE" ]; then
    cd /opt/data
    wget https://s3-us-west-1.amazonaws.com/fasttext-vectors/wiki.en.zip 
    unzip wiki.en.zip
    rm wiki.en.zip
    cd /
fi

exec "$@"
