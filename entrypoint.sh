#!/bin/sh

set -ex

mkdir -p /opt/data

GOOGLENEWS_VECTORS_FILE=/opt/data/wiki.en.vec

if [ "$SKIP_DATA_DOWNLOAD" != true ] && [ ! -f  "$GOOGLENEWS_VECTORS_FILE" ]; then
    wget -O /opt/data/wiki.en.zip https://s3-us-west-1.amazonaws.com/fasttext-vectors/wiki.en.zip 
    gunzip /opt/data/wiki.en.zip
    rm /opt/data/wiki.en.bin
fi

exec "$@"
