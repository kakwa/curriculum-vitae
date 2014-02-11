#!/bin/sh

cd `dirname $0`
find ./ -type f -name "cv.tex" | grep -v "out" | while read cv
do
    lang=`dirname $cv|sed "s/[\.\/]//g"`
    make pdf LANG=$lang
    mv out/cv.pdf out/cv_${lang}.pdf
done
