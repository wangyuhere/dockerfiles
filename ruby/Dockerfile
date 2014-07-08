FROM ubuntu

# Refer to: https://gorails.com/setup/ubuntu/14.04

RUN apt-get -y update
RUN apt-get install -y -q git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties

ADD http://ftp.ruby-lang.org/pub/ruby/2.1/ruby-2.1.2.tar.gz /tmp/ruby-2.1.2.tar.gz
RUN cd /tmp && tar -xzvf ruby-2.1.2.tar.gz
RUN cd /tmp/ruby-2.1.2/ && ./configure && make && make install
RUN ruby -v

RUN rm -rf /tmp/*
RUN apt-get clean

RUN echo "gem: --no-ri --no-rdoc" > ~/.gemrc

CMD ["/bin/bash"]
