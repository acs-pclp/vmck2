#!/bin/bash

export ONLINE_JUDGE=True

echo "Version 1.0 - RC Online"

date

unzip -q /usr/lib/pc2021-tema3-checker.zip -d .
unzip -q archive.zip
./check

date
