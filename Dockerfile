FROM ruby:2.4.4-alpine

RUN apk --update add \
        ruby \
        ruby-dev \
        openssl \
        ca-certificates \
        make \
        g++ \
        gcc \
        curl \
        build-base \
        libxml2-dev \
        libxslt-dev \
&& gem install sinatra json sinatra-contrib activesupport bigdecimal --no-ri --no-rdoc \
&& gem clean \
&& gem cleanup \
&& rm -rf /usr/lib/ruby/gems/*/cache/* \
&& apk del openssl ca-certificates \
&& rm -rf /var/cache/apk/* /tmp/* var/tmp/*

EXPOSE 4567

CMD exec /usr/bin/ruby -rsinatra /web/event/server.rb -e production
