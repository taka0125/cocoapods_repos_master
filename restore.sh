#!/bin/sh

if [ "$CI" == "true" ]
then
  mkdir -p ~/.cocoapods/repos
  
  mv master.splitted.* ~/.cocoapods/repos
  
  cd ~/.cocoapods/repos
  
  cat master.splitted.* > master.tgz
  
  tar -zxf master.tgz
fi
