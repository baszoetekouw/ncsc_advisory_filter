#!/bin/bash

set -e

BASEDIR=$( dirname -- "${BASH_SOURCE[0]}" )

wget -q -O input.rss  https://advisories.ncsc.nl/rss/advisories
xsltproc ${BASEDIR}/ncsc.xslt input.rss > output.rss
mv output.rss ncsc_new.rss

exit 0
