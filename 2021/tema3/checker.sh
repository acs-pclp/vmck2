#!/bin/bash

export ONLINE_JUDGE=True

echo "Version 1.3 - Valgrind Only - RC Online"

date

sha256sum /usr/lib/pc2021-tema3-checker.zip

unzip -q /usr/lib/pc2021-tema3-checker.zip -d .
unzip -q archive.zip
unzip -q artifact.zip

cat config.patch | patch -p0

mkdir bk
mkdir bk/00-image_editor bk/01-image_editor bk/02-image_editor bk/03-image_editor

cp tasks/image_editor/tests/00-image_editor/00-image_editor.in bk/00-image_editor
cp tasks/image_editor/tests/00-image_editor/00-image_editor.ref bk/00-image_editor

cp tasks/image_editor/tests/01-image_editor/01-image_editor.in bk/01-image_editor
cp tasks/image_editor/tests/01-image_editor/01-image_editor.ref bk/01-image_editor

cp tasks/image_editor/tests/05-image_editor/05-image_editor.in bk/02-image_editor
cp tasks/image_editor/tests/05-image_editor/05-image_editor.ref bk/02-image_editor

cp tasks/image_editor/tests/55-image_editor/55-image_editor.in bk/03-image_editor
cp tasks/image_editor/tests/55-image_editor/55-image_editor.ref bk/03-image_editor

rm -rf tasks/image_editor/tests
mv bk tasks/image_editor/tests

./check

date
