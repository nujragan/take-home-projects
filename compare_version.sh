#!/bin/bash

version1=$1
version2=$2

if [ "${version1}" = "${version2}" ]; then
  echo "0"
  exit 0
fi

version_compare="$(printf '%s\n' "${version1}" "${version2}" | sort -rV | head -n1)"
if [ "${version_compare}" = "${version2}" ]; then
        echo "-1"
else
        echo "1"
fi
