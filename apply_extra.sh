#!/usr/bin/sh
ar x opera.deb data.tar.xz
rm opera.deb
tar -xf data.tar.xz --strip-components=4 ./usr/lib/x86_64-linux-gnu/opera
rm data.tar.xz
cp /app/bin/stub_sandbox opera-sandbox