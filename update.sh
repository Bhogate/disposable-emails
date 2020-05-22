#!/bin/bash

echo "- Cleanup old files"
if [ -d "api" ]; then
	rm -rf api/
fi

# API Directory
echo "- Creating the api/ Directory if doesn't exist"
if [ ! -d "api/" ]; then
	mkdir api
fi

# Other digit prefix directories
echo "- Creating the api/<digit> directories if doesn't exist"
for a_dir in {0..9}; do
	if [ ! -d "api/${a_dir}" ]; then
		mkdir "api/${a_dir}/"
	fi
done

# Other letter prefix directories
echo "- Creating the api/<letter> directories if doesn't exist"
for a_dir in {a..z}; do
	if [ ! -d "api/${a_dir}" ]; then
		mkdir "api/${a_dir}/"
	fi
done

for domain in $(cat all-domains.txt | sort -u	)
do
	first_letter=$(echo "${domain}" | cut -c 1 )
	echo -n $first_letter
	echo "-- " $domain
	filename="api/${first_letter}/${domain}.html"
	if [ ! -f "${filename}" ];then
		echo "DISPOSABLE" > "${filename}"
	fi
done
