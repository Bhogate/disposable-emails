#!/bin/bash
for a_line in $(cat all-domains.txt | sort -u)
do
  echo "- ${a_line}"
  domain=$(echo "${a_line}" | sed 's/^\w+//g' | sed 's/\w$//g' | tr '[:upper:]' '[:lower:]')  
  first_letter=$(echo "${domain}" | cut -c 1 )
  echo "-- -- ${first_letter}"
  echo "-- -- ${domain}"
  if [ ! -d "api/${first_letter}" ]; then
    mkdir  "api/${first_letter}/"
  fi
  echo "DISPOSABLE" > "api/${first_letter}/${domain}.html"
done
