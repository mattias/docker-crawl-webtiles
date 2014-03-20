# Crawl administration
#
# VERSION 1.0

FROM ubuntu
MAINTAINER Mattias

RUN apt-get update
RUN apt-get install -y bzip2
RUN apt-get install -y sqlite3
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y git
RUN apt-get install -y build-essential
RUN apt-get install -y python-minimal
RUN apt-get install -y ncurses-term
RUN apt-get install -y ncurses-dev
RUN apt-get install -y libncurses5-dev
RUN apt-get install -y libncursesw5-dev
RUN apt-get install -y libpcre3
RUN apt-get install -y autoconf
RUN apt-get install -y liblua5.1-0
RUN apt-get install -y bison
RUN apt-get install -y flex
ADD dgamelaunch /dgamelaunch
ADD dgamelaunch-config /dgamelaunch-config
WORKDIR dgamelaunch
RUN ./autogen.sh --enable-debugfile --enable-sqlite --enable-shmem
RUN make VIRUS=1
RUN su -c 'make install'
WORKDIR /
RUN update-locale LANG=en_US.UTF-8
ADD init.sh /init.sh
ENTRYPOINT ["/init.sh"]
