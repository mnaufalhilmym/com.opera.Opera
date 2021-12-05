#!/usr/bin/sh

set -e

bsdtar -Oxf opera.deb 'data.tar*' |
  bsdtar -xf - \
    --strip-components=5 \
    ./usr/lib/x86_64-linux-gnu/opera
rm opera.deb

install -Dm 755 /app/bin/stub_sandbox opera_sandbox
