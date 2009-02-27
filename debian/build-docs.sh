#!/bin/sh

# build the html documentation using python-docutils.
for f in `ls doc/*.rst`; do
    doc/compile-doc.py $f > doc/"$(basename $f rst)html"
done
