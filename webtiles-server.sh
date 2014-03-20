#!/bin/bash
docker run -name CrawlVolumes mattiasjp/crawl-volumes
docker run -rm -volumes-from CrawlVolumes -name Crawl mattiasjp/crawl
docker run -rm -volumes-from Crawl -name CrawlAdmin mattiasjp/crawl-admin
