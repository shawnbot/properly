#!/bin/sh
VERSION=`cat VERSION`
perl -pi -e "s/(Properly) v([\d\.]+)/\$1 $VERSION/g" $*
