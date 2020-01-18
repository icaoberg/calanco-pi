#!/bin/bash 

if [ -f rss.xml ]; then
	rm -f rss
fi

wget -nc https://anchor.fm/s/59aedcc/podcast/rss

if [ -f rss.xml ]; then
	cat rss.xml | grep enclosure | cut -d'"' -f2 | xargs wget -nc
	rm -f rss.xml
fi
