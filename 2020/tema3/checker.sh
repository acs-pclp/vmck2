#!/bin/bash

export ONLINE_JUDGE=True

echo "Version 1.2.1 - Online"

date

unzip -q /usr/lib/pc2020-tema3-checker.zip -d .
unzip -q archive.zip
./check

date

./image_check tests.json "57-image_editor" 2>&1

echo "TOTAL: 100/100"
