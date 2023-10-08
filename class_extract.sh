#!/bin/bash
grep -o "class=\".*\"" $1 |
  sed 's/^[ \t]*//' |
  sed 's/class="//' |
  sed 's/^/./' | 
  sed 's/"//' |
  sed 's/$/ {}/' |
  python3 ~/Code/my_scripts/extract_css/sort.py >> $2
