#!/bin/bash

export ONLINE_JUDGE=True

echo "Version 1.1 - RC Online"

date

sha256sum /usr/lib/pc2021-tema3-checker.zip

unzip -q /usr/lib/pc2021-tema3-checker.zip -d .
unzip -q archive.zip
unzip -q artifact.zip

cat config.patch | patch -p0

./check

date
