#!/bin/bash
exec >> /home/crawl-dev/logs/update.log 2>&1
/dgamelaunch-config/bin/dgl update-stable 0.13
/dgamelaunch-config/bin/dgl update-stable 0.12
/dgamelaunch-config/bin/dgl update-stable 0.11
/dgamelaunch-config/bin/dgl update-trunk
