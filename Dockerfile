FROM ruby:2.7.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /museo
COPY Gemfile /museo/Gemfile
RUN bundle install
#ADD . /museo

COPY docker-entrypoint.sh /museo/

ENTRYPOINT ["/museo/docker-entrypoint.sh"]


# Set defaults to run the image
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
