#!/bin/bash
optimize() {
  jpegoptim *.jpg --strip-all --all-progressive
  for i in *
  do
    if test -d $i
    then
      cd $i
      echo $i
      optimize
      cd ..
    fi
  done
  echo
}
optimize
