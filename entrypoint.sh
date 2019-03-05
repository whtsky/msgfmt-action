#!/bin/sh
if [ "$#" -ne 0 ] 
then
  sh -c "msgfmt $*"
else
  find "${WORKDIR:-.}" -name \*.po -print -execdir sh -c 'msgfmt -f -o "$(basename "$0" .po).mo" "$0"' '{}' \;
fi