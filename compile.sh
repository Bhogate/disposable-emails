#!/bin/bash
# Due to incompability of sed in UNIX and MacOS, the lowercase is replaced with tr instead of sed
cat sources/*.txt | sort -u | sed 's/\w+//g' | tr '[:upper:]' '[:lower:]' > all-domains.txt
echo "- Compiled !!"
wc all-domains.txt
