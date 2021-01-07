#!/bin/bash

export ONLINE_JUDGE=True

echo "Version 0.9.2"

date

unzip -q /usr/lib/pc2020-tema3-checker.zip -d .
unzip -q archive.zip
unzip -q artifact.zip

cat grader.patch | patch -p0
cat config.patch | patch -p0

./check

date
