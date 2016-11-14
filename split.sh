#!/bin/sh

rm -f master.splitted.*

cd ~/.cocoapods/repos

tar -zcf master.tgz master
split -b 50m master.tgz master.splitted.

cd -

mv ~/.cocoapods/repos/master.splitted.* .
