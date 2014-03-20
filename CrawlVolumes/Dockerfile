# Crawl webtiles server shared folders
#
# VERSION 1.0

FROM    busybox
RUN mkdir -p /crawl-master/webmaster/{run,sockets,templates}
RUN mkdir -p /dgldir/{data,dumps,morgue,rcfiles,ttyrec,inprogress}
RUN mkdir -p /dgldir/data/menus
RUN touch dgamelaunch
RUN mkdir -p /dgldir/inprogress/{crawl-git-sprint,crawl-git-tut,crawl-git-zotdef,crawl-git}
RUN mkdir -p /dgldir/inprogress/{crawl-0.13-sprint,crawl-0.13-tut,crawl-0.13-zotdef,crawl-0.13}
RUN mkdir -p /dgldir/inprogress/{crawl-0.12-sprint,crawl-0.12-tut,crawl-0.12-zotdef,crawl-0.12}
RUN mkdir -p /dgldir/inprogress/{crawl-0.11-sprint,crawl-0.11-tut,crawl-0.11-zotdef,crawl-0.11}
RUN mkdir -p /dgldir/inprogress/{crawl-0.10-sprint,crawl-0.10-tut,crawl-0.10-zotdef,crawl-0.10}
RUN mkdir -p /dgldir/rcfiles/{crawl-git,crawl-0.13,crawl-0.12,crawl-0.11,crawl-0.10}
RUN mkdir -p /dgldir/data/{crawl-git-settings,crawl-0.13-settings,crawl-0.12-settings,crawl-0.11-settings,crawl-0.10-settings}
RUN mkdir -p /var/www
RUN mkdir -p /logs
RUN mkdir -p /var/mail
VOLUME  ["/dgldir", "/crawl-master", "/var/www", "/logs", "/var/mail"]
CMD     ["/bin/true"]
