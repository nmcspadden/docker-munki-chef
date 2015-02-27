FROM nmcspadden/munki
MAINTAINER Nick McSpadden nmcspadden@gmail.com

RUN apt-get -yqq update
RUN apt-get -yqq install curl lsb-release
RUN curl -L https://getchef.com/chef/install.sh | bash -s -- -v 11.16.2 -P container

ADD client.rb /etc/chef/client.rb
ADD validation.pem /etc/chef/validation.pem

