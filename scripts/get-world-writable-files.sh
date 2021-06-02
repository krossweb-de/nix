#!/usr/bin/env bash
find $1 -xdev -type d \( -perm -0002 -a ! -perm -1000 \) -print
