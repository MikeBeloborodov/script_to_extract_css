#!/bin/bash
grep -o "class=\".*\">" $1 |
  sed 's/^[ \t]*//' |
  sort -u |
  sed 's/class="//' |
  sed 's/^/./' | 
  sed 's/$/ {}/' |
  sed 's/">//' >> $2
