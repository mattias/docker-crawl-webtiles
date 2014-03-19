#!/bin/bash
if [ ! -d "/crawl-master/crawl-git"]; then
    echo "No data available, initializing data..."
    /dgamelaunch-config/bin/dgl create-versions-db
    /dgamelaunch-config/bin/dgl create-crawl-gamedir

    cp -a /crawl-master/{crawl-git,crawl-0.13}
    cp -a /crawl-master/{crawl-git,crawl-0.12}
    cp -a /crawl-master/{crawl-git,crawl-0.11}

    cp /dgamelaunch-config/crawl-build/crawl-git-repository/crawl-ref/source/webserver/templates/*.html /crawl-master/webserver/templates/

    /dgamelaunch-config/bin/dgl publish --confirm

    /dgamelaunch-config/bin/dgl update-stable 0.13
    /dgamelaunch-config/bin/dgl update-stable 0.12
    /dgamelaunch-config/bin/dgl update-stable 0.11
    /dgamelaunch-config/bin/dgl update-trunk

    sqlite3 -line /dgldir/dgamelaunch.db 'CREATE TABLE dglusers (id integer primary key, username text, email text, env text, password text, flags integer);'
fi

/etc/init.d/webtiles start

