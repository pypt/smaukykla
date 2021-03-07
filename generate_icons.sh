#!/bin/bash

set -u
set -e

inkscape -z -b FFFFFF -w 1200 -h 1200 media/ne-smaukyklai.svg -e opengraph.png
inkscape -z -b FFFFFF -w 512 -h 512 media/ne-smaukyklai.svg -e splash-512x512.png

inkscape -z -w 160 -h 160 media/ne-smaukyklai.svg -e favicon-160x160.png
inkscape -z -w 16 -h 16 media/ne-smaukyklai.svg -e favicon-16x16.png
inkscape -z -w 192 -h 192 media/ne-smaukyklai.svg -e favicon-192x192.png
inkscape -z -w 32 -h 32 media/ne-smaukyklai.svg -e favicon-32x32.png
inkscape -z -w 96 -h 96 media/ne-smaukyklai.svg -e favicon-96x96.png

inkscape -z -w 16 -h 16 media/ne-smaukyklai.svg -e temp-16.png
inkscape -z -w 32 -h 32 media/ne-smaukyklai.svg -e temp-32.png
inkscape -z -w 48 -h 48 media/ne-smaukyklai.svg -e temp-48.png
convert temp-16.png temp-32.png temp-48.png favicon.ico
rm -f temp-*.png
