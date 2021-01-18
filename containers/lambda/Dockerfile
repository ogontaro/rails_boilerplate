FROM public.ecr.aws/lambda/ruby:2.7

ENV LANG="C.UTF-8" \
    RAILS_ENV="development" \
    RAILS_LOG_TO_STDOUT="true" \
    TZ="Asia/Tokyo"
RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

ENV GEM_HOME=/usr/local/bundle \
    BUNDLE_SILENCE_ROOT_WARNING=1 \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3
ENV BUNDLE_PATH ${GEM_HOME}
ENV BUNDLE_APP_CONFIG=${BUNDLE_PATH} \
    BUNDLE_BIN=${BUNDLE_PATH}/bin
ENV PATH /app/bin:${BUNDLE_BIN}:$PATH
RUN mkdir ${GEM_HOME}

# mysql-client use default-libmysqlclient-dev
RUN yum update -y && \
    yum install -y build-essential git wget curl default-libmysqlclient-dev tar libxml2 libxslt libxml2-devel libxslt-devel libicu-devel cmake make gcc rpm-build ruby-devel zlib-devel mysql-devel && \
    rm -rf /var/cache/yum/* && \
    yum clean all

ENV DOCKERIZE_VERSION v0.6.1
RUN wget -q https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR ${LAMBDA_TASK_ROOT}

COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
CMD ["app.App::Handler.process"]
