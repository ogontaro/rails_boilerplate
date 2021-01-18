FROM ruby:2.7.2-slim

ENV LANG="C.UTF-8" \
    RAILS_ENV="development" \
    RAILS_LOG_TO_STDOUT="true" \
    TZ="Asia/Tokyo"
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential wget curl git default-libmysqlclient-dev && \
    apt-get clean && \
    rm -r /var/lib/apt/lists/*

ENV DOCKERIZE_VERSION v0.6.1
RUN wget -q https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENV APP_HOME /root/app
WORKDIR ${APP_HOME}

COPY Gemfile* ./

RUN bundle install --jobs 4
RUN mkdir tmp

ARG IMAGE_VERSION
ENV IMAGE_VERSION ${IMAGE_VERSION}

ENTRYPOINT ["/entrypoint.sh"]
