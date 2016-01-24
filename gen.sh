#!/bin/bash
current=`pwd`
script=~/script/gen_tex

if [ $# = 0 ]; then
echo "dirname doctitle"
exit
fi

mkdir $current/$1

cp ${script}/document.tex ${script}/new.tex
cat $script/new.tex | sed -e 's/uniquenessownsmyheart/'$2'/' > $script/new1.tex
mv $script/new1.tex $current/$1/document.tex
