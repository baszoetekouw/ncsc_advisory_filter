#!/bin/bash

set -e

wget -q -O input.rss  https://advisories.ncsc.nl/rss/advisories
xsltproc ncsc.xslt input.rss > output.rss
mv output.rss ncsc_new.rss

exit 0
