#!/bin/bash
fn=$(echo $1 | cut -f 2 -d '/' || $1)
num=$(echo $fn | cut -f 1 -d '-')
name=$(echo $fn | cut -f 2 -d '-')

jupyter-nbconvert --to slides jupyter-slides/$num-$name/$name.ipynb --reveal-prefix=../reveal.js --output `pwd`/$num/$name
