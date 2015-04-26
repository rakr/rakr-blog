# ex: set filetype=Dockerfile
FROM rakr/ruby:2.2.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN apt-get install -y nodejs 
RUN apt-get install -y npm
RUN npm install -g bower
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN mkdir /middleman
WORKDIR /middleman
ADD Gemfile /middleman/Gemfile
ADD Gemfile.lock /middleman/Gemfile.lock
RUN bundle install
ADD . /middleman
