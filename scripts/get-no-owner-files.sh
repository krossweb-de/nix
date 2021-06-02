#/usr/bin/env bash

find $1 -xdev \( -nouser -o -nogroup \) -print
