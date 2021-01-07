#!/bin/bash

export ONLINE_JUDGE=True
export PYTHONMALLOC=malloc_debug

echo "Version 0.9.1"

date

unzip -q /usr/lib/pc2020-tema3-checker.zip -d .
unzip -q archive.zip
unzip -q artifact.zip

cat grader.patch | patch -p0

./check

date
