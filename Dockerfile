FROM ruby:2.6.2

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential nodejs libpq-dev imagemagick zlib1g-dev \
  libmagickwand-dev libmagickcore-dev vim

RUN mkdir /yohan

WORKDIR /yohan

ADD Gemfile /yohan/Gemfile

ADD Gemfile.lock /yohan/Gemfile.lock

RUN bundle install

ADD . /yohan
