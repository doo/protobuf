#!/bin/bash

readonly kPROTOBUF_BUILD_DIRS=("vsprojects/build" "vsprojects/google")

prepare()
{
  cd vsprojects
  cmd /K build.protobuf.vs2012.bat
}


clean()
{
  for i_dir in ${kPROTOBUF_BUILD_DIRS[@]}; do
    rm -rf ${i_dir}
  done
}