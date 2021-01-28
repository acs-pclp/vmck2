#!/bin/bash

export ONLINE_JUDGE=True

echo "Version 1.x - RC Online"

date

unzip -q /usr/lib/pc2020-tema3-checker.zip -d .
unzip -q archive.zip
unzip -q artifact.zip

mkdir bk
cp -r tasks/image_editor/tests/00-image_editor bk/00-image_editor
cp -r tasks/image_editor/tests/00-image_editor bk/01-image_editor
rm -rf 58-image_editor/tests/*
cp -r bk/* tasks/image_editor/tests/
rm -rf bk

cat config.patch | patch -p0
cat nume.txt

./check

date
