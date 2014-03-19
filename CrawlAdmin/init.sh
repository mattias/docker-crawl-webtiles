#!/bin/bash
if [ ! -d "/dgldir/data"]; then
    echo "No data available, initializing data..."
    /dgamelaunch-config/bin/dgl create-versions-db
    /dgamelaunch-config/bin/dgl create-crawl-gamedir

    cp -a /crawl-master/{crawl-git,crawl-0.13}
    cp -a /crawl-master/{crawl-git,crawl-0.12}
    cp -a /crawl-master/{crawl-git,crawl-0.11}$ sudo cp -a /home/crawl/DGL/crawl-master/{crawl-git,crawl-0.13}
    cp -a /crawl-master/{crawl-git,crawl-0.12}
    cp -a /crawl-master/{crawl-git,crawl-0.11}
fi
