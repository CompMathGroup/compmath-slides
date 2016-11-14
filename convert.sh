#!/bin/bash

ver=$(python --version 2>&1 | grep -o Anaconda)
if [ "x$ver" != "xAnaconda" ]; then
	echo "Need patched nbconvert" && exit 1
fi

for path in jupyter-slides/*; do
	fn=$(echo $path | cut -f 2 -d '/' || $1)
	num=$(echo $fn | cut -f 1 -d '-')
	name=$(echo $fn | cut -f 2 -d '-')

	if [ -f $num/.keep ]; then
		continue;
	fi

	echo "Processing #$num aka $name"
	mkdir -p $num

	jupyter-nbconvert --to slides jupyter-slides/$num-$name/$name.ipynb --reveal-prefix=../reveal.js --output `pwd`/$num/$name
	find $path \( -not -name '*.ipynb' \) -type f -exec cp {} $num \;
	echo '.prompt { display: none; }' > $num/custom.css
done
