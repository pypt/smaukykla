#!/bin/bash

set -u
set -e

rm -rf _site/
jekyll serve --watch

