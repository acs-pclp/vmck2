#!/bin/bash

export ONLINE_JUDGE=True

echo "Version 1.0 - Online"

date

unzip -q /usr/lib/pc2020-tema3-checker.zip -d .
unzip -q archive.zip
./check

date
