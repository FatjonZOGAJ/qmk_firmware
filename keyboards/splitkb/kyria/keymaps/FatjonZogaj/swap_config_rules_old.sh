#!/bin/bash

function swap()
{
  tmpfile=$(mktemp $(dirname "$1")/XXXXXX)
  mv "$1" "$tmpfile" && mv "$2" "$1" &&  mv "$tmpfile" "$2"
}

swap rules.mk rules_old.mk
#swap config.h config_old.h

