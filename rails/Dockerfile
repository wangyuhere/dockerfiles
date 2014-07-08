FROM wangyuhere/ruby:2.1.2

RUN apt-get -y update
RUN apt-get install -y -q software-properties-common
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -y update
RUN apt-get install -y -q nodejs

RUN gem install rails -v 4.1.4 && rails -v
